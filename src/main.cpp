#include "Actions.h"
#include "BaboBridge.h"
#include "DomSettings.h"
#include "LoreGuard.h"
#include "CaptureWatch.h"
#include "Forms.h"
#include "Generator.h"
#include "Panel.h"
#include "SceneGuard.h"

namespace
{
	void InitializeLogging()
	{
		auto path = logger::log_directory();
		if (!path) {
			SKSE::stl::report_and_fail("Unable to lookup SKSE logs directory.");
		}
		*path /= "DiaryOfMineFramework.log";

		auto log = std::make_shared<spdlog::logger>("Global", std::make_shared<spdlog::sinks::basic_file_sink_mt>(path->string(), true));
		log->set_level(spdlog::level::info);
		log->flush_on(spdlog::level::info);

		spdlog::set_default_logger(std::move(log));
		spdlog::set_pattern("[%Y-%m-%d %H:%M:%S.%e] [%l] %v");
	}

	std::filesystem::path IniPath()
	{
		return std::filesystem::current_path() / L"Data" / L"SKSE" / L"Plugins" / L"DiaryOfMineFramework.ini";
	}

	float IniFloat(const wchar_t* a_section, const wchar_t* a_key, float a_default)
	{
		wchar_t buffer[32]{};
		GetPrivateProfileStringW(a_section, a_key, L"", buffer, 32, IniPath().c_str());
		try {
			return buffer[0] ? std::stof(buffer) : a_default;
		} catch (...) {
			return a_default;
		}
	}

	DOMFW::CaptureWatch::Settings ReadSettings()
	{
		const auto ini = IniPath();
		DOMFW::CaptureWatch::Settings settings;
		settings.notify = GetPrivateProfileIntW(L"Enslavement", L"Notify", 1, ini.c_str()) == 1;
		settings.skipJsonPrompt = GetPrivateProfileIntW(L"Enslavement", L"SkipPersonalityFilePrompt", 1, ini.c_str()) == 1;
		settings.profile = GetPrivateProfileIntW(L"Debug", L"ProfileEnslavement", 0, ini.c_str()) == 1;
		settings.sampleMs = GetPrivateProfileIntW(L"Debug", L"SampleMs", 5, ini.c_str());
		settings.reportLines = GetPrivateProfileIntW(L"Debug", L"ReportLines", 30, ini.c_str());
		settings.releaseMovementAfter = std::clamp(IniFloat(L"Enslavement", L"ReleaseMovementAfter", 3.5f), 0.0f, 30.0f);
		return settings;
	}

	// Which module answers Actor::IsDead (vfunc 0x99) and IsInFaction (vfunc 0xF9) on Character? Both gave wrong answers
	// in this build for a living DoM slave (audit 2026-10-09/12) and the framework reads life state and faction lists
	// instead; this names the DLL that owns those slots, so SexLab Survival Framework and WetFunction NG can be checked.
	void ProbeVirtuals()
	{
		REL::Relocation<std::uintptr_t> vtable{ RE::VTABLE_Character[0] };
		for (const auto [slot, name] : { std::pair{ 0x99u, "IsDead" }, std::pair{ 0xF9u, "IsInFaction" } }) {
			const auto fn = *reinterpret_cast<std::uintptr_t*>(vtable.address() + slot * sizeof(std::uintptr_t));
			HMODULE    module = nullptr;
			wchar_t    path[MAX_PATH]{};
			std::string owner = "?";
			if (::GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT, reinterpret_cast<LPCWSTR>(fn), &module) &&
				::GetModuleFileNameW(module, path, MAX_PATH)) {
				owner = std::filesystem::path(path).filename().string();
			}
			logger::info("probe: Character vfunc 0x{:X} {} -> {:X} in {}", slot, name, fn, owner);
		}
		if (auto* player = RE::PlayerCharacter::GetSingleton()) {
			const auto* state = player->AsActorState();
			logger::info("probe: player IsDead(true)={} IsDead(false)={} life state {}", player->IsDead(true), player->IsDead(false),
				state ? static_cast<int>(state->GetLifeState()) : -1);
		}
	}

	// one background clock queues a main-thread tick every 100 ms: panel refresh and queued panel actions
	void StartTicker()
	{
		static std::atomic_bool queued{ false };
		std::thread([] {
			for (;;) {
				std::this_thread::sleep_for(100ms);
				if (!queued.exchange(true)) {
					SKSE::GetTaskInterface()->AddTask([] {
						queued = false;
						static auto last = std::chrono::steady_clock::now();
						const auto  now = std::chrono::steady_clock::now();
						const float seconds = std::chrono::duration<float>(now - last).count();
						last = now;
						DOMFW::Actions::Tick();
						DOMFW::Panel::Refresh();
						DOMFW::LoreGuard::Tick();
						DOMFW::DomSettings::Tick();
						SceneGuard::Tick(seconds);
					});
				}
			}
		}).detach();
	}

	void OnMessage(SKSE::MessagingInterface::Message* a_message)
	{
		switch (a_message->type) {
		case SKSE::MessagingInterface::kDataLoaded:
			ProbeVirtuals();
			DOMFW::CaptureWatch::Start(ReadSettings());
			SceneGuard::Configure({ GetPrivateProfileIntW(L"SceneGuard", L"Enabled", 1, IniPath().c_str()) == 1,
				std::clamp(IniFloat(L"SceneGuard", L"Timeout", 180.0f), 0.0f, 900.0f), SceneGuard::kDiaryOfMine });
			Babo::Configure({ GetPrivateProfileIntW(L"SceneGuard", L"RespectBabo", 1, IniPath().c_str()) == 1,
				GetPrivateProfileIntW(L"SceneGuard", L"QuietBaboDialogue", 1, IniPath().c_str()) == 1 });
			Babo::Recover();
			DOMFW::Generator::Configure({ std::clamp(static_cast<int>(GetPrivateProfileIntW(L"Generator", L"Mode", 1, IniPath().c_str())), 0, 2) });
			if (DOMFW::Forms::Load()) {
				const auto ini = IniPath();
				DOMFW::Panel::Install({ GetPrivateProfileIntW(L"Panel", L"Enabled", 1, ini.c_str()) == 1, std::clamp(IniFloat(L"Panel", L"Scale", 1.0f), 0.6f, 2.0f),
					GetPrivateProfileIntW(L"Panel", L"HideDialogue", 1, ini.c_str()) == 1,
					static_cast<std::uint32_t>(GetPrivateProfileIntW(L"Panel", L"ToggleKey", 0x3E, ini.c_str())),
					GetPrivateProfileIntW(L"Panel", L"PauseGame", 0, ini.c_str()) == 1,
					GetPrivateProfileIntW(L"Knockout", L"Menu", 1, ini.c_str()) == 1 });
				DOMFW::DomSettings::Configure({ GetPrivateProfileIntW(L"Untie", L"RemoveGag", 1, ini.c_str()) == 1,
					GetPrivateProfileIntW(L"Untie", L"RemoveCuffs", 1, ini.c_str()) == 1, GetPrivateProfileIntW(L"Untie", L"RemoveBlindfold", 1, ini.c_str()) == 1 });
				StartTicker();
			}
			break;
		case SKSE::MessagingInterface::kNewGame:
			DOMFW::CaptureWatch::Reset();
			DOMFW::Panel::Reset();
			DOMFW::DomSettings::OnNewGame();
			SceneGuard::Reset();
			Babo::Recover();
			break;
		case SKSE::MessagingInterface::kPostLoadGame:
			DOMFW::CaptureWatch::Reset();
			DOMFW::Panel::Reset();
			DOMFW::DomSettings::OnLoadGame();
			SceneGuard::Reset();
			Babo::Recover();
			break;
		default:
			break;
		}
	}
}

SKSEPluginLoad(const SKSE::LoadInterface* a_skse)
{
	InitializeLogging();

	const auto* plugin = SKSE::PluginDeclaration::GetSingleton();
	logger::info("{} {} is loading", plugin->GetName(), plugin->GetVersion().string());

	SKSE::Init(a_skse, false);

	if (!SKSE::GetMessagingInterface()->RegisterListener(OnMessage)) {
		SKSE::stl::report_and_fail("Unable to register the SKSE message listener.");
	}
	if (!SKSE::GetPapyrusInterface()->Register(DOMFW::Actions::RegisterPapyrus) || !SKSE::GetPapyrusInterface()->Register(DOMFW::Generator::RegisterPapyrus)) {
		SKSE::stl::report_and_fail("Unable to register Papyrus functions.");
	}

	logger::info("{} loaded", plugin->GetName());
	return true;
}
