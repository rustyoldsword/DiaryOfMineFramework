#pragma once

// What BaboDialogue 6.20 is doing right now, read natively, plus the one thing the scene guard's condition cannot
// reach. The guard's global stops Babo's Story Manager (events, kidnappings, bad ends, ambient scenes); its one-line
// NPC chatter is not a story event at all - every line rolls against Babo's own percentage globals - so those globals
// are set to 0 for the length of our scenario and put back afterwards (Babo's own mechanism, no file of its is touched).
//
// Nothing here needs BaboDialogue: with the plugin absent every form stays null, Busy() is false and Quiet() no-ops.
namespace Babo
{
	struct Settings
	{
		bool respect{ true };  // refuse to start our own capture while Babo owns the player
		bool quiet{ true };    // silence Babo's ambient chatter while we own the player
	};

	void Configure(const Settings& a_settings);
	bool Installed();

	// why Babo is busy (for the log and the player's message), or nullptr when it is free
	const char* BusyReason();
	bool        Busy();

	// idempotent; safe from any thread (the globals are written on the main thread). The values are remembered in
	// memory AND in Data/SKSE/Plugins/DiaryOfMineFramework/BaboQuiet.json, so a crash or a save made mid-capture
	// cannot leave Babo mute: Recover() puts them back on the next load.
	void Quiet(bool a_on);
	void Recover();
}
