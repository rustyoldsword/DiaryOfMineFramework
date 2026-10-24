#pragma once

// Native port of the slow half of Diary of Mine's DOM_Generator: the personality a new slave gets on capture.
// The Papyrus original spends the ~15 s in hundreds of Actor.GetFactionRank / IsInFaction / SetFactionRank and
// FormList.GetAt calls, each one waiting for a frame. The rebuilt DOM_Generator keeps its own flow, reads the actor's
// JSON file with JsonUtil as before (PapyrusUtil keeps unsaved files in memory, so only it can read them) and hands
// every faction read/write and the seeded random generation to one native call per step. Any step the native side
// cannot reproduce exactly (Paradise Halls installed, SexLab stats read into training) answers "not handled" and the
// original Papyrus code runs instead; without the DLL the natives are unbound and the original code runs everywhere.
namespace DOMFW::Generator
{
	struct Settings
	{
		int mode{ 1 };  // 0 = original Papyrus, 1 = native, 2 = native and the Papyrus original after it, compared in the log
	};

	void Configure(const Settings& a_settings);
	bool RegisterPapyrus(RE::BSScript::IVirtualMachine* a_vm);
}
