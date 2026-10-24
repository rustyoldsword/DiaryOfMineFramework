#include "CaptureWatch.h"

#include "BaboBridge.h"
#include "Bag.h"
#include "Forms.h"
#include "SceneGuard.h"

namespace DOMFW::CaptureWatch
{
	namespace
	{
		using namespace RE::BSScript;
		using Clock = std::chrono::steady_clock;

		constexpr RE::FormID       kActorFaction = 0x58FC50;  // DOMActorFaction: rank set by AddActor once the NPC is a slave
		constexpr RE::FormID       kGeneratorQuest = 0x0ED87C;  // DOM02Topic: carries DOM_Generator, DOM_Keys, DOM_SlaveManager
		constexpr std::string_view kPlugin = "DiaryOfMine.esm"sv;

		struct Session
		{
			Clock::time_point                              start;
			RE::FormID                                     actor{ 0 };
			std::string                                    name;
			std::string                                    root;    // Capture or AddActor
			std::string                                    caller;  // the enslavement path that called it
			bool                                           capture{ false };
			bool                                           seen{ true };
			bool                                           released{ false };  // the player's movement given back
			std::uint32_t                                  samples{ 0 };
			std::array<std::uint32_t, 9>                   states{};
			std::unordered_map<std::string, std::uint32_t> inclusive;  // function -> samples it was on the stack
			std::unordered_map<std::string, std::uint32_t> self;       // innermost Papyrus line (+ native it waits on)
		};

		Settings                                   g_settings;
		std::atomic_bool                           g_queued{ false };
		std::unordered_map<RE::VMStackID, Session> g_sessions;   // main thread only
		std::unordered_set<RE::VMStackID>          g_bagStacks;  // bag-in stacks already snapshotted
		std::uint32_t                              g_count{ 0 };
		std::atomic_bool                           g_active{ false };  // an enslavement is running (read by the clock thread)

		// DOM_Keys.DOMFWStopForCapture holds the player's movement before the capture animation and DOMFWEndCapture gives it
		// back after DOM02.Capture - which is the whole enslavement (8-11 s), and never if that stack dies. The movement is
		// given back here after the capture animation (Animations.json: 3 s) and, as a safety net, when the session closes.
		void ReleaseMovement(Session& a_session, const char* a_why)
		{
			if (a_session.released || !a_session.capture) {
				return;
			}
			a_session.released = true;
			auto* controls = RE::ControlMap::GetSingleton();
			if (controls && !controls->IsMovementControlsEnabled()) {
				controls->ToggleControls(RE::ControlMap::UEFlag::kMovement, true, false);
				logger::info("enslave: player movement given back ({})", a_why);
			}
		}

		bool Is(const RE::BSFixedString& a_text, const char* a_what)
		{
			return a_text.c_str() && _stricmp(a_text.c_str(), a_what) == 0;
		}

		bool IsRoot(const IFunction* a_fn)
		{
			return a_fn && Is(a_fn->GetObjectTypeName(), "DOM_SlaveManager") &&
			       (Is(a_fn->GetName(), "Capture") || Is(a_fn->GetName(), "AddActor"));
		}

		// DOM_Keys.DOMDoPutInBagActor / DOMDoPutInBagInPlace(Actor akTarget, ...): the victim is still in place
		bool IsBagIn(const IFunction* a_fn)
		{
			return a_fn && Is(a_fn->GetObjectTypeName(), "DOM_Keys") &&
			       (Is(a_fn->GetName(), "DOMDoPutInBagActor") || Is(a_fn->GetName(), "DOMDoPutInBagInPlace"));
		}

		std::string Name(const IFunction* a_fn)
		{
			if (!a_fn) {
				return "?";
			}
			return std::format("{}.{}", a_fn->GetObjectTypeName().c_str(), a_fn->GetName().c_str());
		}

		std::string Line(const StackFrame* a_frame)
		{
			if (!a_frame || !a_frame->owningFunction) {
				return "?";
			}
			const auto*   fn = a_frame->owningFunction.get();
			std::uint32_t line = 0;
			if (!fn->GetIsNative() && fn->TranslateIPToLineNumber(a_frame->instructionPointer, line)) {
				return std::format("{}:{}", Name(fn), line);
			}
			return Name(fn);
		}

		// strictly read-only: no smart-pointer copies (Unpack/GetObject bump the object's refcount, which a stack running
		// on another VM thread may be touching); a form's VM handle carries its FormID in the low 32 bits
		RE::FormID FirstArgFormID(StackFrame* a_frame)
		{
			const auto* fn = a_frame->owningFunction.get();
			if (!fn || fn->GetParamCount() == 0) {
				return 0;
			}
			const auto& var = a_frame->GetStackFrameVariable(0, a_frame->GetPageForFrame());
			// Variable is { TypeInfo varType @00; Value value @08 } and an object Value is one BSTSmartPointer<Object>
			const auto* object = var.IsObject() ? *reinterpret_cast<Object* const*>(reinterpret_cast<const std::byte*>(&var) + 0x8) : nullptr;
			return object ? static_cast<RE::FormID>(object->handle & 0xFFFFFFFF) : 0;
		}

		RE::TESFaction* ActorFaction()
		{
			static auto* faction = RE::TESDataHandler::GetSingleton()->LookupForm<RE::TESFaction>(kActorFaction, kPlugin);
			return faction;
		}

		// DOM_Generator asks "read this NPC's personality from its JSON file?" in a message box on every capture of a
		// named NPC that ships one, and the capture waits for the click. Its own "don't ask again" answer
		// (readJSONTraitsWarning = false) is set before the capture reaches the question; whether the file is read
		// still follows DoM's readJSONTraitsToggle (default: read).
		void SkipJsonPrompt()
		{
			auto* quest = RE::TESDataHandler::GetSingleton()->LookupForm<RE::TESQuest>(kGeneratorQuest, kPlugin);
			auto* vm = Internal::VirtualMachine::GetSingleton();
			auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
			if (!quest || !policy) {
				return;
			}
			RE::BSTSmartPointer<Object> generator;
			const auto                  handle = policy->GetHandleForObject(RE::TESQuest::FORMTYPE, quest);
			if (!vm->FindBoundObject(handle, "DOM_Generator", generator) || !generator) {
				return;
			}
			if (auto* warning = generator->GetProperty("readJSONTraitsWarning"); warning && warning->GetBool()) {
				warning->SetBool(false);
				logger::info("DOM_Generator.readJSONTraitsWarning set to false (no personality-file prompt)");
			}
		}

		void Notify(const std::string& a_text)
		{
			if (!g_settings.notify) {
				return;
			}
			// SexLab Survival Framework 0.7.3+ shares its HUD message panel (Vitals HUD); without it, the game's notifications
			using PushFn = bool (*)(const char*);
			static const auto push = [] {
				const auto module = ::GetModuleHandleW(L"SLSurvivalFramework.dll");
				return module ? reinterpret_cast<PushFn>(::GetProcAddress(module, "SLSFW_PushMessage")) : nullptr;
			}();
			if (!push || !push(a_text.c_str())) {
				RE::SendHUDMessage::ShowHUDMessage(a_text.c_str());  // what Debug.Notification does
			}
		}

		void Open(Session& a_session, StackFrame* a_root)
		{
			a_session.start = Clock::now();
			a_session.capture = Is(a_root->owningFunction->GetName(), "Capture");
			a_session.root = Name(a_root->owningFunction.get());
			a_session.caller = a_root->previousFrame ? Line(a_root->previousFrame) : "(event)";
			a_session.actor = FirstArgFormID(a_root);
			if (auto* actor = RE::TESForm::LookupByID<RE::Actor>(a_session.actor)) {
				a_session.name = actor->GetDisplayFullName();
			}
			logger::info("enslave #{} start: {} {:08X} via {} -> {}", ++g_count, a_session.name, a_session.actor, a_session.caller, a_session.root);
			if (a_session.capture) {
				if (g_settings.skipJsonPrompt) {
					SkipJsonPrompt();
				}
				Notify(std::format("Enslaving {}...", a_session.name));
			}
		}

		template <class Map>
		void Top(std::string& a_out, const char* a_title, const Map& a_map, std::uint32_t a_samples)
		{
			std::vector<std::pair<std::string, std::uint32_t>> rows(a_map.begin(), a_map.end());
			std::ranges::sort(rows, std::greater{}, &std::pair<std::string, std::uint32_t>::second);
			a_out += std::format("  {}:\n", a_title);
			for (std::uint32_t i = 0; i < rows.size() && i < g_settings.reportLines; ++i) {
				a_out += std::format("    {:5.1f}%  {:5}  {}\n", 100.0 * rows[i].second / std::max(1u, a_samples), rows[i].second, rows[i].first);
			}
		}

		void Close(Session& a_session)
		{
			ReleaseMovement(a_session, "enslavement ended");
			const double seconds = std::chrono::duration<double>(Clock::now() - a_session.start).count();
			auto*        actor = RE::TESForm::LookupByID<RE::Actor>(a_session.actor);
			auto*        faction = ActorFaction();
			const bool   slave = Forms::InFaction(actor, faction);

			std::string report = std::format("enslave end: {} {:08X} {} after {:.2f} s ({} samples) via {} -> {}\n", a_session.name,
				a_session.actor, slave ? "is a DoM actor" : "is NOT a DoM actor", seconds, a_session.samples, a_session.caller, a_session.root);
			if (a_session.samples) {
				static constexpr const char* states[] = { "running", "finished", "waiting memory", "waiting latent native",
					"waiting other stack (call)", "waiting other stack (return)", "waiting other stack (return, no pop)", "retry return", "retry call" };
				report += "  stack state:";
				for (std::size_t i = 0; i < a_session.states.size(); ++i) {
					if (a_session.states[i]) {
						report += std::format(" {} {:.0f}%;", states[i], 100.0 * a_session.states[i] / a_session.samples);
					}
				}
				report += "\n";
				Top(report, "inclusive (function on the stack)", a_session.inclusive, a_session.samples);
				Top(report, "self (innermost line -> native it waits on)", a_session.self, a_session.samples);
			}
			logger::info("{}", report);

			if (a_session.capture) {
				Notify(slave ? std::format("{} is now your slave ({:.1f} s)", a_session.name, seconds) :
				               std::format("Enslaving {} failed", a_session.name));
			}
		}

		void Sample(Session& a_session, Stack* a_stack, StackFrame* a_root)
		{
			++a_session.samples;
			const auto state = static_cast<std::size_t>(std::to_underlying(a_stack->state.get()));
			if (state < a_session.states.size()) {
				++a_session.states[state];
			}
			std::unordered_set<std::string> onStack;
			for (auto* frame = a_stack->top; frame; frame = frame->previousFrame) {
				onStack.insert(Name(frame->owningFunction.get()));
				if (frame == a_root) {
					break;
				}
			}
			for (auto& name : onStack) {
				++a_session.inclusive[name];
			}
			auto* top = a_stack->top;
			if (top->owningFunction && top->owningFunction->GetIsNative()) {
				++a_session.self[std::format("{} -> {}", Line(top->previousFrame), Name(top->owningFunction.get()))];
			} else {
				++a_session.self[Line(top)];
			}
		}

		void Scan()
		{
			g_queued = false;
			auto* vm = Internal::VirtualMachine::GetSingleton();
			if (!vm) {
				return;
			}
			for (auto& [id, session] : g_sessions) {
				session.seen = false;
			}
			std::unordered_set<RE::VMStackID> bagStacks;
			std::vector<RE::FormID>           bagged;
			{
				RE::BSSpinLockGuard guard(vm->runningStacksLock);
				for (auto& [id, stackPtr] : vm->allRunningStacks) {
					auto* stack = stackPtr.get();
					if (!stack || !stack->top) {
						continue;
					}
					StackFrame*   root = nullptr;  // outermost Capture/AddActor (Capture calls AddActor)
					std::uint32_t depth = 0;
					for (auto* frame = stack->top; frame && depth < 512; frame = frame->previousFrame, ++depth) {
						const auto* fn = frame->owningFunction.get();
						if (IsRoot(fn)) {
							root = frame;
						} else if (IsBagIn(fn)) {
							bagStacks.insert(id);
							if (!g_bagStacks.contains(id)) {
								bagged.push_back(FirstArgFormID(frame));
							}
						}
					}
					if (!root) {
						continue;
					}
					auto [it, opened] = g_sessions.try_emplace(id);
					it->second.seen = true;
					if (opened) {
						Open(it->second, root);
					}
					if (g_settings.profile) {
						Sample(it->second, stack, root);
					}
				}
			}
			const auto now = Clock::now();
			for (auto it = g_sessions.begin(); it != g_sessions.end();) {
				if (!it->second.seen) {
					Close(it->second);
					it = g_sessions.erase(it);
				} else {
					if (std::chrono::duration<float>(now - it->second.start).count() >= g_settings.releaseMovementAfter) {
						ReleaseMovement(it->second, "capture animation over");
					}
					++it;
				}
			}
			g_active = !g_sessions.empty();
			// mirrored every pass, so the shared busy flag cannot stay set after the sessions are gone
			SceneGuard::Set(g_active, "DoM enslavement");
			Babo::Quiet(g_active);

			g_bagStacks = std::move(bagStacks);
			for (const auto formID : bagged) {
				Bag::OnPutInBag(RE::TESForm::LookupByID<RE::Actor>(formID));
			}
			Bag::Tick();
		}
	}

	void Start(const Settings& a_settings)
	{
		g_settings = a_settings;
		static std::once_flag once;
		std::call_once(once, [] {
			std::thread([] {
				const auto fine = std::chrono::milliseconds(std::max(1u, g_settings.sampleMs));
				const auto coarse = std::chrono::milliseconds(100);
				for (;;) {
					std::this_thread::sleep_for(g_active.load() && g_settings.profile ? fine : coarse);
					if (!g_queued.exchange(true)) {
						SKSE::GetTaskInterface()->AddTask(Scan);
					}
				}
			}).detach();
		});
		logger::info("capture watch: notify={} profile={} sample={} ms (100 ms while idle), movement back after {:.1f} s", g_settings.notify, g_settings.profile,
			g_settings.sampleMs, g_settings.releaseMovementAfter);
	}

	void Reset()
	{
		for (auto& [id, session] : g_sessions) {
			ReleaseMovement(session, "game reset");
		}
		g_sessions.clear();
		g_active = false;
		SceneGuard::Set(false, "game reset");
		g_bagStacks.clear();
		Bag::Reset();
	}
}
