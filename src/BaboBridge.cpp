#include "BaboBridge.h"

#include <nlohmann/json.hpp>

namespace Babo
{
	namespace
	{
		constexpr std::string_view kPlugin = "BaboInteractiveDia.esp"sv;

		// state Babo keeps while it owns the player
		constexpr RE::FormID kKidnapQuest = 0x3BE3E7;  // BaboKidnapEvent
		constexpr RE::FormID kBadEndQuest = 0xF8A6CE;  // BaboBadEnd
		constexpr RE::FormID kRieklingQuest = 0x07AD9B;  // BaboEventRieklingThirsk
		constexpr RE::FormID kTiedUp = 0xBE6470;  // BaboKidnapTiedUp: 1 while bound or caged
		constexpr RE::FormID kTrapped = 0x02CF41;  // BaboKidnapPlayerGotTrappedGlobal
		constexpr RE::FormID kSceneStandBy = 0xAA0C39;  // BaboSceneStandBy
		// NOT used: BaboKidnapStateGlobal (3DA2D1) ships at 1.0 and its scripts also set 0 on reset, so "0 = idle"
		// is not proven - the quests and BaboKidnapTiedUp answer the same question without the guesswork.

		// Babo's own ambient-chatter knobs: switches first, then the roll percentages. The names are the keys Babo
		// itself writes into SKSE\Plugins\BaboDialogue\BaboDialogueConfig.json, kept here so the log is readable.
		struct Knob
		{
			RE::FormID  id;
			const char* name;
		};

		constexpr std::array<Knob, 29> kKnobs{ {
			{ 0xB49615, "ConstantMonologue" },
			{ 0x18A257, "FreeMonologue" },
			{ 0xB49610, "LocationChangeMonologue" },
			{ 0xB4960E, "OnStartMonologue" },
			{ 0xA28A3B, "CitizenTalkingSwitch" },
			{ 0xA9D25B, "AdventurerTalkingSwitch" },
			{ 0xADEFF3, "BeggerTalkingSwitch" },
			{ 0xAFD683, "MercenaryTalkingSwitch" },
			{ 0xAFD684, "PilgrimTalkingSwitch" },
			{ 0xAE411F, "PrisonerTalkingSwitch" },
			{ 0xB25EFC, "RiverwoodNPCDialogue" },
			{ 0xB62B22, "WhiterunNPCDialogue" },
			{ 0xB67C32, "WindhelmNPCDialogue" },
			{ 0x0B55A7, "MerchantDialoguePercent" },
			{ 0x0B049C, "FollowerDialoguePercent" },
			{ 0x90D0E6, "GuardDialoguePercent" },
			{ 0x90D0F3, "EventHintDialoguePercent" },
			{ 0xAA2374, "CitizenDialoguePercent" },
			{ 0x98BA3D, "BanditTauntingChance" },
			{ 0xA8DF0C, "CitizenTalkingChance" },
			{ 0xA93011, "AdventurerTalkingChance" },
			{ 0xADEFF6, "BeggerTalkingChance" },
			{ 0xAFD687, "MercenaryTalkingChance" },
			{ 0xAFD686, "PilgrimTalkingChance" },
			{ 0xAE4120, "PrisonerTalkingChance" },
			{ 0xAEE335, "RiverwoodNPCDialogueChance" },
			{ 0xBD2603, "WhiterunNPCDialogueChance" },
			{ 0xC329BB, "WindhelmNPCDialogueChance" },
			{ 0xC2368F, "ActorDialoguePercentage" },
		} };

		Settings         g_settings;
		std::atomic_bool g_quiet{ false };

		RE::TESGlobal* Global(RE::FormID a_id)
		{
			auto* handler = RE::TESDataHandler::GetSingleton();
			return handler ? handler->LookupForm<RE::TESGlobal>(a_id, kPlugin) : nullptr;
		}

		RE::TESQuest* Quest(RE::FormID a_id)
		{
			auto* handler = RE::TESDataHandler::GetSingleton();
			return handler ? handler->LookupForm<RE::TESQuest>(a_id, kPlugin) : nullptr;
		}

		// TESQuest::IsRunning() in CommonLib NG is true for a quest that never started (the same trap as SLSFW-004),
		// so a quest counts as running only when it is enabled and not stopping.
		bool Running(RE::FormID a_id)
		{
			auto* quest = Quest(a_id);
			return quest && quest->IsEnabled() && !quest->IsStopping();
		}

		bool NonZero(RE::FormID a_id)
		{
			auto* global = Global(a_id);
			return global && global->value != 0.0f;
		}

		std::filesystem::path RecoveryPath()
		{
			return std::filesystem::current_path() / L"Data" / L"SKSE" / L"Plugins" / L"DiaryOfMineFramework" / L"BaboQuiet.json";
		}

		void WriteRecovery(const std::unordered_map<std::string, float>& a_values)
		{
			try {
				const auto path = RecoveryPath();
				std::filesystem::create_directories(path.parent_path());
				nlohmann::json json;
				for (const auto& [name, value] : a_values) {
					json[name] = value;
				}
				std::ofstream file(path);
				file << json.dump(1, '\t');
			} catch (const std::exception& e) {
				logger::warn("babo quiet: could not write the recovery file ({})", e.what());
			}
		}

		void DropRecovery()
		{
			std::error_code ec;
			std::filesystem::remove(RecoveryPath(), ec);
		}

		std::unordered_map<std::string, float> g_saved;  // main thread only

		void Silence()
		{
			g_saved.clear();
			for (const auto& knob : kKnobs) {
				if (auto* global = Global(knob.id)) {
					g_saved[knob.name] = global->value;
					global->value = 0.0f;
				}
			}
			if (g_saved.empty()) {
				return;
			}
			WriteRecovery(g_saved);
			logger::info("babo quiet: {} of {} chatter knobs set to 0", g_saved.size(), kKnobs.size());
		}

		void Restore()
		{
			std::size_t back = 0;
			for (const auto& knob : kKnobs) {
				const auto it = g_saved.find(knob.name);
				if (it == g_saved.end()) {
					continue;
				}
				if (auto* global = Global(knob.id)) {
					global->value = it->second;
					++back;
				}
			}
			g_saved.clear();
			DropRecovery();
			if (back) {
				logger::info("babo quiet: {} chatter knobs restored", back);
			}
		}
	}

	void Configure(const Settings& a_settings)
	{
		g_settings = a_settings;
		logger::info("babo bridge: {} installed, respect its scenes {}, quiet its chatter {}", Installed() ? "BaboDialogue" : "no BaboDialogue",
			g_settings.respect, g_settings.quiet);
	}

	bool Installed() { return Quest(kKidnapQuest) != nullptr; }

	const char* BusyReason()
	{
		if (!g_settings.respect) {
			return nullptr;
		}
		if (NonZero(kTiedUp)) {
			return "Babo: the player is tied up";
		}
		if (NonZero(kTrapped)) {
			return "Babo: the player is trapped";
		}
		if (Running(kKidnapQuest)) {
			return "Babo: a kidnapping is running";
		}
		if (Running(kBadEndQuest)) {
			return "Babo: a bad end is running";
		}
		if (Running(kRieklingQuest)) {
			return "Babo: the riekling capture is running";
		}
		if (NonZero(kSceneStandBy)) {
			return "Babo: a scene is running";
		}
		return nullptr;
	}

	bool Busy() { return BusyReason() != nullptr; }

	void Quiet(bool a_on)
	{
		if (!g_settings.quiet || !Installed() || g_quiet.exchange(a_on) == a_on) {
			return;
		}
		SKSE::GetTaskInterface()->AddTask([a_on] {
			if (a_on) {
				Silence();
			} else {
				Restore();
			}
		});
	}

	void Recover()
	{
		g_quiet = false;
		g_saved.clear();
		if (!Installed()) {
			return;
		}
		try {
			const auto path = RecoveryPath();
			if (!std::filesystem::exists(path)) {
				return;
			}
			std::ifstream file(path);
			const auto    json = nlohmann::json::parse(file, nullptr, true, true);
			std::size_t   back = 0;
			for (const auto& knob : kKnobs) {
				const auto it = json.find(knob.name);
				if (it == json.end() || !it->is_number()) {
					continue;
				}
				if (auto* global = Global(knob.id)) {
					global->value = it->get<float>();
					++back;
				}
			}
			DropRecovery();
			logger::warn("babo quiet: a capture ended without putting Babo's chatter back - {} knobs restored from the recovery file", back);
		} catch (const std::exception& e) {
			logger::warn("babo quiet: recovery file unreadable ({})", e.what());
		}
	}
}
