#pragma once

// The slave panel: three iron-bound plates (ledger, command bar, book of orders) drawn with SKSE Menu Framework
// beside the dialogue whenever the player talks to one of their Diary of Mine slaves. Every icon is
// Data\Interface\DiaryOfMineFramework\icons\<id>.png
// when present (white art, tinted per state), otherwise a FontAwesome glyph.
namespace DOMFW::Panel
{
	struct Settings
	{
		bool  enabled{ true };
		float scale{ 1.0f };
		bool  hideDialogue{ true };  // while the panel is open the game's dialogue window and cursor are not drawn
		std::uint32_t toggleKey{ 0x3E };  // DirectInput scan code (F4): folds the panel to one line / unfolds it
		bool  pauseGame{ false };  // SKSE Menu Framework window mode: true = blocking window (freezes time when SMF's FreezeTimeOnMenu is on)
		bool  knockoutMenu{ true };  // E on an actor knocked out by Knockout Extensions opens the knocked-out menu
	};

	void Install(const Settings& a_settings);  // kDataLoaded, after SKSE Menu Framework is up
	void Refresh();                            // main thread, every 100 ms: dialogue partner, slave snapshot
	void Reset();
}
