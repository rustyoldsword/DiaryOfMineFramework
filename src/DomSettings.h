#pragma once

namespace DOMFW::DomSettings
{
	struct Settings
	{
		bool removeGag{ true };
		bool removeCuffs{ true };
		bool removeBlindfold{ true };
	};

	// Diary of Mine keeps the gag, cuffs and blindfold on after "untie" unless its MCM says otherwise
	// (DOM_Core.removeGagToggle / removeCuffsToggle / removeBlindfoldToggle, default false), and it reads its settings
	// file only on the MCM's Import button - so on every new game the ZaZ items stayed on. On a NEW GAME the three
	// properties are set once from our INI; a loaded save keeps whatever its MCM says (0.8.1: loads no longer overwrite
	// the player's MCM choice).
	void Configure(const Settings& a_settings);
	void Tick();         // main thread; retries until DOM_Core is bound to its quest
	void OnNewGame();    // apply once DOM_Core is bound
	void OnLoadGame();   // nothing to apply
}
