#pragma once

// Diary of Mine's sack parks the victim on a marker in another cell (DOMDoPutInBagActor/InPlace -> MoveTo
// DOMTonyMarker). When the victim is taken out and its 3D loads again, the engine dresses it in its default outfit:
// an NPC put in the sack naked came out dressed (no DoM equip call in the log). At bag-in the outfit items the NPC is
// NOT wearing are remembered; once it is back near the player, those exact items are taken off again for a short
// window. Anything else (gag, rope cuffs, DoM or DD items, clothes it was wearing) is left alone.
namespace DOMFW::Bag
{
	void OnPutInBag(RE::Actor* a_actor);  // main thread, while the actor is still where it was
	void Tick();                          // main thread
	void Reset();
}
