#include "Forms.h"

namespace DOMFW::Forms
{
	namespace
	{
		constexpr std::string_view kDoM = "DiaryOfMine.esm"sv;
		constexpr std::string_view kZaz = "ZaZAnimationPack.esm"sv;
		constexpr std::string_view kDDa = "Devious Devices - Assets.esm"sv;
		constexpr std::string_view kDDi = "Devious Devices - Integration.esm"sv;

		DomForms g_forms;

		RE::TESFaction* Fact(RE::FormID a_id)
		{
			auto* form = RE::TESDataHandler::GetSingleton()->LookupForm<RE::TESFaction>(a_id, kDoM);
			if (!form) {
				logger::warn("forms: faction {:06X} not found in {}", a_id, kDoM);
			}
			return form;
		}

		void Keyword(std::vector<RE::BGSKeyword*>& a_out, RE::FormID a_id, std::string_view a_plugin)
		{
			if (auto* kw = RE::TESDataHandler::GetSingleton()->LookupForm<RE::BGSKeyword>(a_id, a_plugin)) {
				a_out.push_back(kw);
			}
		}
	}

	const DomForms& Get() { return g_forms; }

	bool Load()
	{
		auto& f = g_forms;
		f.keysQuest = RE::TESDataHandler::GetSingleton()->LookupForm<RE::TESQuest>(0x0ED87C, kDoM);
		if (!f.keysQuest) {
			logger::error("forms: {} DOM02Topic not found - Diary of Mine is not loaded", kDoM);
			return false;
		}
		f.playerSlave = Fact(0x56C505);
		f.actor = Fact(0x58FC50);
		f.tied = Fact(0x58AB49);
		f.following = Fact(0x2202B8);
		f.waiting = Fact(0x2253BB);
		f.onDuty = Fact(0xD65318);
		f.naked = Fact(0x543CF7);
		f.wearArmor = Fact(0x88C6D8);
		f.holdWeapons = Fact(0x88C6D9);
		f.respectful = Fact(0xBB1B43);
		f.silent = Fact(0x110FB1);
		f.fightForPlayer = Fact(0xBB1B45);
		f.walkOnFour = Fact(0x0EF973);
		f.noOrgasm = Fact(0x4CF223);
		f.marks = Fact(0x1316D9);
		f.brand = Fact(0x145B10);

		f.submission = Fact(0xBACA37);
		f.fear = Fact(0xBACA36);
		f.respect = Fact(0xBACA3D);
		f.resignation = Fact(0xBACA3F);
		constexpr std::array<RE::FormID, 6> training{ 0xBACA40, 0xBACA39, 0xBACA3C, 0x2160B5, 0xBACA3A, 0x89B9E0 };
		constexpr std::array<RE::FormID, 6> hexaco{ 0x174C98, 0x174C99, 0x174C9A, 0x174C9B, 0x174C9C, 0x174C9D };
		constexpr std::array<RE::FormID, 11> moods{ 0xBACA2F, 0xBACA31, 0xBACA2A, 0xBACA29, 0xBACA2D, 0xBACA2B, 0xBACA32, 0xBACA33, 0xBACA2C, 0xBACA30, 0xBACA2E };
		for (std::size_t i = 0; i < training.size(); ++i) {
			f.training[i].faction = Fact(training[i]);
			f.hexaco[i].faction = Fact(hexaco[i]);
		}
		for (std::size_t i = 0; i < moods.size(); ++i) {
			f.moods[i].faction = Fact(moods[i]);
		}

		Keyword(f.gag, 0x008A4D, kZaz);
		Keyword(f.gag, 0x007EB8, kDDa);
		Keyword(f.blindfold, 0x019FDC, kZaz);
		Keyword(f.blindfold, 0x011B1A, kDDa);
		Keyword(f.collar, 0x008A4E, kZaz);
		Keyword(f.collar, 0x003DF7, kDDa);
		Keyword(f.cuffs, 0x008FB9, kZaz);
		Keyword(f.cuffs, 0x00F300, kZaz);
		Keyword(f.cuffs, 0x003DF9, kDDa);
		Keyword(f.cuffs, 0x00CA3A, kDDa);
		Keyword(f.cuffs, 0x05226C, kDDi);
		logger::info("forms: Diary of Mine loaded ({} gag, {} blindfold, {} collar, {} cuff keywords)", f.gag.size(), f.blindfold.size(), f.collar.size(), f.cuffs.size());
		return true;
	}

	std::optional<int> FactionRank(RE::Actor* a_actor, const RE::TESFaction* a_faction)
	{
		if (!a_actor || !a_faction) {
			return std::nullopt;
		}
		std::optional<int> rank;
		a_actor->VisitFactions([&](RE::TESFaction* a_f, std::int8_t a_rank) {
			if (a_f == a_faction) {
				rank = a_rank;  // runtime changes come after the base list and win
			}
			return false;
		});
		return rank;
	}

	bool InFaction(RE::Actor* a_actor, const RE::TESFaction* a_faction)
	{
		const auto rank = FactionRank(a_actor, a_faction);
		return rank && *rank != -1;
	}

	bool IsDeadState(RE::Actor* a_actor)
	{
		const auto* state = a_actor ? a_actor->AsActorState() : nullptr;
		if (!state) {
			return true;
		}
		const auto life = state->GetLifeState();
		return life == RE::ACTOR_LIFE_STATE::kDying || life == RE::ACTOR_LIFE_STATE::kDead;
	}
}
