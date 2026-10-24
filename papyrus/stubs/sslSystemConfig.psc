scriptname sslSystemConfig extends sslSystemLibrary
SexLabFramework property SexLab auto
int function GetVersion()
	Return 0
Endfunction
string function GetStringVer()
	Return ""
Endfunction
bool property Enabled hidden
bool function get()
	Return False
Endfunction
endProperty
bool property DebugMode hidden
bool function get()
	Return False
Endfunction
function set(bool value)
Endfunction
endProperty
Faction property AnimatingFaction auto
Faction property GenderFaction auto
Faction property ForbiddenFaction auto
Weapon property DummyWeapon auto
Armor property NudeSuit auto
Armor property CalypsStrapon auto
Form[] property Strapons auto hidden
Spell property SelectedSpell auto
Spell property CumVaginalOralAnalSpell auto
Spell property CumOralAnalSpell auto
Spell property CumVaginalOralSpell auto
Spell property CumVaginalAnalSpell auto
Spell property CumVaginalSpell auto
Spell property CumOralSpell auto
Spell property CumAnalSpell auto
Spell property Vaginal1Oral1Anal1 auto
Spell property Vaginal2Oral1Anal1 auto
Spell property Vaginal2Oral2Anal1 auto
Spell property Vaginal2Oral1Anal2 auto
Spell property Vaginal1Oral2Anal1 auto
Spell property Vaginal1Oral2Anal2 auto
Spell property Vaginal1Oral1Anal2 auto
Spell property Vaginal2Oral2Anal2 auto
Spell property Oral1Anal1 auto
Spell property Oral2Anal1 auto
Spell property Oral1Anal2 auto
Spell property Oral2Anal2 auto
Spell property Vaginal1Oral1 auto
Spell property Vaginal2Oral1 auto
Spell property Vaginal1Oral2 auto
Spell property Vaginal2Oral2 auto
Spell property Vaginal1Anal1 auto
Spell property Vaginal2Anal1 auto
Spell property Vaginal1Anal2 auto
Spell property Vaginal2Anal2 auto
Spell property Vaginal1 auto
Spell property Vaginal2 auto
Spell property Oral1 auto
Spell property Oral2 auto
Spell property Anal1 auto
Spell property Anal2 auto
Keyword property CumOralKeyword auto
Keyword property CumAnalKeyword auto
Keyword property CumVaginalKeyword auto
Keyword property CumOralStackedKeyword auto
Keyword property CumAnalStackedKeyword auto
Keyword property CumVaginalStackedKeyword auto
Keyword property ActorTypeNPC auto
Keyword property SexLabActive auto
Keyword property FurnitureBedRoll auto
Furniture property BaseMarker auto
Package property DoNothing auto
Sound property OrgasmFX auto
Sound property SquishingFX auto
Sound property SuckingFX auto
Sound property SexMixedFX auto
Sound[] property HotkeyUp auto
Sound[] property HotkeyDown auto
Static property LocationMarker auto
FormList property BedsList auto
FormList property BedRollsList auto
FormList property DoubleBedsList auto
Message property UseBed auto
Message property CleanSystemFinish auto
Message property CheckSKSE auto
Message property CheckFNIS auto
Message property CheckSkyrim auto
Message property CheckSexLabUtil auto
Message property CheckPapyrusUtil auto
Message property CheckSkyUI auto
Message property TakeThreadControl auto
Topic property LipSync auto
VoiceType property SexLabVoiceM auto
VoiceType property SexLabVoiceF auto
FormList property SexLabVoices auto
SoundCategory property AudioSFX auto
SoundCategory property AudioVoice auto
Idle property IdleReset auto
GlobalVariable property DebugVar1 auto
GlobalVariable property DebugVar2 auto
GlobalVariable property DebugVar3 auto
GlobalVariable property DebugVar4 auto
GlobalVariable property DebugVar5 auto
bool property RestrictAggressive auto hidden
bool property AllowCreatures auto hidden
bool property NPCSaveVoice auto hidden
bool property UseStrapons auto hidden
bool property RestrictStrapons auto hidden
bool property RedressVictim auto hidden
bool property RagdollEnd auto hidden
bool property UseMaleNudeSuit auto hidden
bool property UseFemaleNudeSuit auto hidden
bool property UndressAnimation auto hidden
bool property UseLipSync auto hidden
bool property UseExpressions auto hidden
bool property RefreshExpressions auto hidden
bool property ScaleActors auto hidden
bool property UseCum auto hidden
bool property AllowFFCum auto hidden
bool property DisablePlayer auto hidden
bool property AutoTFC auto hidden
bool property AutoAdvance auto hidden
bool property ForeplayStage auto hidden
bool property OrgasmEffects auto hidden
bool property RaceAdjustments auto hidden
bool property BedRemoveStanding auto hidden
bool property UseCreatureGender auto hidden
bool property LimitedStrip auto hidden
bool property RestrictSameSex auto hidden
bool property RestrictGenderTag auto hidden
bool property SeparateOrgasms auto hidden
bool property RemoveHeelEffect auto hidden
bool property AdjustTargetStage auto hidden
bool property ShowInMap auto hidden
bool property DisableTeleport auto hidden
bool property SeedNPCStats auto hidden
bool property DisableScale auto hidden
bool property FixVictimPos auto hidden
bool property ForceSort auto hidden
int property AnimProfile auto hidden
int property AskBed auto hidden
int property NPCBed auto hidden
int property OpenMouthSize auto hidden
int property UseFade auto hidden
int property Backwards auto hidden
int property AdjustStage auto hidden
int property AdvanceAnimation auto hidden
int property ChangeAnimation auto hidden
int property ChangePositions auto hidden
int property AdjustChange auto hidden
int property AdjustForward auto hidden
int property AdjustSideways auto hidden
int property AdjustUpward auto hidden
int property RealignActors auto hidden
int property MoveScene auto hidden
int property RestoreOffsets auto hidden
int property RotateScene auto hidden
int property EndAnimation auto hidden
int property ToggleFreeCamera auto hidden
int property TargetActor auto hidden
int property AdjustSchlong auto hidden
float property CumTimer auto hidden
float property ShakeStrength auto hidden
float property AutoSUCSM auto hidden
float property MaleVoiceDelay auto hidden
float property FemaleVoiceDelay auto hidden
float property ExpressionDelay auto hidden
float property VoiceVolume auto hidden
float property SFXDelay auto hidden
float property SFXVolume auto hidden
float property LeadInCoolDown auto hidden
bool[] property StripMale auto hidden
bool[] property StripFemale auto hidden
bool[] property StripLeadInFemale auto hidden
bool[] property StripLeadInMale auto hidden
bool[] property StripVictim auto hidden
bool[] property StripAggressor auto hidden
float[] property StageTimer auto hidden
float[] property StageTimerLeadIn auto hidden
float[] property StageTimerAggr auto hidden
float[] property OpenMouthMale auto hidden
float[] property OpenMouthFemale auto hidden
float[] property BedOffset auto hidden
bool property HasHDTHeels auto hidden
bool property HasNiOverride auto hidden
bool property HasFrostfall auto hidden
bool property HasSchlongs auto hidden
bool property HasMFGFix auto hidden
FormList property FrostExceptions auto hidden
MagicEffect HDTHeelEffect
Actor CrosshairRef
Actor property TargetRef auto hidden
Actor[] property TargetRefs auto hidden
int HookCount
bool HooksInit
sslThreadHook[] ThreadHooks
int property LipsPhoneme auto hidden
bool property LipsFixedValue auto hidden
int property LipsMinValue auto hidden
int property LipsMaxValue auto hidden
int property LipsSoundTime auto hidden
float property LipsMoveTime auto hidden
float function GetVoiceDelay(bool IsFemale = false, int Stage = 1, bool IsSilent = false)
	Return 0.0
Endfunction
bool[] function GetStrip(bool IsFemale, bool IsLeadIn = false, bool IsAggressive = false, bool IsVictim = false)
	Return None
Endfunction
bool function UsesNudeSuit(bool IsFemale)
	Return False
Endfunction
bool function HasCreatureInstall()
	Return False
Endfunction
float[] function GetOpenMouthPhonemes(bool isFemale)
	Return None
Endfunction
bool function SetOpenMouthPhonemes(bool isFemale, float[] Phonemes)
	Return False
Endfunction
bool function SetOpenMouthPhoneme(bool isFemale, int id, float value)
	Return False
Endfunction
int function GetOpenMouthExpression(bool isFemale)
	Return 0
Endfunction
bool function SetOpenMouthExpression(bool isFemale, int value)
	Return False
Endfunction
bool function AddCustomBed(Form BaseBed, int BedType = 0)
	Return False
Endfunction
bool function SetCustomBedOffset(Form BaseBed, float Forward = 0.0, float Sideward = 0.0, float Upward = 37.0, float Rotation = 0.0)
	Return False
Endfunction
bool function ClearCustomBedOffset(Form BaseBed)
	Return False
Endfunction
float[] function GetBedOffsets(Form BaseBed)
	Return None
Endfunction
Form function GetStrapon()
	Return None
Endfunction
Form function WornStrapon(Actor ActorRef)
	Return None
Endfunction
bool function HasStrapon(Actor ActorRef)
	Return False
Endfunction
Form function PickStrapon(Actor ActorRef)
	Return None
Endfunction
Form function EquipStrapon(Actor ActorRef)
	Return None
Endfunction
function UnequipStrapon(Actor ActorRef)
Endfunction
function LoadStrapons()
Endfunction
Armor function LoadStrapon(string esp, int id)
	Return None
Endfunction
sslThreadController Control
event OnKeyDown(int keyCode)
Endevent
event OnCrosshairRefChange(ObjectReference ActorRef)
Endevent
function SetTargetActor()
Endfunction
function AddTargetActor(Actor ActorRef)
Endfunction
sslThreadController function GetThreadControlled()
	Return None
Endfunction
function GetThreadControl(sslThreadController TargetThread)
Endfunction
function DisableThreadControl(sslThreadController TargetThread)
Endfunction
function ToggleFreeCamera()
Endfunction
bool function BackwardsPressed()
	Return False
Endfunction
bool function AdjustStagePressed()
	Return False
Endfunction
bool function IsAdjustStagePressed()
	Return False
Endfunction
bool function MirrorPress(int mirrorkey)
	Return False
Endfunction
function ExportProfile(int Profile = 1)
Endfunction
function ImportProfile(int Profile = 1)
Endfunction
function SwapToProfile(int Profile)
Endfunction
bool function SetAdjustmentProfile(string ProfileName) global native
bool function SaveAdjustmentProfile() global native
Spell function GetHDTSpell(Actor ActorRef)
	Return None
Endfunction
Faction property BardExcludeFaction auto
ReferenceAlias property BardBystander1 auto
ReferenceAlias property BardBystander2 auto
ReferenceAlias property BardBystander3 auto
ReferenceAlias property BardBystander4 auto
ReferenceAlias property BardBystander5 auto
bool function CheckBardAudience(Actor ActorRef, bool RemoveFromAudience = true)
	Return False
Endfunction
bool function BystanderClear(Actor ActorRef, ReferenceAlias BardBystander)
	Return False
Endfunction
bool function CheckSystemPart(string CheckSystem)
	Return False
Endfunction
bool function CheckSystem()
	Return False
Endfunction
function Reload()
Endfunction
function InitThreadHooks()
Endfunction
int function RegisterThreadHook(sslThreadHook Hook)
	Return 0
Endfunction
sslThreadHook[] function GetThreadHooks()
	Return None
Endfunction
int function GetThreadHookCount()
	Return 0
Endfunction
function Setup()
Endfunction
function SetDefaults()
Endfunction
string File
function ExportSettings()
Endfunction
function ImportSettings()
Endfunction
function ExportInt(string Name, int Value)
Endfunction
int function ImportInt(string Name, int Value)
	Return 0
Endfunction
function ExportBool(string Name, bool Value)
Endfunction
bool function ImportBool(string Name, bool Value)
	Return False
Endfunction
function ExportFloat(string Name, float Value)
Endfunction
float function ImportFloat(string Name, float Value)
	Return 0.0
Endfunction
function ExportFloatList(string Name, float[] Values, int len)
Endfunction
float[] function ImportFloatList(string Name, float[] Values, int len)
	Return None
Endfunction
function ExportBoolList(string Name, bool[] Values, int len)
Endfunction
bool[] function ImportBoolList(string Name, bool[] Values, int len)
	Return None
Endfunction
function ExportAnimations()
Endfunction
function ImportAnimations()
Endfunction
function ExportCreatures()
Endfunction
function ImportCreatures()
Endfunction
function ExportExpressions()
Endfunction
function ImportExpressions()
Endfunction
function ExportVoices()
Endfunction
function ImportVoices()
Endfunction
function StoreActor(Form FormRef) global
Endfunction
ImageSpaceModifier FadeEffect
VisualEffect ForceVFX
VisualEffect ForceBlackVFX
VisualEffect ForceBlurVFX
ImageSpaceModifier FadeToBlackHoldImod
ImageSpaceModifier FadeToBlurHoldImod
function RemoveFade(bool forceTest = false)
Endfunction
function ApplyFade(bool forceTest = false)
Endfunction
event OnInit()
Endevent
function ReloadData()
Endfunction
bool property bRestrictAggressive hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bAllowCreatures hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bUseStrapons hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bRedressVictim hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bRagdollEnd hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bUndressAnimation hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bScaleActors hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bUseCum hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bAllowFFCum hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bDisablePlayer hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bAutoTFC hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bAutoAdvance hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bForeplayStage hidden
bool function get()
	Return False
Endfunction
endProperty
bool property bOrgasmEffects hidden
bool function get()
	Return False
Endfunction
endProperty
