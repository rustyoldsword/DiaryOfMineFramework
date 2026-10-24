#pragma once

// The shared "something already owns the player" flag, so two capture systems never start on top of each other.
//
// The flag is the global _SG_SceneBusy (000800 in "BaboDialogue - Patches.esp") read as a bit mask: 1 = a Diary of
// Mine enslavement, 2 = the knocked-out menu, 4 = SexLab Survival. BaboDialogue's own Story Manager nodes carry the
// condition GetGlobalValue _SG_SceneBusy == 0, so while any bit is set no new Babo event, kidnapping, bad end or
// ambient scene starts; events already running are never interrupted. With the patch plugin absent the global is
// missing and every call here is a no-op, so the plugin behaves exactly as before.
//
// A stuck bit would silence BaboDialogue for the rest of the save, so: every setter is idempotent and meant to be
// mirrored from the live state on a tick, each bit self-releases after a timeout, Reset() drops every bit this plugin
// holds on load and on a new game, and each change is logged.
namespace SceneGuard
{
	enum Bit : std::uint32_t
	{
		kDiaryOfMine = 1,
		kKnockout = 2,
		kSurvival = 4
	};

	struct Settings
	{
		bool          enabled{ true };
		float         timeout{ 180.0f };  // seconds; 0 = no self-release
		std::uint32_t bit{ kDiaryOfMine };  // what Set() holds
	};

	void Configure(const Settings& a_settings);

	// idempotent: pass the live state of your own scenario every tick; the first true sets the bit, the first false
	// after that clears it. a_why is logged on a change.
	void Set(bool a_held, const char* a_why);                                  // the configured bit
	void SetBit(std::uint32_t a_bit, bool a_held, const char* a_why);          // any bit this plugin owns

	void Reset();                // load / new game: every bit we hold is dropped whatever the save holds
	void Tick(float a_seconds);  // main thread: self-release after the timeout

	bool Held();          // this plugin holds at least one bit
	bool BusyByOthers();  // a bit nobody here set is on
	bool Busy();          // any bit is set
}
