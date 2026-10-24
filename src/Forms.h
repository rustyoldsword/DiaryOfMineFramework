#pragma once

// Diary of Mine (and ZAZ / Devious Devices) forms the framework reads natively. Loaded once on kDataLoaded;
// any form that is missing stays null and the feature using it is simply skipped.
namespace DOMFW::Forms
{
	struct Trait
	{
		const char*     name;
		RE::TESFaction* faction{ nullptr };
	};

	struct Mood
	{
		const char*     name;
		RE::TESFaction* faction{ nullptr };
	};

	struct DomForms
	{
		RE::TESQuest* keysQuest{ nullptr };  // DOM02Topic: DOM_Keys, DOM_SlaveManager, DOM_Generator, slave aliases

		RE::TESFaction* playerSlave{ nullptr };
		RE::TESFaction* actor{ nullptr };
		RE::TESFaction* tied{ nullptr };
		RE::TESFaction* following{ nullptr };
		RE::TESFaction* waiting{ nullptr };
		RE::TESFaction* onDuty{ nullptr };
		RE::TESFaction* naked{ nullptr };
		RE::TESFaction* wearArmor{ nullptr };
		RE::TESFaction* holdWeapons{ nullptr };
		RE::TESFaction* respectful{ nullptr };
		RE::TESFaction* silent{ nullptr };
		RE::TESFaction* fightForPlayer{ nullptr };
		RE::TESFaction* walkOnFour{ nullptr };
		RE::TESFaction* noOrgasm{ nullptr };
		RE::TESFaction* marks{ nullptr };
		RE::TESFaction* brand{ nullptr };

		RE::TESFaction* submission{ nullptr };
		RE::TESFaction* fear{ nullptr };
		RE::TESFaction* respect{ nullptr };
		RE::TESFaction* resignation{ nullptr };
		std::array<Trait, 6>  training{ { { "Humiliation" }, { "Anger" }, { "Pose" }, { "House" }, { "Combat" }, { "Work" } } };
		std::array<Trait, 6>  hexaco{ { { "Honesty" }, { "Emotionality" }, { "Extraversion" }, { "Agreeableness" }, { "Conscientiousness" }, { "Openness" } } };
		std::array<Mood, 11>  moods{ { { "Just captured" }, { "Neutral" }, { "Angry" }, { "Afraid" }, { "Happy" }, { "Ashamed" }, { "Sad" }, { "In shock" }, { "Broken" }, { "Loyal" }, { "In love" } } };

		std::vector<RE::BGSKeyword*> gag;
		std::vector<RE::BGSKeyword*> blindfold;
		std::vector<RE::BGSKeyword*> collar;
		std::vector<RE::BGSKeyword*> cuffs;
	};

	const DomForms& Get();
	bool            Load();

	// the actor's rank in a_faction as Papyrus GetFactionRank reads it (base record, then runtime changes), or nothing
	// when it never was a member. The engine's virtual Actor::IsInFaction disagrees with Papyrus here (it reported a
	// DoM slave with DOMPlayerSlaveFaction rank 1 as not a member), so it is not used.
	std::optional<int> FactionRank(RE::Actor* a_actor, const RE::TESFaction* a_faction);

	// a member: has a rank and was not removed (RemoveFromFaction leaves rank -1); DoM's ranks above 127 read negative
	bool InFaction(RE::Actor* a_actor, const RE::TESFaction* a_faction);

	// dying or dead by the actor's own life state. The engine's virtual Actor::IsDead answered true for a living actor
	// (life state 0) in game, so it is not used anywhere in this plugin.
	bool IsDeadState(RE::Actor* a_actor);
}
