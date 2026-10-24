#pragma once

// A read-only snapshot of one Diary of Mine slave, taken on the main thread (factions, worn keywords and the
// slave's DOM_Actor alias) and handed to the panel, which only draws it.
namespace DOMFW::Slave
{
	struct View
	{
		bool        valid{ false };
		RE::FormID  id{ 0 };
		std::string name;
		std::string mood;
		std::string nature;     // the two strongest HEXACO traits
		std::string behaviour;  // DOM_Actor.behaviour: follow_player, wait, wait_sandbox, tied, ...

		int submission{ 0 }, fear{ 0 }, respect{ 0 }, resignation{ 0 };
		std::array<int, 6> training{};
		std::array<int, 6> hexaco{};

		bool tied{ false }, following{ false }, waiting{ false }, standing{ false }, onDuty{ false };
		bool naked{ false }, armor{ false }, weapons{ false };
		bool respectful{ false }, silent{ false }, fight{ false }, walkOnFour{ false }, orgasmAllowed{ true };
		bool gag{ false }, blindfold{ false }, collar{ false }, cuffs{ false }, marked{ false }, branded{ false };
	};

	bool IsPlayerSlave(RE::Actor* a_actor);
	// still in Diary of Mine's first-capture dialogue: DOMMoodJustCaptured holds until that dialogue calls
	// DOM_Actor.InformIsCaptured (-> DOM_Mind.ResetMood)
	bool IsJustCaptured(RE::Actor* a_actor);
	View Read(RE::Actor* a_actor);  // main thread only
}
