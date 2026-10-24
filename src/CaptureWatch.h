#pragma once

// Every Diary of Mine enslavement path (abduction perk on a knocked-out / sleeping / unaware NPC, tie-up, bag,
// Dead Soul and bound spells, Acheron, SBC, quests) ends in DOM_SlaveManager.Capture, which runs AddActor and the
// slave's whole Papyrus initialisation on the same stack. This module watches the VM for such stacks:
//  - the player is told the moment an enslavement starts and the moment the NPC has become a slave (with the time);
//  - while one runs, every frame samples the stack and counts which DoM function and source line it is in, so the
//    slow part of the conversion is measured instead of guessed. The report goes to DiaryOfMineFramework.log.
namespace DOMFW::CaptureWatch
{
	struct Settings
	{
		bool          notify{ true };
		bool          skipJsonPrompt{ true };
		bool          profile{ false };
		std::uint32_t sampleMs{ 5 };
		std::uint32_t reportLines{ 30 };
		float         releaseMovementAfter{ 3.5f };  // seconds after a capture starts: the player's movement (held by DOM_Keys.DOMFWStopForCapture) is given back
	};

	// The scan runs every 100 ms while nothing is being enslaved; only with an open enslavement and profile=1 does it
	// run every sampleMs (the profiler needs the fine grain, the detection does not).

	void Start(const Settings& a_settings);
	void Reset();  // new game / load: running stacks belong to the old session
}
