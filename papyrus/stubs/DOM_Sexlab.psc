Scriptname DOM_Sexlab extends Quest
Import Utility
Import DOM_Util
Actor Property PlayerRef Auto
DOM_Core Property DOMCore Auto
DOM_Keys Property DOMKeys Auto
DOM_Zaz Property DOMZaz Auto
DOM_Ostim Property DOMOstim Auto
Form Property SexLab Auto Hidden
Faction Property SexLabAnimatingFaction Auto Hidden
Faction Property SexLabForbiddenActors Auto Hidden
Faction Property slaArousal Auto Hidden
Faction Property slaArousalLocked Auto Hidden
Faction Property DOMActionTied Auto
Faction Property DOMAnimatingFaction Auto
Faction Property DOMNbSex Auto
Faction Property DOMNbRape Auto
Faction Property DOMVirginVaginal Auto
Faction Property DOMVirginAnal Auto
Faction Property DOMVirginOral Auto
Faction Property DOMVirginSame Auto
Faction Property DOMVirginGangbang Auto
Faction Property DOMTrainVaginal Auto
Faction Property DOMTrainAnal Auto
Faction Property DOMTrainOral Auto
Faction Property DOMAnimatingVaginal Auto
Faction Property DOMAnimatingAnal Auto
Faction Property DOMAnimatingOral Auto
Faction Property DOMAnimatingSame Auto
Faction Property DOMAnimatingThreesome Auto
Faction Property DOMAnimatingAggressive Auto
Faction Property DOMAnimatingWithPlayer Auto
GlobalVariable Property DOM_HasSexlab Auto
MagicEffect Property HDTHeelEffect Auto Hidden
FormList Property Beds Auto
Keyword Property SexLabActive Auto Hidden
Keyword Property SexLabNoStrip Auto Hidden
Keyword Property SexLabAlwaysStrip Auto Hidden
bool Property startSexlabPreferablyPlayer = true Auto Hidden
bool Property startSexlabPreferablyNPC = true Auto Hidden
bool Property startSexlabPreferablyDOM = true Auto Hidden
bool Property doRipOffBeforeSex = false Auto Hidden
bool Property undressBeforeSex = true Auto Hidden
bool Property redressAfterSex = true Auto Hidden
bool Property HasHDTHeels Auto Hidden
bool Property HasNiOverride Auto Hidden
bool Property requireSLTags = true Auto Hidden
bool Property requireSLTags3 = false Auto Hidden
bool Property requireSLTags4 = false Auto Hidden
bool Property separateOrgasmToggle = false Auto Hidden
bool Property alwaysAggressiveToggle = false Auto Hidden
bool Property alwaysGentleToggle = false Auto Hidden
bool Property useAggressiveTag = true Auto Hidden
bool Property HasSexlabPPlus = false Auto Hidden
bool Property useSexlapPPlusQS = true Auto Hidden
bool Property useSexlapPPlusQST = true Auto Hidden
bool Property useSexlapPPlusSS = false Auto Hidden
bool Property useSexlapPPlusSSA = false Auto Hidden
float Property postRapeDelay = 15.0 Auto Hidden
string Property DefaultSexlabExtraTags = "" Auto Hidden ; Extra tags to use in Sexlab scenes
int Property SexlabVersion = 0 Auto Hidden
Function Initialize()
EndFunction
bool Function IsActorActive(Actor akRef)
	Return False
EndFunction
bool Function IsAnimating(Actor akRef)
	Return False
EndFunction
Function ClearAnimatingFaction(Actor akRef)
EndFunction
Function SetAnimatingFaction(Actor akRef)
EndFunction
Function SetForbidden(Actor akRef, bool value)
EndFunction
Form Function GetController(int tid)
	Return None
EndFunction
Function TrackActor(Actor akRef, string the_event)
EndFunction
Function UnTrackActor(Actor akRef, string the_event)
EndFunction
Spell Function GetHDTSpell(Actor ActorRef)
	Return None
EndFunction
bool Function HasNoStripKeyword(Form the_form)
	Return False
EndFunction
bool Function HasAlwaysStripKeyword(Form the_form)
	Return False
EndFunction
Function TreatAsMale(Actor akRef)
EndFunction
Function TreatAsFemale(Actor akRef)
EndFunction
bool Function IsInterracial(int r1, int r2)
	Return False
EndFunction
Function ClearCum(Actor akRef)
EndFunction
Function ClearExtra(Actor akRef)
EndFunction
int Function GetGender(Actor akRef)
	Return 0
EndFunction
Function StripActor(Actor ActorRef, Actor VictimRef = none)
EndFunction
Function ResetSexuality(Actor akRef, bool isFemale)
EndFunction
int Function GetSexlabValue(Actor _a, string stat, int x = 0)
	Return 0
EndFunction
float Function GetStat(Actor akRef, string the_stat)
	Return 0.0
EndFunction
Function SetStat(Actor akRef, string the_stat, float value)
EndFunction
Function CopyStat(Actor target, Actor source, string the_stat)
EndFunction
Function ClearStats(Actor akRef)
EndFunction
bool Function HasOrgasmEffects()
	Return False
EndFunction
bool Function UseLipSync()
	Return False
EndFunction
Function PickVoice(Actor akRef, int volume, bool isVictim)
EndFunction
Function PlayVoice(Form SexlabVoice, Actor akRef, bool isVictim)
EndFunction
Function PlayOrgasm(Actor akRef)
EndFunction
float Function HandleArousalAfterAssign(Actor akRef, int actorSex)
	Return 0.0
EndFunction
Function HandleArousalBeforeClear(Actor akRef, int actorSex)
EndFunction
Function HandleArousal(Actor akRef, float akPrevArousal, float akNextArousal, int actorSex)
EndFunction
float Function GetArousalValue(Actor akRef)
	Return 0.0
EndFunction
Function SetArousalValue(Actor akRef, float akNextArousal)
EndFunction
Function HandleErection(Actor akRef, float akPrevArousal, float akNextArousal)
EndFunction
Form Function GetVoice(Actor akRef, bool isCreature)
	Return None
EndFunction
Function PlayMoan(Form SexlabVoice, Actor akRef, int strength, bool isVictim, bool SexlabUseLipSync)
EndFunction
Form[] Function GetAggressiveFMAnims()
	Return None
EndFunction
Form[] Function GetAnimationsByTagsNoExtra(int ActorCount, string tags, string supressedTags = "", bool RequireAll = true)
	Return None
EndFunction
Form[] Function GetAnimationsByTagsNoRequireAll(int ActorCount, string tags, string supressedTags = "")
	Return None
EndFunction
Form[] Function GetAnimationsByTagsBase(int ActorCount, string tags, string supressedTags = "", bool RequireAll = true)
	Return None
EndFunction
Form[] Function GetAnimationsByTag(int ActorCount, string Tag1, string Tag2 = "", string Tag3 = "", string TagSuppress = "", bool RequireAll = true)
	Return None
EndFunction
Form[] Function GetAnimationsByTags(int ActorCount, string tags, string supressedTags = "", bool RequireAll = true)
	Return None
EndFunction
Form Function GetbyRegistrar(string the_reg)
	Return None
EndFunction
Function UndressActorBeforeSex(Form Model, Actor akRef, DOM_Actor akActor, DOM_Actor akAgressor, bool is_aggressive)
EndFunction
bool Function isValidActor(Actor akRef, DOM_Actor akActor = None)
	Return False
EndFunction
bool Function isTiedActor(Actor akRef)
	Return False
EndFunction
bool Function isFemdom(Actor akRef, int actorSex)
	Return False
EndFunction
int Function GetActorSex(Actor akRef, DOM_Actor akActor)
	Return 0
EndFunction
Function TrainFaction(Actor akTarget, Faction the_faction, int value)
EndFunction
Function TrainVirginity(Actor akTarget, Faction the_faction)
EndFunction
Function TrainSex(Actor akTarget, Faction the_faction, string facet_name, string sl_stat, float base_amount)
EndFunction
Function TrainNPC(Actor akTarget)
EndFunction
Function SetSexFlags(Actor akTarget, DOM_Actor akActor, bool has_player, bool is_aggressive, bool is_dominant, bool is_threesome, string tags)
EndFunction
Function SetSexFlagsNPC(Actor akTarget, bool has_player, bool is_not_consensual, bool is_threesome)
EndFunction
Function handleSexStartNPC(Actor akTarget, bool is_vaginal, bool is_anal, bool is_oral, bool is_same_sex)
EndFunction
Function SetSpecialFlags(Actor actor1, DOM_Actor akActor1, Actor actor2, DOM_Actor akActor2)
EndFunction
Actor Function GetReadyForScene(Actor akRef, DOM_Actor akActor)
	Return None
EndFunction
bool Function isActorPlayer(int n, Actor[] akActors)
	Return False
EndFunction
string Function GetSuppressedTags(Actor akRef,  bool is_allgirls, bool is_aggressive, bool is_femdom, bool has_player)
	Return ""
EndFunction
string Function GetAdditionalTags(string tags, Actor akRef, bool is_allgirls, bool is_aggressive, bool is_femdom, bool has_player, int nbActors)
	Return ""
EndFunction
Function StartNotSexlab(Actor[] akActors, DOM_Actor[] akDOMActors, string tags, bool is_punishment = false, string reason_name = "")
EndFunction
Function QuickStart(Actor actor0, Actor actor1, Actor actor2=None, Actor actor3=None, Actor actor4=None, Actor actor5=None, string hook)
EndFunction
Function QuickStartThreesome(Actor actor0, Actor actor1, Actor actor2, Actor actor3, Actor actor4, string hook)
EndFunction
Function StartSex(Actor[] sexActors, Form[] anims, Actor victim=None, bool allowBed=false, string hook="")
EndFunction
int Function CheckValidActors(Actor[] akActors, DOM_Actor[] akDOMActors)
	Return 0
EndFunction
Actor[] Function ActorsReadyForScene(int nac, Actor[] akActors, DOM_Actor[] akDOMActors)
	Return None
EndFunction
Function ActorsFlagsForScene(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, bool has_player, bool is_aggressive, string tags)
EndFunction
Function ActorsNPCStartScene(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, bool is_vaginal,bool is_anal, bool is_oral, bool is_same_sex)
EndFunction
Function ActorsStartScene(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, string[] tag_list, bool is_vaginal,bool is_anal, bool is_oral, bool is_same_sex)
EndFunction
Function ActorsCheckOrgasm(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, bool has_player)
EndFunction
Function ActorsEndScene(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, string[] tag_list, bool has_player)
EndFunction
bool Function isAggressiveScene(int nac, Actor akRef, bool is_punishment)
	Return False
EndFunction
int[] Function GetActorsSex(int nac, Actor[] akActors, DOM_Actor[] akDOMActors)
	Return None
EndFunction
Function StartSexlabWithArrays(Actor[] akActors, DOM_Actor[] akDOMActors, string tied_pose, string tags = "", bool is_punishment = false, string reason_name = "", ObjectReference CenterOn = None, bool AllowBed = true, string Hook = "")
EndFunction
Function StartSexlabPP(int nac, Actor[] akActors, DOM_Actor[] akDOMActors, string tags = "", bool is_aggressive = false, ObjectReference CenterOn = None, bool allowBed=false, string Hook = "")
EndFunction
Function StartSexlabWithAnims(Actor[] akActors, DOM_Actor[] akDOMActors, string tied_pose, string tags, bool is_punishment, string reason_name, Form[] anims, ObjectReference CenterOn = None, bool AllowBed = true, string Hook = "")
EndFunction
Event PostRape(int tid, bool has_player)
EndEvent
Event PostFornicate(int tid, bool has_player)
EndEvent
Function LogAnim(string msg)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
