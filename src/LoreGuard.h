#pragma once

namespace DOMFW::LoreGuard
{
	// Lines from other mods that a Diary of Mine slave or slaver must never offer: they get "GetInFaction
	// DOMActorFaction == 0" on the speaker, in memory (no plugin). Runs on the panel ticker because the engine creates
	// dialogue lines after kDataLoaded; a line already guarded is skipped.
	//   ZaZ Animation Pack: the gag branch entry "You appear to be in a bind." and the two gagged goodbyes - DoM gags
	//   its slaves with ZaZ gags, so ZaZ's own gag dialogue showed up on them.
	//   Trouble of Heroine: "Fuck me, but let me use your service." (any NPC that dislikes the player, which a fresh
	//   DoM captive does).
	void Tick();
}
