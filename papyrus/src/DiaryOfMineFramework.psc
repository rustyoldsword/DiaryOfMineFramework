Scriptname DiaryOfMineFramework Hidden
{Diary of Mine Framework (SKSE): natives the rebuilt DOM_Keys uses. Without the DLL they are unbound and return
false / 0, so HasMenuChoice() stays false and every wheel opens as in the original.}

; true while the slave panel has queued a wheel choice for the menu that is about to open
bool Function HasMenuChoice() global native

; the queued choice (removes it), -1 when none
int Function TakeMenuChoice() global native

bool Function IsReady() global native

; before Diary of Mine acts on an actor knocked out by Knockout Extensions: 1 = woken the way KO wakes it (it now gets
; up out of the ragdoll), 0 = not knocked out (or KO not installed: DoM acts as before), -1 = knocked out but this
; KnockoutExtensions.dll cannot wake it (not our patch) - DoM must not act on it
int Function WakeKnockedOut(Actor akActor) global native
; true while the actor is not fully back on its feet: not alive, in the ragdoll or its knock state not normal
bool Function IsGettingUp(Actor akActor) global native
; true when the actor has a piece of clothing or armour in its inventory it could put on (not worn, not a restraint)
bool Function HasClothesToWear(Actor akActor) global native

; ---- DOM_Generator (personality on capture). Without the DLL these are unbound: GeneratorMode() returns 0 and the
; rebuilt DOM_Generator runs its original Papyrus code. Empty / false results also mean "run the Papyrus code".

; 0 = original Papyrus, 1 = native, 2 = native and the Papyrus original after it, compared in DiaryOfMineFramework.log
int Function GeneratorMode() global native

; OpenActorJSON: the four file names it tries, in order ("" where the player has no name yet)
string[] Function ActorJsonNames(Actor akActor, Actor akPlayer) global native

float[] Function GenTraitsGenerated(Quest akGenerator, Actor akActor) global native
float[] Function GenTraitsFromFactions(Quest akGenerator, Actor akActor) global native
float[] Function GenTraitsFromFactionsOr(Quest akGenerator, Actor akActor, float[] afValues) global native
bool Function GenSetTraitFactions(Quest akGenerator, Actor akActor, float[] afTraits) global native

int[] Function GenVirginGenerated(Quest akGenerator, Actor akActor) global native
int[] Function GenVirginReadOrGenerated(Quest akGenerator, Actor akActor, int[] aiStatus, int[] aiNames) global native
int[] Function GenVirginFromFactions(Quest akGenerator, Actor akActor, int[] aiStatus) global native
bool Function GenSetVirginFactions(Quest akGenerator, Actor akActor, int[] aiStatus) global native

bool Function GenTrainingFromJson(Quest akGenerator, Actor akActor, float[] afTraining, float[] afDates, int[] aiCounters) global native
float[] Function GenTrainingFromFactions(Quest akGenerator, Actor akActor, int aiStatsLength, int aiCountersLength) global native

Function VerifyFloats(string asWhat, Actor akActor, float[] afNative, float[] afPapyrus, int aiSeedNative, int aiSeedPapyrus) global native
Function VerifyInts(string asWhat, Actor akActor, int[] aiNative, int[] aiPapyrus, int aiSeedNative, int aiSeedPapyrus) global native

; ---- the rest of the capture path (same switch: GeneratorMode() > 0)
Form[] Function ZazFindCuffs(Quest akZaz, Actor akActor) global native
int Function ZazIsRestraint(Quest akZaz, Form akForm) global native
Form[] Function EquipSaveForms(Quest akEquip, Actor akActor) global native
Form[] Function EquipMissing(Quest akEquip, Actor akActor) global native
int Function GenOriginIndex(Quest akGenerator, Actor akActor, int aiKind) global native
bool Function CleanEnemyFactions(Quest akCore, Actor akActor) global native
