#include "Actions.h"

#include "BaboBridge.h"
#include "Forms.h"

namespace DOMFW::Actions
{
	namespace
	{
		using V = Slave::View;
		using K = Kind;

		// ---- the wheel-choice queue read by the rebuilt DOM_Keys ------------------------------------------------
		std::mutex                            g_queueLock;
		std::deque<int>                       g_queue;
		std::chrono::steady_clock::time_point g_queuedAt{};
		std::uint64_t                         g_generation{ 0 };
		constexpr auto                        kQueueLife = std::chrono::seconds(20);

		void SetQueue(const std::vector<int>& a_choices)
		{
			std::scoped_lock lock(g_queueLock);
			g_queue.assign(a_choices.begin(), a_choices.end());
			g_queuedAt = std::chrono::steady_clock::now();
			++g_generation;
		}

		void ClearQueue(std::uint64_t a_generation)
		{
			std::scoped_lock lock(g_queueLock);
			if (a_generation == g_generation && !g_queue.empty()) {
				logger::info("actions: {} unused wheel choice(s) dropped", g_queue.size());
				g_queue.clear();
			}
		}

		bool HasMenuChoice(RE::StaticFunctionTag*)
		{
			std::scoped_lock lock(g_queueLock);
			if (!g_queue.empty() && std::chrono::steady_clock::now() - g_queuedAt > kQueueLife) {
				g_queue.clear();  // never let a stale choice answer an unrelated wheel
			}
			return !g_queue.empty();
		}

		std::int32_t TakeMenuChoice(RE::StaticFunctionTag*)
		{
			std::scoped_lock lock(g_queueLock);
			if (g_queue.empty()) {
				return -1;
			}
			const int choice = g_queue.front();
			g_queue.pop_front();
			return choice;
		}

		bool IsReady(RE::StaticFunctionTag*) { return true; }

		class Done final : public RE::BSScript::IStackCallbackFunctor
		{
		public:
			Done(std::string a_name, std::uint64_t a_generation) : name(std::move(a_name)), generation(a_generation) {}
			void operator()(RE::BSScript::Variable) override
			{
				ClearQueue(generation);
				logger::info("actions: {} finished", name);
			}
			void SetObject(const RE::BSTSmartPointer<RE::BSScript::Object>&) override {}

		private:
			std::string   name;
			std::uint64_t generation;
		};

		bool Dispatch(const Action& a_action, RE::Actor* a_target)
		{
			auto* quest = Forms::Get().keysQuest;
			auto* vm = RE::BSScript::Internal::VirtualMachine::GetSingleton();
			auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
			if (!quest || !policy || (!a_action.noActor && !a_target)) {
				return false;
			}
			SetQueue(a_action.choices);
			std::uint64_t generation;
			{
				std::scoped_lock lock(g_queueLock);
				generation = g_generation;
			}
			const auto handle = policy->GetHandleForObject(RE::TESQuest::FORMTYPE, quest);
			RE::BSTSmartPointer<RE::BSScript::IStackCallbackFunctor> done{ new Done(a_action.func, generation) };
			auto* args = a_action.noActor ? RE::MakeFunctionArguments() : RE::MakeFunctionArguments(std::move(a_target));
			const bool ok = vm->DispatchMethodCall(handle, "DOM_Keys", a_action.func, args, done);
			logger::info("actions: {} -> DOM_Keys.{}({}) choices [{}] {}", a_action.id, a_action.func, a_action.noActor ? "" : a_target->GetName(),
				[&] { std::string s; for (int c : a_action.choices) { s += (s.empty() ? "" : ", ") + std::to_string(c); } return s; }(), ok ? "" : "FAILED");
			if (!ok) {
				ClearQueue(generation);
			}
			return ok;
		}

		// ---- requests from the panel ---------------------------------------------------------------------------
		struct Pending
		{
			Action                                action;
			RE::FormID                            target;
			bool                                  closeDialogue;
			std::chrono::steady_clock::time_point since;
		};
		std::mutex           g_pendingLock;
		std::vector<Pending> g_pending;

		bool DialogueOpen()
		{
			auto* ui = RE::UI::GetSingleton();
			return ui && ui->IsMenuOpen(RE::DialogueMenu::MENU_NAME);
		}

		// ---- the action table ----------------------------------------------------------------------------------
		Action Btn(const char* a_id, const char* a_label, const char* a_tip, const char* a_func, std::vector<int> a_choices = {})
		{
			return Action{ a_id, a_label, a_tip, a_func, std::move(a_choices) };
		}
		Action More(const char* a_id, const char* a_label, const char* a_tip, const char* a_func, std::vector<int> a_choices = {})
		{
			Action a{ a_id, a_label, a_tip, a_func, std::move(a_choices) };
			a.kind = K::More;
			return a;
		}
		Action Tog(const char* a_id, const char* a_label, const char* a_tip, const char* a_func, std::vector<int> a_choices, bool (*a_on)(const V&))
		{
			Action a{ a_id, a_label, a_tip, a_func, std::move(a_choices) };
			a.kind = K::Toggle;
			a.on = a_on;
			return a;
		}
		Action Opt(const char* a_id, const char* a_label, const char* a_func, int a_choice)
		{
			Action a{ a_id, a_label, nullptr, a_func, { a_choice } };
			a.kind = K::Choice;
			return a;
		}
		Action Danger(Action a)
		{
			a.danger = true;
			a.confirm = true;
			return a;
		}
		Action Blocked(Action a, const char* (*a_why)(const V&))
		{
			a.blocked = a_why;
			return a;
		}
		Action Group(const char* a_id, const char* a_label, const char* a_tip, const char* a_func)
		{
			Action a = More(a_id, a_label, a_tip, a_func);
			a.noActor = true;
			return a;
		}

		const char* NotTied(const V& v) { return v.tied ? nullptr : "She is not tied"; }
		const char* OnDuty(const V& v) { return v.onDuty ? "She is on duty" : nullptr; }

		std::vector<Tab> BuildTabs()
		{
			std::vector<Tab> tabs;
			tabs.push_back({ "tab_orders", "Orders", "Orders", "Follow, wait, stand, distances, come here", {
				{ "Follow distance", {
					Opt("dist_follow_tight", "Tight", "DOMDoFollowMenu", 0), Opt("dist_follow_close", "Close", "DOMDoFollowMenu", 1),
					Opt("dist_follow_near", "Near", "DOMDoFollowMenu", 2), Opt("dist_follow_long", "Long", "DOMDoFollowMenu", 3) }, true },
				{ "Wait distance", {
					Opt("dist_wait_tight", "Tight", "DOMDoWaitMenu", 0), Opt("dist_wait_close", "Close", "DOMDoWaitMenu", 1),
					Opt("dist_wait_near", "Near", "DOMDoWaitMenu", 2), Opt("dist_wait_long", "Long", "DOMDoWaitMenu", 3),
					Opt("dist_wait_far", "Far", "DOMDoWaitMenu", 4), Opt("dist_wait_veryfar", "Very far", "DOMDoWaitMenu", 5) }, true },
				{ "Move", {
					Btn("come_here", "Come here", "She walks up to you", "DOMDoUpkeeping", { 3 }),
					Btn("look_at_me", "Look at me", "She raises her eyes to you", "DOMDoUpkeeping", { 1 }),
					Btn("turn_around", "Turn around", "She turns and shows herself", "DOMDoUpkeeping", { 2 }),
					More("follow_actor", "Follow actor", "Pick someone for her to follow", "DOMDoUpkeeping", { 4 }),
					More("order_to", "Order to", "Send her on an errand", "DOMDoFavor"),
					More("pose", "Pose for me", "Chair, light, flowers, drinks, dance, music", "DOMDoPoseMenu"),
					More("sexy_pose", "Sexy pose", "Submissive and revealing poses", "DOMSexyPoseMenu") } },
				{ "Rules on the move", {
					Tog("walk_on_four", "Walk on all fours", "She crawls instead of walking", "DOMDoWalkOnFour", {}, [](const V& v) { return v.walkOnFour; }) } },
				{ "Belongings", {
					Btn("inventory", "Open inventory", "Her belongings", "DOMDoOpenInventory") } } } });

			tabs.push_back({ "tab_nature", "Nature", "Her Nature", "Personality, training, conduct rules", {
				{ "Conduct", {
					Tog("respectful", "Respectful", "Addresses you as master", "DOMDoBeRespectful", {}, [](const V& v) { return v.respectful; }),
					Tog("silent", "Silent", "Speaks only when asked", "DOMDoBeSilent", {}, [](const V& v) { return v.silent; }),
					Tog("fight_for_me", "Fight for me", "Joins your fights", "DOMDoFightForMe", {}, [](const V& v) { return v.fight; }) } },
				{ "Read more", {
					Btn("read_personality", "Personality", "Her personality in full", "DOMDoStatusMenu", { 0 }),
					Btn("read_feelings", "Feelings", "How she feels about you and others", "DOMDoStatusMenu", { 1 }),
					Btn("read_mood", "Mood", "Her mood and why", "DOMDoStatusMenu", { 2 }),
					Btn("read_status", "Full status", "Diary of Mine's status report", "DOMDoStatusMenu", { 3 }) } } } });

			tabs.push_back({ "tab_clothes", "Clothes", "Clothing", "Clothing rules, stripping, weapons", {
				{ "Rules", {
					Tog("naked", "Keep naked", "She stays naked until you allow clothes", "DOMDoClothesMenu", { 4 }, [](const V& v) { return v.naked; }),
					Tog("wear_armor", "Wear armor", "She may wear armor", "DOMDoClothesMenu", { 7 }, [](const V& v) { return v.armor; }),
					Tog("hold_weapons", "Hold weapons", "She may carry her weapons", "DOMDoClothesMenu", { 6 }, [](const V& v) { return v.weapons; }) } },
				{ "Strip", {
					Btn("rip_off", "Rip off item", "Tear one piece off her", "DOMDoClothesMenu", { 0 }),
					Btn("rip_off_all", "Rip off everything", "Tear all her clothes off", "DOMDoClothesMenu", { 1 }),
					Btn("order_strip", "Order to strip", "She undresses herself", "DOMDoClothesMenu", { 2 }),
					Btn("strip_all", "Strip entirely", "She removes everything", "DOMDoClothesMenu", { 3 }),
					Btn("re_equip", "Re-equip inventory", "She dresses from her own belongings", "DOMDoClothesMenu", { 5 }) } } } });

			tabs.push_back({ "tab_restrain", "Restrain", "Restraints", "Rope, chains, furniture, gag, blindfold", {
				{ "Rope and furniture", {
					More("tie_up", "Tie up", "Kneeling, standing, laying, hogtied...", "DOMDoTieUpMenu", { 0 }),
					More("chains", "Chains", "Chain her in place", "DOMDoTieUpMenu", { 1 }),
					More("post", "Post", "Bind her to a post", "DOMDoTieUpMenu", { 2 }),
					More("cage", "Cage", "Lock her in a cage", "DOMDoTieUpMenu", { 3 }),
					More("cross", "Cross", "Bind her to a cross", "DOMDoRestrainMenu", { 4 }),
					More("pillory", "Pillory", "Lock her in a pillory", "DOMDoRestrainMenu", { 5 }),
					More("wheel", "Wheel", "Bind her to a wheel", "DOMDoRestrainMenu", { 6 }) } },
				{ "Devices", {
					More("gag", "Gag and plugs", "Gags, ball gag, ring gag, plugs", "DOMDoTieUpMenu", { 5 }),
					More("blindfold", "Blindfold", "Blindfolds and hoods", "DOMDoTieUpMenu", { 6 }),
					More("cuffs", "Cuffs", "Cuffs, yoke, armbinder", "DOMDoTieUpMenu", { 7 }) } },
				{ "Release", {
					Btn("bag", "Put in bag", "Put her in a sack you carry", "DOMDoPutInBag"),
					Blocked(Btn("untie", "Untie", "Free her from the rope", "DOMDoUntie"), NotTied) } } } });

			tabs.push_back({ "tab_treat", "Treat", "Treatment", "Punish, praise, comfort, upkeep, marks", {
				{ "Discipline", {
					More("punish", "Punish", "Choose the punishment and the reason", "DOMDoAbuseMenu", { 0 }),
					More("threaten", "Threaten", "Threaten her", "DOMDoAbuseMenu", { 3 }),
					More("insult", "Insult", "Degrade, demean, disgrace", "DOMDoAbuseMenu", { 2 }),
					More("praise", "Praise", "Choose the praise and the reason", "DOMDoAbuseMenu", { 4 }),
					More("comfort", "Comfort", "Care for her, or make her feel guilty", "DOMDoAbuseMenu", { 5 }),
					More("flatter", "Flatter", "Sweet, dirty or friendly talk", "DOMDoAbuseMenu", { 6 }),
					More("promise", "Promise", "Pain, rapture, money, freedom...", "DOMDoAbuseMenu", { 7 }) } },
				{ "Upkeep", {
					More("bathing", "Bathing", "Shower, bathe you, bathe her", "DOMDoAbuseMenu", { 1, 0 }),
					More("drink", "Drink this", "Skooma, alcohol, potions", "DOMDoAbuseMenu", { 1, 5 }) } },
				{ "Marks", {
					Danger(Btn("mark", "Mark or unmark", "A slave mark on her skin; again to remove it", "DOMDoAbuseMenu", { 1, 6 })),
					Danger(Btn("brand", "Brand or unbrand", "A burnt brand; again to remove it", "DOMDoAbuseMenu", { 1, 7 })) } } } });

			tabs.push_back({ "tab_labour", "Labour", "Labour", "Sweeping, mining, wood, cooking, foraging", {
				{ "Work", {
					Blocked(Btn("work_sweep", "Sweeping", "Clean the mess around here", "DOMDoStatusMenu", { 7, 0 }), OnDuty),
					Blocked(Btn("work_mine", "Mining", "Work the nearest ore vein", "DOMDoStatusMenu", { 7, 1 }), OnDuty),
					Blocked(Btn("work_wood", "Cut wood", "Chop firewood", "DOMDoStatusMenu", { 7, 2 }), OnDuty),
					Blocked(Btn("work_cook", "Cook", "Cook at the nearest fire", "DOMDoStatusMenu", { 7, 3 }), OnDuty),
					Blocked(Btn("work_forage", "Forage", "Gather from the land", "DOMDoStatusMenu", { 7, 4 }), OnDuty),
					Blocked(Btn("work_harvest", "Harvest", "Harvest the crops", "DOMDoStatusMenu", { 7, 5 }), OnDuty),
					Blocked(Btn("work_create", "Create", "Craft at the nearest station", "DOMDoStatusMenu", { 7, 6 }), OnDuty),
					Danger(Blocked(More("jail", "Go to jail", "Locked up, standing, tied or cuffed", "DOMDoStatusMenu", { 7, 7 }), OnDuty)) } } } });

			tabs.push_back({ "tab_train", "Train", "Training", "Attention, inspection, kissing, permissions", {
				{ "Lessons", {
					More("attention", "Attention", "Pose, display, kneel, stand", "DOMDoTrainingMenu", { 4 }),
					More("kiss", "Kiss", "Short, loving, long, forced...", "DOMDoTrainingMenu", { 5 }),
					More("inspect", "Inspect", "Front, back, floor, display", "DOMDoTrainingMenu", { 6 }),
					More("masturbate", "Masturbate", "Standing, kneeling, laying", "DOMDoTrainingMenu", { 7 }) } },
				{ "Permissions", {
					Tog("climax", "Allowed to climax", "Otherwise denied until you allow it", "DOMDoTrainingMenu", { 3 }, [](const V& v) { return v.orgasmAllowed; }) } } } });

			tabs.push_back({ "tab_intimacy", "Intimacy", "Intimacy", "Scenes with her and others", {
				{ "Scenes", {
					More("sex", "Sex", "Vaginal, oral, anal, kinky, threesome...", "DOMDoTrainingMenu", { 2 }),
					More("rape", "Rape", "Forced, with the same partner choices", "DOMDoTrainingMenu", { 1 }) } } } });

			tabs.push_back({ "tab_group", "Group", "All Slaves", "Orders for every slave nearby", {
				{ "Everyone nearby", {
					Group("all_orders", "Orders", "Follow, wait, stand for everyone", "DOMAllOrderMenu"),
					Group("all_status", "Status", "Status, tasks and jail for everyone", "DOMAllStatusMenu"),
					Group("all_treat", "Treatment", "Discipline for everyone", "DOMAllAbuseMenu"),
					Group("all_train", "Training", "Lessons for everyone", "DOMAllTrainingMenu"),
					Group("all_clothes", "Clothes", "Clothing rules for everyone", "DOMAllClothesMenu"),
					Group("all_upkeep", "Upkeep", "Bathing, drinks for everyone", "DOMAllUpkeepingMenu"),
					Group("all_attention", "Attention", "Kneel, display, stand for everyone", "DOMAllAttentionMenu") } } } });
			return tabs;
		}
	}

	const std::vector<Tab>& Tabs()
	{
		static const std::vector<Tab> tabs = BuildTabs();
		return tabs;
	}

	const std::vector<Action>& Commands(const Slave::View& a_view)
	{
		thread_local std::vector<Action> bar;
		bar.clear();
		auto mode = [](const char* a_id, const char* a_label, const char* a_tip, const char* a_func, bool (*a_on)(const V&)) {
			Action a{ a_id, a_label, a_tip, a_func, {} };
			a.kind = K::Toggle;
			a.on = a_on;
			return a;
		};
		// pressing the current order again would open DoM's distance wheel behind the dialogue: blocked instead
		Action follow = mode("cmd_follow", "Follow", "Follow me", "DOMDoFollowMe", [](const V& v) { return v.following; });
		follow.blocked = [](const V& v) -> const char* { return v.following ? "Already following you" : nullptr; };
		Action wait = mode("cmd_wait", "Wait", "Wait here, moving around freely", "DOMDoWaitSandbox", [](const V& v) { return v.waiting; });
		wait.blocked = [](const V& v) -> const char* { return v.waiting ? "Already waiting" : nullptr; };
		Action stand = mode("cmd_stand", "Stand", "Stand still on the spot", "DOMDoStandStill", [](const V& v) { return v.standing; });
		stand.blocked = [](const V& v) -> const char* { return v.standing ? "Already standing still" : nullptr; };
		bar.push_back(std::move(follow));
		bar.push_back(std::move(wait));
		bar.push_back(std::move(stand));

		Action dress{ a_view.naked ? "cmd_dress" : "cmd_strip", a_view.naked ? "Dress" : "Strip", a_view.naked ? "Allow her clothes again" : "Keep her naked", "DOMDoClothesMenu", { 4 } };
		dress.kind = K::Toggle;
		dress.on = [](const V& v) { return v.naked; };
		bar.push_back(std::move(dress));

		if (a_view.tied) {
			bar.push_back(Btn("cmd_untie", "Untie", "Free her from the rope", "DOMDoUntie"));
		} else {
			bar.push_back(More("cmd_tie", "Tie up", "Choose how to tie her", "DOMDoTieUpMenu", { 0 }));
		}
		bar.push_back(Btn("cmd_bag", "Bag", "Put her in a sack you carry", "DOMDoPutInBag"));
		return bar;
	}

	void Request(const Action& a_action, RE::FormID a_target)
	{
		const bool close = a_action.kind == K::Button || a_action.kind == K::More;
		std::scoped_lock lock(g_pendingLock);
		g_pending.push_back({ a_action, a_target, close, std::chrono::steady_clock::now() });
	}

	void Tick()
	{
		std::vector<Pending> run;
		{
			std::scoped_lock lock(g_pendingLock);
			if (g_pending.empty()) {
				return;
			}
			const bool dialogue = DialogueOpen();
			for (auto it = g_pending.begin(); it != g_pending.end();) {
				const bool waited = std::chrono::steady_clock::now() - it->since > std::chrono::seconds(3);
				if (!it->closeDialogue || !dialogue || waited) {
					run.push_back(std::move(*it));
					it = g_pending.erase(it);
				} else {
					++it;
				}
			}
			if (dialogue && !g_pending.empty()) {
				if (auto* queue = RE::UIMessageQueue::GetSingleton()) {
					queue->AddMessage(RE::DialogueMenu::MENU_NAME, RE::UI_MESSAGE_TYPE::kHide, nullptr);
				}
			}
		}
		for (auto& p : run) {
			Dispatch(p.action, RE::TESForm::LookupByID<RE::Actor>(p.target));
		}
	}

	namespace
	{
		// ---- an actor knocked out by Knockout Extensions: before Diary of Mine acts on it (tie-up, capture, sack, hire,
		// the knocked-out menu) it is woken the way KO's timer does it (KOX_WakeUp of our KnockoutExtensions.dll) and
		// DOM_Keys waits until it is fully on its feet; acting on it in the ragdoll fought the ragdoll
		std::mutex                     g_wokenLock;
		std::unordered_set<RE::FormID> g_woken;

		std::int32_t WakeKnockedOutImpl(RE::Actor* a_actor)
		{
			using WakeFn = bool (*)(RE::Actor*);
			static const auto module = GetModuleHandleW(L"KnockoutExtensions.dll");
			static const auto wake = module ? reinterpret_cast<WakeFn>(GetProcAddress(module, "KOX_WakeUp")) : nullptr;
			const auto* state = a_actor ? a_actor->AsActorState() : nullptr;
			if (!state || state->GetLifeState() != RE::ACTOR_LIFE_STATE::kUnconcious) {
				return 0;  // awake (or really dead): Diary of Mine acts as before
			}
			if (!module) {
				return 0;  // no Knockout Extensions: unconscious the vanilla way, Diary of Mine's own handling
			}
			if (!wake || !wake(a_actor)) {
				logger::warn("knockout: {:08X} is knocked out and could not be woken ({}) - Diary of Mine leaves it alone", a_actor->GetFormID(),
					wake ? "Knockout Extensions refused" : "KnockoutExtensions.dll without KOX_WakeUp");
				return -1;
			}
			std::scoped_lock lock(g_wokenLock);
			g_woken.insert(a_actor->GetFormID());
			logger::info("knockout: {:08X} woken by Knockout Extensions before Diary of Mine acts on it", a_actor->GetFormID());
			return 1;
		}

		std::int32_t WakeKnockedOut(RE::StaticFunctionTag*, RE::Actor* a_actor) { return WakeKnockedOutImpl(a_actor); }

		// not yet fully on its feet: not alive, still in the ragdoll, or the knock state not back to normal
		bool IsGettingUp(RE::StaticFunctionTag*, RE::Actor* a_actor)
		{
			const auto* state = a_actor ? a_actor->AsActorState() : nullptr;
			if (!state) {
				return false;
			}
			if (state->GetLifeState() != RE::ACTOR_LIFE_STATE::kAlive || a_actor->IsInRagdollState() ||
				state->actorState1.knockState != RE::KNOCK_STATE_ENUM::kNormal) {
				return true;
			}
			std::scoped_lock lock(g_wokenLock);
			if (g_woken.erase(a_actor->GetFormID())) {
				logger::info("knockout: {:08X} is up - Diary of Mine goes on", a_actor->GetFormID());
			}
			return false;
		}

		// ---- DOM_Actor.Anim_DressUp asks this first (pexpatch_dressup.py): DoM's "clothes in inventory" flags are set by
		// the equip pass that runs after the order, so a stripped slave with nothing to wear played the idle on and on
		bool IsRestraint(const RE::TESObjectARMO* a_armor)
		{
			bool restraint = false;
			const_cast<RE::TESObjectARMO*>(a_armor)->ForEachKeyword([&](RE::BGSKeyword* a_keyword) {
				const std::string_view id = a_keyword ? a_keyword->GetFormEditorID() : "";
				if (id.starts_with("zad_") || id.starts_with("zbf")) {
					restraint = true;
					return RE::BSContainer::ForEachResult::kStop;
				}
				return RE::BSContainer::ForEachResult::kContinue;
			});
			return restraint;
		}

		bool HasClothesToWear(RE::StaticFunctionTag*, RE::Actor* a_actor)
		{
			if (!a_actor) {
				return false;
			}
			using Slot = RE::BGSBipedObjectForm::BipedObjectSlot;
			constexpr Slot clothing[]{ Slot::kHead, Slot::kBody, Slot::kHands, Slot::kForearms, Slot::kFeet, Slot::kCalves };
			for (auto& [object, data] : a_actor->GetInventory([](RE::TESBoundObject& a_object) { return a_object.IsArmor(); })) {
				auto* armor = object ? object->As<RE::TESObjectARMO>() : nullptr;
				if (!armor || data.first <= 0 || (data.second && data.second->IsWorn()) || !armor->GetPlayable() || IsRestraint(armor)) {
					continue;
				}
				for (const auto slot : clothing) {
					if (armor->HasPartOf(slot)) {
						return true;
					}
				}
			}
			logger::info("clothes: {} {:08X} has nothing to put on - dress-up idle skipped", a_actor->GetName(), a_actor->GetFormID());
			return false;
		}
	}

	std::int32_t WakeKnockedOutNow(RE::Actor* a_actor) { return WakeKnockedOutImpl(a_actor); }

	bool CallKnockedOut(RE::Actor* a_target, std::int32_t a_choice)
	{
		// 0 enslave, 1 tie up, 2 sack take the victim over the same way BaboDialogue's own capture does; while Babo
		// owns the player the two would run on top of each other, so the choice is refused and nothing is started
		// (waking up and hiring stay available).
		if (a_choice == 0 || a_choice == 1 || a_choice == 2) {
			if (const auto* why = Babo::BusyReason()) {
				logger::info("knockout menu: choice {} refused - {}", a_choice, why);
				RE::SendHUDMessage::ShowHUDMessage("Not now - another scene is running");
				return false;
			}
		}
		auto* quest = Forms::Get().keysQuest;
		auto* vm = RE::BSScript::Internal::VirtualMachine::GetSingleton();
		auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
		if (!quest || !policy || !a_target) {
			return false;
		}
		const auto handle = policy->GetHandleForObject(RE::TESQuest::FORMTYPE, quest);
		RE::BSTSmartPointer<RE::BSScript::IStackCallbackFunctor> none;
		auto* args = RE::MakeFunctionArguments(std::move(a_target), std::move(a_choice));
		const bool ok = vm->DispatchMethodCall(handle, "DOM_Keys", "DOMFWKnockedOutChoice", args, none);
		logger::info("knockout menu: DOM_Keys.DOMFWKnockedOutChoice({}, {}) {}", a_target->GetName(), a_choice, ok ? "" : "FAILED");
		return ok;
	}

	bool RegisterPapyrus(RE::BSScript::IVirtualMachine* a_vm)
	{
		a_vm->RegisterFunction("WakeKnockedOut", "DiaryOfMineFramework", WakeKnockedOut);
		a_vm->RegisterFunction("IsGettingUp", "DiaryOfMineFramework", IsGettingUp);
		a_vm->RegisterFunction("HasClothesToWear", "DiaryOfMineFramework", HasClothesToWear);
		a_vm->RegisterFunction("HasMenuChoice", "DiaryOfMineFramework", HasMenuChoice, true);
		a_vm->RegisterFunction("TakeMenuChoice", "DiaryOfMineFramework", TakeMenuChoice, true);
		a_vm->RegisterFunction("IsReady", "DiaryOfMineFramework", IsReady, true);
		logger::info("papyrus: DiaryOfMineFramework natives registered");
		return true;
	}
}
