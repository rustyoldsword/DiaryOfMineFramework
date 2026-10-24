Scriptname DOM_Mind extends ReferenceAlias
Import Utility
Import DOM_Util
Import DOM_EquipUtil
DOM_Core Property DOM01 Auto
Actor Property PlayerRef Auto Hidden
String name = "Unnamed Mind"
String title
Actor Property akRef Auto Hidden
DOM_Actor Property actor_alias Auto Hidden
int actorSex = 1
int actorType = 0
string actorPossessive
string actorObjective
string actorPronoun
string actorBeVerb
int actorLevel
int mood_swing_ticks = 0
int mood_swing_max = 30
bool Property canChangeMood = true Auto Hidden
bool mood_is_busy = false
String __mood = "just_captured"
String Property mood Hidden
String Function get()
	Return ""
EndFunction
Function set(String value)
EndFunction
EndProperty
Function StartMood()
EndFunction
Function EndMood()
EndFunction
Function OnResilienceUpdate()
EndFunction
Function OnMoodUpdate()
EndFunction
Function OnMoodUpdateGameTime()
EndFunction
Event OnExperiencePain()
EndEvent
Event OnEndSex(bool had_orgasm)
EndEvent
bool Function IsBrokenToObey()
	Return False
EndFunction
bool Function IsScaredToObey()
	Return False
EndFunction
bool Function IsWillingToClean()
	Return False
EndFunction
bool Function IsWillingToWork()
	Return False
EndFunction
bool Function IsObedient()
	Return False
EndFunction
float Function MoodReactionFactor()
	Return 0.0
EndFunction
bool Function IsDevoted()
	Return False
EndFunction
bool Function IsInLove()
	Return False
EndFunction
bool Function IsHappy()
	Return False
EndFunction
bool Function IsOkayWithPlayer()
	Return False
EndFunction
bool Function IsAngry()
	Return False
EndFunction
bool Function IsAfraid()
	Return False
EndFunction
bool Function IsShocked()
	Return False
EndFunction
bool Function IsAshamed()
	Return False
EndFunction
bool Function IsSad()
	Return False
EndFunction
bool Function IsCrying()
	Return False
EndFunction
bool Function IsShamed()
	Return False
EndFunction
bool Function IsFeelingJealous()
	Return False
EndFunction
bool Function IsFeelingAshamed()
	Return False
EndFunction
float Function getSexMultiplier(bool is_oral, bool is_vaginal, bool is_anal)
	Return 0.0
EndFunction
float Function getRapeMultiplier()
	Return 0.0
EndFunction
float Function getPainMultiplier()
	Return 0.0
EndFunction
float Function getPraiseMultiplier()
	Return 0.0
EndFunction
float Function getScoldMultiplier()
	Return 0.0
EndFunction
float Function getFeelingMultiplier()
	Return 0.0
EndFunction
float Function getEmotionMultiplier()
	Return 0.0
EndFunction
float Function getArousalBonus()
	Return 0.0
EndFunction
Float Function RunAwayMoodBase()
	Return 0.0
EndFunction
Float Function CallForHelpMoodBase()
	Return 0.0
EndFunction
Float Function StopWaitingMoodBase()
	Return 0.0
EndFunction
Float Function BreakRestraintMoodBase()
	Return 0.0
EndFunction
Float Function StopOrderMoodBase(float training)
	Return 0.0
EndFunction
string Function GetMoodName()
	Return ""
EndFunction
string Function GetMoodNameThirdPerson()
	Return ""
EndFunction
Function ChooseIdle()
EndFunction
Function ChooseDrunkIdle()
EndFunction
Function ChooseTopic()
EndFunction
Event OnBootstrap(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
EndEvent
Event OnLoad()
EndEvent
Event AfterAssign(bool isSlave, bool newActor, bool playerOwned)
EndEvent
Function SetObedientTimer(int timer_start = 10)
EndFunction
Function ApplyPredatorBonusAtCapture()
EndFunction
Function ResetMood()
EndFunction
Function SetGender()
EndFunction
Function SetGenderByString(string str_gender)
EndFunction
Function SetProperties(bool isSlave, bool playerOwned)
EndFunction
Function ClearValues()
EndFunction
Function SetLoveInterest()
EndFunction
float default_aggression = 0.0
float default_confidence = 0.0
float default_assistance = 0.0
float default_morality   = 0.0
Function ReCheck()
EndFunction
Function CheckMood()
EndFunction
Function CheckFactions()
EndFunction
Function SetPersonality(bool newActor)
EndFunction
Function SetAllowGearFaction()
EndFunction
bool Property is_initializing = false Auto Hidden
Function SetMindReady()
EndFunction
Function SetMindBusy()
EndFunction
Function ResetModifiers(bool doprint = false)
EndFunction
Function PrintPersonality()
EndFunction
bool before_clear_is_busy = false
Event BeforeClear()
EndEvent
Function SetDisplayName(string newName)
EndFunction
String Function getName()
	Return ""
EndFunction
Function setTitle(string newTitle = "")
EndFunction
Function setTitleByType(bool isSlave)
EndFunction
String Function getTitle()
	Return ""
EndFunction
Function SetMoodJustCaptured()
EndFunction
Function SetMoodReleased(bool is_freed)
EndFunction
Function SetRelationshipReleased()
EndFunction
Function CheckMoodFactions()
EndFunction
Function SetMoodFaction()
EndFunction
string Function GetMoodByFaction()
	Return ""
EndFunction
Function SetExpressionByMood()
EndFunction
Function SetRelationshipToPlayer()
EndFunction
int Function GetMoodIndex()
	Return 0
EndFunction
float enslaved_time = 0.0
Function ClearMemories()
EndFunction
string Property memory_origin_txt         Auto Hidden
float  Property memory_capture_time = 0.0 Auto Hidden
int    Property memory_capture_mood       Auto Hidden
int    Property memory_capture_ntimes     Auto Hidden
int    Property memory_capture_rtimes     Auto Hidden
int    Property memory_capture_ftimes     Auto Hidden
string Property memory_capture_location   Auto Hidden
string Property memory_capture_occupation Auto Hidden
string Property memory_capture_origin     Auto Hidden
string Property memory_capture_type       Auto Hidden
string Property memory_capture_txt        Auto Hidden
int    Property memory_entries        Auto Hidden
float[] __memory_abuse_time
float[] Property memory_abuse_time Hidden
float[] Function Get()
	Return None
EndFunction
EndProperty
int[] __memory_abuse_category
int[] Property memory_abuse_category Hidden
int[] Function Get()
	Return None
EndFunction
EndProperty
int[] __memory_abuse_mood
int[] Property memory_abuse_mood Hidden
int[] Function Get()
	Return None
EndFunction
EndProperty
int[] __memory_abuse_level
int[] Property memory_abuse_level Hidden
int[] Function Get()
	Return None
EndFunction
EndProperty
int[] __memory_abuse_ntimes
int[] Property memory_abuse_ntimes Hidden
int[] Function Get()
	Return None
EndFunction
EndProperty
bool[] __memory_abuse_respectful
bool[] Property memory_abuse_respectful Hidden
bool[] Function Get()
	Return None
EndFunction
EndProperty
bool[] __memory_abuse_flag
bool[] Property memory_abuse_flag Hidden
bool[] Function Get()
	Return None
EndFunction
EndProperty
string[] __memory_abuse_location
string[] Property memory_abuse_location Hidden
string[] Function Get()
	Return None
EndFunction
EndProperty
string[] __memory_abuse_type
string[] Property memory_abuse_type Hidden
string[] Function Get()
	Return None
EndFunction
EndProperty
string[] __memory_abuse_reason
string[] Property memory_abuse_reason Hidden
string[] Function Get()
	Return None
EndFunction
EndProperty
string[] __memory_abuse_txt
string[] Property memory_abuse_txt Hidden
string[] Function Get()
	Return None
EndFunction
EndProperty
int[] __memory_abuse_ncat
int[] Property memory_abuse_ncat Hidden
int[] Function Get()
	Return None
EndFunction
EndProperty
bool Function HasMemory(int cat)
	Return False
EndFunction
bool Function FreeSomeMemory()
	Return False
EndFunction
bool Function MergeMemories()
	Return False
EndFunction
bool Function FreeSomeNotSoImportantMemory(int cat_level)
	Return False
EndFunction
bool Function FreeSomeMoreImportantMemory(int cat_level)
	Return False
EndFunction
Function ResetTextMemories()
EndFunction
Function ResetAllMemories()
EndFunction
Function CollapseMemory(int istart)
EndFunction
int Function StoreNewMemory(int cat, float time, string loc, string type, string reason, int the_mood, int the_level, bool is_respectful, bool flag_value)
	Return 0
EndFunction
bool Function LastMemoryIsCat(int cat, string type = "")
	Return False
EndFunction
Function RegisterNewMemory(int idx)
EndFunction
float broken_time = 0.0
int Function TrainRandom(float amount)
	Return 0
EndFunction
int Function TrainForVampireFed(Actor akAbuser)
	Return 0
EndFunction
Function TrainForVampireFeed(Actor akVictim)
EndFunction
Function TrainBroken()
EndFunction
Function TrainInLove()
EndFunction
Function ChooseDefaultIdle()
EndFunction
bool Function TryCoverSelf()
	Return False
EndFunction
bool Function TryWearClothes()
	Return False
EndFunction
Function TryWarmArms()
EndFunction
Function TryRemoveTears(int amount)
EndFunction
Function TryFearTears()
EndFunction
Function TryShameTears()
EndFunction
Function TrySadnessTears()
EndFunction
Function TryDistressTears()
EndFunction
bool Function MoodSwingActive(float amount)
	Return False
EndFunction
bool Function MoodSwingPassive(float amount)
	Return False
EndFunction
bool Function MoodSwingThree(string mood_swing1, float x1, string mood_swing2, float x2, string mood_swing3, float x3)
	Return False
EndFunction
bool Function MoodSwingTwo(string mood_swing1, float chance1, string mood_swing2, float chance2)
	Return False
EndFunction
bool Function MoodSwing(string mood_swing, float chance)
	Return False
EndFunction
Function ChooseMoodChange()
EndFunction
bool Function IsMoodSpontaneouslyPassive(float amount)
	Return False
EndFunction
bool Function IsMoodSpontaneouslyActive(float amount)
	Return False
EndFunction
bool Function IsMoodSpontaneouslyNeutral(float amount)
	Return False
EndFunction
bool Function IsMoodSpontaneouslyCooperative(float amount)
	Return False
EndFunction
Function ChooseMoodSpontaneous(float amount)
EndFunction
Function ChooseMoodSpontaneousOnTick(float amount)
EndFunction
Function MakeCry()
EndFunction
bool Function MakeMoodAfraid(float amount)
	Return False
EndFunction
bool Function MakeMoodAngry(float amount)
	Return False
EndFunction
bool Function MakeMoodSad(float amount)
	Return False
EndFunction
bool Function MakeMoodAshamed(float amount)
	Return False
EndFunction
bool Function MakeStopPose()
	Return False
EndFunction
bool Function MakeStopMasturbate()
	Return False
EndFunction
bool Function MakeStopWait()
	Return False
EndFunction
bool Function MakeStopWork()
	Return False
EndFunction
bool Function MakeBreakTieup()
	Return False
EndFunction
bool Function MakeBreakRestraint(float restraintModifier)
	Return False
EndFunction
bool Function MakeRunAway()
	Return False
EndFunction
bool Function MakeRunAwayGang(float xfriendship)
	Return False
EndFunction
bool Function MakeAngryForFriend(Float base_amount)
	Return False
EndFunction
Function MakeFlatteredForGreed(Float base_amount)
EndFunction
Function MakeAngryForTaken(Float base_amount)
EndFunction
bool Function MakeAngryForGreed()
	Return False
EndFunction
bool Function MakeAngryForUnfairness()
	Return False
EndFunction
bool Function MakeAngryForInjustice()
	Return False
EndFunction
Function MakeAngryFor(Float base_amount)
EndFunction
Function MakeAshamedFor(Float base_amount)
EndFunction
bool Function MakeAshamed()
	Return False
EndFunction
bool Function MakeSadForFriend(Float base_amount)
	Return False
EndFunction
bool Function MakeSadForUnfairness()
	Return False
EndFunction
bool Function MakeSadForInjustice()
	Return False
EndFunction
Function MakeSadFor(Float base_amount)
EndFunction
Function MakeAfraidFor(Float base_amount)
EndFunction
bool Function MakeAfraid()
	Return False
EndFunction
float Function GetPersonalityCheck(DOM_Mind akOther)
	Return 0.0
EndFunction
float __chance_runaway = 0.0
Function SetChanceRunAway()
EndFunction
float Function GetChanceRunAway()
	Return 0.0
EndFunction
float Function ChanceRunAway()
	Return 0.0
EndFunction
float __chance_runaway_gang = 0.0
Function SetChanceRunAwayGang()
EndFunction
float Function GetChanceRunAwayGang()
	Return 0.0
EndFunction
float Function ChanceRunAwayGang()
	Return 0.0
EndFunction
float Function ChanceCallForHelp()
	Return 0.0
EndFunction
Float Function ChanceAngryForGreed()
	Return 0.0
EndFunction
Float Function ChanceDecayOverTime(Float time, Float half_life = 60.0, Float max_val = 1.0, Float min_val = 0.0)
	Return 0.0
EndFunction
Float Function ChanceRangeHigh(Float stat, Float stat_min = 0.0, Float stat_max = 100.0)
	Return 0.0
EndFunction
Float Function ChanceRangeLow(Float stat, Float stat_min = 0.0, Float stat_max = 100.0)
	Return 0.0
EndFunction
Float __chance_happy = 0.0
Function SetChanceHappy()
EndFunction
float Function GetChanceHappy()
	Return 0.0
EndFunction
Float Function ChanceHappy()
	Return 0.0
EndFunction
Float __chance_angry = 0.0
Function SetChanceAngry()
EndFunction
float Function GetChanceAngry()
	Return 0.0
EndFunction
Float Function ChanceAngry()
	Return 0.0
EndFunction
Float __chance_angry_for_unfairness = 0.0
Function SetChanceAngryForUnfairness()
EndFunction
Float Function ChanceAngryForUnfairness()
	Return 0.0
EndFunction
Float __chance_angry_for_injustice = 0.0
Function SetChanceAngryForInjustice()
EndFunction
Float Function ChanceAngryForInjustice()
	Return 0.0
EndFunction
Float __chance_defiant = 0.0
Function SetChanceDefiant()
EndFunction
float Function GetChanceDefiant()
	Return 0.0
EndFunction
Float Function ChanceDefiant()
	Return 0.0
EndFunction
Float __chance_afraid = 0.0
Function SetChanceAfraid()
EndFunction
float Function GetChanceAfraid()
	Return 0.0
EndFunction
Float Function ChanceAfraid()
	Return 0.0
EndFunction
Float __chance_afraid_spontaneous = 0.0
Function SetChanceAfraidSpontaneous()
EndFunction
Float __chance_scared = 0.0
Function SetChanceScared()
EndFunction
float Function GetChanceScared()
	Return 0.0
EndFunction
Float Function ChanceScared()
	Return 0.0
EndFunction
Float __chance_terrified = 0.0
Function SetChanceTerrified()
EndFunction
float Function GetChanceTerrified()
	Return 0.0
EndFunction
Float Function ChanceTerrified()
	Return 0.0
EndFunction
Float __chance_crushed = 0.0
Function SetChanceCrushed()
EndFunction
float Function GetChanceCrushed()
	Return 0.0
EndFunction
Float Function ChanceCrushed()
	Return 0.0
EndFunction
Float __chance_sad = 0.0
Function SetChanceSad()
EndFunction
float Function GetChanceSad()
	Return 0.0
EndFunction
Float Function ChanceSad()
	Return 0.0
EndFunction
Float __chance_sad_for_unfairness = 0.0
Function SetChanceSadForUnfairness()
EndFunction
Float Function ChanceSadForUnfairness()
	Return 0.0
EndFunction
Float __chance_sad_for_injustice = 0.0
Function SetChanceSadForInjustice()
EndFunction
Float Function ChanceSadForInjustice()
	Return 0.0
EndFunction
Float __chance_proud = 0.0
Function SetChanceProud()
EndFunction
float Function GetChanceProud()
	Return 0.0
EndFunction
Float Function ChanceProud()
	Return 0.0
EndFunction
Float __chance_ashamed = 0.0
Function SetChanceAshamed()
EndFunction
float Function GetChanceAshamed()
	Return 0.0
EndFunction
Float Function ChanceAshamed()
	Return 0.0
EndFunction
Float __chance_ashamed_spontaneous = 0.0
Function SetChanceAshamedSpontaneous()
EndFunction
Float __chance_shock = 0.0
Function SetChanceShock()
EndFunction
float Function GetChanceShock()
	Return 0.0
EndFunction
Float Function ChanceShock()
	Return 0.0
EndFunction
Float __chance_broken = 0.0
Function SetChanceBroken()
EndFunction
float Function GetChanceBroken()
	Return 0.0
EndFunction
Float Function ChanceBroken()
	Return 0.0
EndFunction
Float __chance_loyal = 0.0
Function SetChanceLoyal()
EndFunction
float Function GetChanceLoyal()
	Return 0.0
EndFunction
Float Function ChanceLoyal()
	Return 0.0
EndFunction
Float __chance_charmed = 0.0
Function SetChanceCharmed()
EndFunction
float Function GetChanceCharmed()
	Return 0.0
EndFunction
Float Function ChanceCharmed()
	Return 0.0
EndFunction
Float __chance_inlove = 0.0
Function SetChanceInlove()
EndFunction
float Function GetChanceInlove()
	Return 0.0
EndFunction
Float Function ChanceInlove()
	Return 0.0
EndFunction
Float __chance_jealous = 0.0
Function SetChanceJealous()
EndFunction
float Function GetChanceJealous()
	Return 0.0
EndFunction
Float Function ChanceJealous()
	Return 0.0
EndFunction
Float __chance_depressed = 0.0
Function SetChanceDepressed()
EndFunction
float Function GetChanceDepressed()
	Return 0.0
EndFunction
Float Function ChanceDepressed()
	Return 0.0
EndFunction
Float __chance_insecure = 0.0
Function SetChanceInsecure()
EndFunction
float Function GetChanceInsecure()
	Return 0.0
EndFunction
Float Function ChanceInsecure()
	Return 0.0
EndFunction
Float __chance_recover_from_angry = 0.0
Function SetChanceRecoverFromAngry()
EndFunction
Float Function ChanceRecoverFromAngry()
	Return 0.0
EndFunction
Float __chance_recover_from_afraid = 0.0
Function SetChanceRecoverFromAfraid()
EndFunction
Float Function ChanceRecoverFromAfraid()
	Return 0.0
EndFunction
Float __chance_recover_from_sad = 0.0
Function SetChanceRecoverFromSad()
EndFunction
Float Function ChanceRecoverFromSad()
	Return 0.0
EndFunction
Float __chance_recover_from_ashamed = 0.0
Function SetChanceRecoverFromAshamed()
EndFunction
Float Function ChanceRecoverFromAshamed()
	Return 0.0
EndFunction
Float __chance_recover_from_shock = 0.0
Function SetChanceRecoverFromShock()
EndFunction
Float Function ChanceRecoverFromShock()
	Return 0.0
EndFunction
Float __chance_recover_from_broken = 0.0
Function SetChanceRecoverFromBroken()
EndFunction
Float Function ChanceRecoverFromBroken()
	Return 0.0
EndFunction
Float __chance_recover_from_depressed = 0.0
Function SetChanceRecoverFromDepressed()
EndFunction
Float Function ChanceRecoverFromDepressed()
	Return 0.0
EndFunction
Float __chance_recover_from_insecure = 0.0
Function SetChanceRecoverFromInsecure()
EndFunction
Float Function ChanceRecoverFromInsecure()
	Return 0.0
EndFunction
Float __chance_recover_from_jealous = 0.0
Function SetChanceRecoverFromJealous()
EndFunction
Float Function ChanceRecoverFromJealous()
	Return 0.0
EndFunction
Float __chance_respectful = 0.0
Function SetChanceRespectful()
EndFunction
float Function GetChanceRespectful()
	Return 0.0
EndFunction
Float Function ChanceRespectful()
	Return 0.0
EndFunction
Float __chance_fighting = 0.0
Function SetChanceFightForPlayer()
EndFunction
float Function GetChanceFightForPlayer()
	Return 0.0
EndFunction
Float Function ChanceFightForPlayer()
	Return 0.0
EndFunction
Float __chance_punished_multiplier = 0.0
Function SetChancePunishedMultiplier()
EndFunction
Float Function ChancePunishedMultiplier()
	Return 0.0
EndFunction
Float __chance_recently_punished_inverted = 0.0
Float __chance_recently_punished = 0.0
Function SetChanceRecentlyPunished()
EndFunction
Float Function ChanceRecentlyPunishedInverted()
	Return 0.0
EndFunction
Float Function ChanceRecentlyPunished()
	Return 0.0
EndFunction
int registered_updates1 = 0x7fffffff
int registered_updates2 = 0x7fffffff
Function RegisterForUpdateChanceAngry()
EndFunction
Function RegisterForUpdateChanceAfraid()
EndFunction
Function RegisterForUpdateChanceTerrified()
EndFunction
Function RegisterForUpdateChanceScared()
EndFunction
Function RegisterForUpdateChanceAshamed()
EndFunction
Function RegisterForUpdateChanceSad()
EndFunction
Function RegisterForUpdateChanceShock()
EndFunction
Function RegisterForUpdateChanceBroken()
EndFunction
Function RegisterForUpdateChanceLoyal()
EndFunction
Function RegisterForUpdateChanceInlove()
EndFunction
Function RegisterForUpdateChanceJealous()
EndFunction
Function RegisterForUpdateChanceDepressed()
EndFunction
Function RegisterForUpdateChanceAngryForUnfairness()
EndFunction
Function RegisterForUpdateChanceAngryForInjustice()
EndFunction
Function RegisterForUpdateChanceSadForUnfairness()
EndFunction
Function RegisterForUpdateChanceSadForInjustice()
EndFunction
Function RegisterForUpdateChanceRecoverFromAngry()
EndFunction
Function RegisterForUpdateChanceRecoverFromAfraid()
EndFunction
Function RegisterForUpdateChanceRecoverFromAshamed()
EndFunction
Function RegisterForUpdateChanceRecoverFromSad()
EndFunction
Function RegisterForUpdateChanceRecoverFromShock()
EndFunction
Function RegisterForUpdateChanceRecoverFromBroken()
EndFunction
Function RegisterForUpdateChanceRecoverFromJealous()
EndFunction
Function RegisterForUpdateChanceRecoverFromDepressed()
EndFunction
Function RegisterForUpdateChanceRespectful()
EndFunction
Function RegisterForUpdateChanceFightForPlayer()
EndFunction
Function RegisterForUpdateChancePunishedMultiplier()
EndFunction
Function RegisterForUpdateChanceHappy()
EndFunction
Function RegisterForUpdateChanceInsecure()
EndFunction
Function RegisterForUpdateChanceRecoverFromInsecure()
EndFunction
Function RegisterForUpdateChanceRunAway()
EndFunction
Function RegisterForUpdateChanceRunAwayGang()
EndFunction
Function RegisterForUpdateChanceProud()
EndFunction
Function RegisterForUpdateChanceCrushed()
EndFunction
Function RegisterForUpdateChanceDefiant()
EndFunction
Function RegisterForUpdateChanceCharmed()
EndFunction
Function RegisterForUpdateTrainingStatus()
EndFunction
Function RegisterForUpdatePersonalityIndex()
EndFunction
Function RegisterForUpdateSlaverStatus()
EndFunction
Function UpdateRegistered()
EndFunction
Function UpdateRegistered1()
EndFunction
Function UpdateRegistered2()
EndFunction
bool Function RecoverFrom()
	Return False
EndFunction
bool Function RecoverFromSadByComfort()
	Return False
EndFunction
bool Function RecoverFromShockByComfort()
	Return False
EndFunction
bool on_update = false
Event OnUpdate()
EndEvent
bool on_update_gametime = false
Event OnUpdateGameTime()
EndEvent
Event OnEndPunishment(Float severity)
EndEvent
Event OnToldOff(int ireason)
EndEvent
bool __is_freed_slave = false
bool Property is_freed_slave Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_slave = true
bool Property is_slave Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_player_actor = false
bool Property is_player_actor Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
Function SetSlaveOwner(Actor akOwner)
EndFunction
Actor Property actor_owner = None Auto Hidden
string Property actor_owner_title = "" Auto Hidden
int __actor_owner_sex = -1
int Property actor_owner_sex Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
bool __is_player_slave = true
bool Property is_player_slave Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_love_interest = true
bool Property is_love_interest Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Function IsNotRespectful(float mod)
	Return False
EndFunction
bool Function IsNotRespectfullyWriting(float mod)
	Return False
EndFunction
bool Function IsWalkingOnFour(float mod)
	Return False
EndFunction
Function HandleWalkingOnUpdate()
EndFunction
float __arousal_factor = 0.0
Float Property arousal_factor Hidden
float Function get()
	Return 0.0
EndFunction
Function set(float value)
EndFunction
EndProperty
Int __is_aroused_for = 0
Int Property is_aroused_for Hidden
Int Function get()
	Return 0
EndFunction
Function set(Int value)
EndFunction
EndProperty
Int __is_enraptured_for = 0
Int Property is_enraptured_for Hidden
Int Function get()
	Return 0
EndFunction
Function set(Int value)
EndFunction
EndProperty
bool Function IsAroused()
	Return False
EndFunction
Function HandleArousalOnUpdate()
EndFunction
Function IncreaseArousal(float amount, float reason_modifier)
EndFunction
Function IncreaseArousalMagic(float amount)
EndFunction
Function IncreasePainForced(float amount)
EndFunction
Function IncreasePersonaForced(float amount)
EndFunction
Function EraseMemory()
EndFunction
int[] Function SaveKnownKinks()
	Return None
EndFunction
Function RestoreKnownKinks(int [] saved_kinks_slot)
EndFunction
Function SetKnownKinksFromJSON(int nkinksJSON)
EndFunction
Function RestoreHiddenKinks()
EndFunction
Function RecoverVirginity()
EndFunction
Function RestoreVirginity()
EndFunction
Function RestorePersonality()
EndFunction
Function RegisterModEvents()
EndFunction
Function UnregisterModEvents()
EndFunction
Function RegisterForSexEvents()
EndFunction
Function ResetActorRef()
EndFunction
Function UnregisterForSexEvents()
EndFunction
bool Property hadOralSex = false Auto Hidden
bool Property hadAnalSex = false Auto Hidden
bool Property hadVaginalSex = false Auto Hidden
bool Property sex_is_non_consensual = true Auto Hidden
bool Property sex_is_dominant = false Auto Hidden
bool Property sex_is_threesome = false Auto Hidden
bool Property sex_is_interracial = false Auto Hidden
bool Property sex_with_player = true Auto Hidden
bool Property sex_with_animal = false Auto Hidden
bool Property sex_with_undead = false Auto Hidden
bool Property sex_with_creature = false Auto Hidden
bool Property sex_with_animunculi = false Auto Hidden
bool Property sex_with_taboo = false Auto Hidden
bool Property sex_with_inlaw = false Auto Hidden
bool Property sex_with_relative = false Auto Hidden
bool sex_active = false
Event handleSexEvent(Form TrackedForm, int tid)
EndEvent
Function handleOnSexStart(Form controller)
EndFunction
Function handleSexStart(bool isVictim, string[] anim)
EndFunction
bool had_orgasm = false
bool had_separate_orgasm = false
bool had_handle_orgasm = false
bool had_slso = false
Event handleSeparateOrgasmEvent(Form ActorRef, Int thisThread)
EndEvent
Event handleSexOrgasmEvent(int tid, bool HasPlayer)
EndEvent
Function handleSexOrgasm(bool HasPlayer)
EndFunction
Event handleSexEndEvent(int tid, bool HasPlayer)
EndEvent
string[] sex_global_tags
Function SetSexTags(string[] anim)
EndFunction
string[] Function GetSexTags()
	Return None
EndFunction
Function handleSexEnd(string[] anim, bool HasPlayer)
EndFunction
Function StartSexualAbuse()
EndFunction
Function TrainAfterSex(Float multiplier, Float trainCount)
EndFunction
bool Function IsArousedAfterSex(Float base_chance)
	Return False
EndFunction
bool Function IsArousedAfterShame(Float base_chance)
	Return False
EndFunction
Function IsArousedSpontaneously(Float base_chance)
EndFunction
bool Function IsOrgasmingAfterArousal(Float base_chance)
	Return False
EndFunction
Function SetAllowOrgasm()
EndFunction
bool drunk_passedout = false
bool drugged_passedout = false
int __drunk_level = 0
int Property drunk_level Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
float drunk_traits_save01
float drunk_traits_save02
float drunk_traits_save06
float drunk_traits_save07
float drunk_traits_save08
float drunk_traits_save10
float intake_alcohol = 0.0
float blood_alcohol = 0.0
float intake_alcohol_time = 0.0
float intake_alcohol_last_time = 0.0
float intake_alcohol_start_level = 0.0
float blood_alcohol_time = 0.0
float blood_alcohol_last_time = 0.0
float blood_alcohol_start_level = 0.0
int Function GetDrunkLevel()
	Return 0
EndFunction
Float Function GetBloodAlcohol()
	Return 0.0
EndFunction
bool Function IsDrunkPassedout()
	Return False
EndFunction
bool Function IsPassedOut()
	Return False
EndFunction
bool Function IsPassedOutNotDrunk()
	Return False
EndFunction
Function MakeSober()
EndFunction
Function SaveTraitsBeforeDrunk()
EndFunction
Function RestoreTraitsAfterDrunk()
EndFunction
Function IngestNarcotic(Form the_drink)
EndFunction
Function IngestAlcohol(float amount)
EndFunction
Function HandleAlcoholEffects()
EndFunction
Function HandleAlcoholOnUpdate()
EndFunction
Float __HEXACO_Honesty = 50.0
Float Property BASE_Honesty = -1.0 Auto Hidden
Float __HEXACO_Emotionality = 50.0
Float Property BASE_Emotionality = -1.0 Auto Hidden
Float __HEXACO_eXtraversion = 50.0
Float Property BASE_Extraversion = -1.0 Auto Hidden
Float __HEXACO_Agreeableness = 50.0
Float Property BASE_Agreeableness = -1.0 Auto Hidden
Float __HEXACO_Conscientiousness = 50.0
Float Property BASE_Conscientiousness = -1.0 Auto Hidden
Float __HEXACO_Openness = 50.0
Float Property BASE_Openness = -1.0 Auto Hidden
Float __FACET_Wilfulness = 50.0
Float Property BASE_Wilfulness = -1.0 Auto Hidden
Float __FACET_Toughness = 50.0
Float Property BASE_Toughness = -1.0 Auto Hidden
Float __FACET_Sensuality = 50.0
Float Property BASE_Sensuality = -1.0 Auto Hidden
Float __FACET_Submissivity = 50.0
Float Property BASE_Submissivity = -1.0 Auto Hidden
Float __FACET_Boldness = 50.0
Float Property BASE_Boldness = -1.0 Auto Hidden
Float __FACET_Smartness = 50.0
Float Property BASE_Smartness = -1.0 Auto Hidden
Float __submission = 0.0
Float __fear_training = 0.0
Float __humiliation = 0.0
Float __anger_training = 0.0
Float __resignation = 0.0
Float __respect_training = 0.0
Float __love_desire = 0.0
Float __loyal_worship = 0.0
Float __love_fascination = 0.0
Float __loyal_absolution = 0.0
Float __loyal_devotion = 0.0
Float __love_admiration = 0.0
Float __skill_enforcer = 0.0
Float __skill_persuader = 0.0
Float __skill_depraver = 0.0
Float __skill_predator = 0.0
Float __skill_slaver = 0.0
Float __skill_deceiver = 0.0
Float __vaginal_training = 0.0
Float __sex_training = 0.0
Float __anal_training = 0.0
Float __oral_training = 0.0
Float __pose_training = 0.0
Float __house_training = 0.0
Float __work_training = 0.0
Float __combat_training = 0.0
float __timer_for_enslaved = 0.0
float __timer_for_broken = 0.0
int __virgin_status_vaginal = 0
int __virgin_status_gang = 0
int __virgin_status_anal = 0
int __virgin_status_oral = 0
int __virgin_status_same = 0
int __number_of_pain = 0
int __number_of_toldoff = 0
int __number_of_praise = 0
int __number_of_comfort = 0
int __number_of_insult = 0
int __number_of_flatter = 0
int __number_of_threat = 0
int __number_of_promise = 0
int __number_of_bondage = 0
int __number_of_shame = 0
int __number_of_drug = 0
int __number_of_rape = 0
int __number_of_sex = 0
int __new_sexual_experiences = 0
int __number_of_sexformoney = 0
int __number_of_sexwithothers = 0
int __number_of_kinktrigger = 0
int __number_of_orgasm = 0
int __number_of_chat_feelings = 0
int __number_of_chat_personality = 0
int __number_of_shock = 0
int __number_of_broken = 0
int __number_of_brainwashed = 0
int __number_of_trainee = 0
int __number_of_trainer = 0
int __number_of_recruitedslavers = 0
int __number_of_whoredslaves = 0
int __number_of_ransomedslaves = 0
int __number_of_capturedslaves = 0
int __number_of_brokenslaves = 0
int __number_of_soldslaves = 0
int __number_of_rapedslaves = 0
int __number_of_player_fling = 0
int __number_of_player_chat = 0
bool HEXACO_migrated = false
Function MigrateHEXACO()
EndFunction
Float[] __HEXACO_Traits
Float[] Property HEXACO_Traits Hidden
Float[] Function get()
	Return None
EndFunction
EndProperty
Float[] __HEXACO_Base
Float[] Property HEXACO_Base Hidden
Float[] Function get()
	Return None
EndFunction
EndProperty
Float[] __HEXACO_Facets
Float[] Property HEXACO_Facets Hidden
Float[] Function get()
	Return None
EndFunction
EndProperty
Float[] __HEXACO_InverseFacets
Float[] Property HEXACO_InverseFacets Hidden
Float[] Function get()
	Return None
EndFunction
EndProperty
Float[] __TRAINING_Stats
Float[] Property TRAINING_Stats Hidden
Float[] Function get()
	Return None
EndFunction
EndProperty
Int[] __TRAINING_Virginity
Int[] Property TRAINING_Virginity Hidden
Int[] Function get()
	Return None
EndFunction
EndProperty
Int[] __TRAINING_Counter
Int[] Property TRAINING_Counter Hidden
Int[] Function get()
	Return None
EndFunction
EndProperty
Function CheckFacets(int itrait = -1)
EndFunction
Float Function CheckValueFloat(float value, float max_value = 100.0)
	Return 0.0
EndFunction
int Function CheckValueInt(int value, int max_value = 200000000)
	Return 0
EndFunction
Float Function CheckBase(float value, float base)
	Return 0.0
EndFunction
Function SetHEXACOValues(float[] TraitsArray)
EndFunction
bool Function SetHEXACOValue(int itrait, float value)
	Return False
EndFunction
Float Property HEXACO_Honesty Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property HEXACO_Emotionality Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property HEXACO_eXtraversion Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property HEXACO_Agreeableness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property HEXACO_Conscientiousness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property HEXACO_Openness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Wilfulness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Toughness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Sensuality Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Submissivity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Boldness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property PRISM_Smartness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __MOD_SumAll = 3.0
Float Property MOD_SumAll Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Function GetDefaultModifiersSum()
	Return 0.0
EndFunction
Float __MOD_SkillAll = 3.0
Float Property MOD_SkillAll Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Function GetDefaultModifiersSkill()
	Return 0.0
EndFunction
string Function GetPersonalityType()
	Return ""
EndFunction
string Function GetTrainingDifficulty()
	Return ""
EndFunction
string Function GetSlaverProficiency()
	Return ""
EndFunction
bool Function SetFacetValue(int ifacet, float value)
	Return False
EndFunction
bool Function SetInverseFacetValue(int ifacet, float value)
	Return False
EndFunction
Float Property MOD_Humility Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesHumility()
EndFunction
Float Property MOD_Mercy Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Insensitivity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesInsensitivity()
EndFunction
Float Property MOD_GreedAvoidance Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Greed Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesGreed()
EndFunction
Float Property MOD_Modesty Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesModesty()
EndFunction
Float Property MOD_Sincerity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesSincerity()
EndFunction
Float Property MOD_Fairness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Criminality Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesCriminality()
EndFunction
Float Property MOD_Panic Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesPanic()
EndFunction
Float Property MOD_Fearfulness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesFearfulness()
EndFunction
Float Property MOD_Bravery Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Sentimentality Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesSentimentality()
EndFunction
Float Property MOD_Reactivity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesReactivity()
EndFunction
Float Property MOD_Dependence Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesDependence()
EndFunction
Float Property MOD_Anxiety Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesAnxiety()
EndFunction
Float Property MOD_Cool Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Liveliness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesLiveliness()
EndFunction
Float Property MOD_SelfEsteem Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesSelfEsteem()
EndFunction
Float Property MOD_Composure Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Naivety Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesNaivety()
EndFunction
Float Property MOD_Sociability Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesSociability()
EndFunction
Float Property MOD_SocialBoldness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesSocialBoldness()
EndFunction
Float Property MOD_Ingenuity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesIngenuity()
EndFunction
Float Property MOD_Gentleness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesGentleness()
EndFunction
Float Property MOD_Patience Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Impatience Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesImpatience()
EndFunction
Float Property MOD_Flexibility Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesFlexibility()
EndFunction
Float Property MOD_Forgiveness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesForgiveness()
EndFunction
Float Property MOD_Empathy Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesEmpathy()
EndFunction
Float Property MOD_Contentment Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Resentment Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesResentment()
EndFunction
Float Property MOD_Dutifulness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesDutifulness()
EndFunction
Float Property MOD_Defiance Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Diligence Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesDiligence()
EndFunction
Float Property MOD_Ease Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesEase()
EndFunction
Float Property MOD_Perfectionism Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesPerfectionism()
EndFunction
Float Property MOD_Prudence Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesPrudence()
EndFunction
Float Property MOD_Recklessness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Organization Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesOrganization()
EndFunction
Float Property MOD_Independance Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Authority Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesAuthority()
EndFunction
Float Property MOD_Inquisitiveness Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesInquisitiveness()
EndFunction
Float Property MOD_Appreciation Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesAppreciation()
EndFunction
Float Property MOD_Discernment Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Manipulation Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesManipulation()
EndFunction
Float Property MOD_Creativity Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesCreativity()
EndFunction
Float Property MOD_Originality Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property MOD_Discipline Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesDiscipline()
EndFunction
Float Property MOD_Vaginal Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesVaginal()
EndFunction
Float Property MOD_Intimidate Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesIntimidate()
EndFunction
Float Property MOD_Oral Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesOral()
EndFunction
Float Property MOD_Anal Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesAnal()
EndFunction
Float Property MOD_Controller Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesController()
EndFunction
Float Property MOD_Pretender Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesPretender()
EndFunction
Float Property MOD_Orgasm Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesOrgasm()
EndFunction
Float Property MOD_Combat Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesCombat()
EndFunction
Float Property MOD_Addict Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function UpdateDependenciesAddict()
EndFunction
bool Function SetTrainingValue(int itrain, float value, float max_value)
	Return False
EndFunction
Float Property submission Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSubmission(Float base_amount)
EndFunction
Float Property fear_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainFear(Float base_amount)
EndFunction
Float Property humiliation Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainHumiliation(Float base_amount)
EndFunction
Float Property anger_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainAnger(Float base_amount)
EndFunction
Float Property resignation Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainResignation(Float base_amount)
EndFunction
Float Property respect_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainRespect(Float base_amount)
EndFunction
Float Property love_desire Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property loyal_worship Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property love_fascination Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property loyal_absolution Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property loyal_devotion Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property love_admiration Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property skill_enforcer Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillEnforcer(Float base_amount)
EndFunction
Float Function GetEnforcerModifier()
	Return 0.0
EndFunction
Float Property skill_persuader Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillPersuader(Float base_amount)
EndFunction
Float Function GetPersuaderModifier()
	Return 0.0
EndFunction
Float Property skill_depraver Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillDepraver(Float base_amount)
EndFunction
Float Function GetDepraverModifier()
	Return 0.0
EndFunction
Float Property skill_predator Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillPredator(Float base_amount)
EndFunction
Float Function GetPredatorModifier()
	Return 0.0
EndFunction
Float Property skill_slaver Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillSlaver(Float base_amount)
EndFunction
Float Function GetSlaverModifier()
	Return 0.0
EndFunction
Float Property skill_deceiver Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainSkillDeceiver(Float base_amount)
EndFunction
Float Function GetDeceiverModifier()
	Return 0.0
EndFunction
Float Property vaginal_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainVaginal(Float base_amount)
EndFunction
Float Property sex_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float Property anal_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainAnal(Float base_amount)
EndFunction
Float Property oral_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainOral(Float base_amount)
EndFunction
Float Property pose_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainPose(Float base_amount)
EndFunction
Float Property house_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainHouse(Float base_amount)
EndFunction
Float Property work_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainWork(Float base_amount)
EndFunction
Float Property combat_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Function TrainCombat(Float base_amount)
EndFunction
float Property timer_for_broken Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Property timer_for_enslaved Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
bool Function SetVirginityValue(int itrain, int value)
	Return False
EndFunction
int Property virgin_status_vaginal Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property virgin_status_gang Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property virgin_status_anal Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property virgin_status_oral Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property virgin_status_same Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
bool Function SetCounterValue(int itrain, int value)
	Return False
EndFunction
int Property number_of_pain Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_toldoff Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_praise Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_comfort Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_insult Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_flatter Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_threat Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_promise Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_bondage Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_shame Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_drug Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_rape Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_sex Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_sexformoney Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_sexwithothers Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_orgasm Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_sexual_experiences Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_kinktrigger Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_chat_feelings Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_chat_personality Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_shock Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_broken Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_brainwashed Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_trainee Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_trainer Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_recruitedslavers  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_whoredslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_ransomedslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_capturedslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_brokenslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_soldslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_rapedslaves  Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_player_fling Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
int Property number_of_player_chat Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
Float __total_training = 0.0
Float Property total_training Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Function TotalTraining()
	Return 0.0
EndFunction
Float __total_love_feelings = 0.0
Float Property total_love_feelings Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Function TotalLoveFeelings()
	Return 0.0
EndFunction
Float __total_loyal_feelings = 0.0
Float Property total_loyal_feelings Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
float Function TotalLoyalFeelings()
	Return 0.0
EndFunction
Float Function GetSkillsDisciplineModifier(float amount)
	Return 0.0
EndFunction
Function IncreaseAnger(Float base_amount)
EndFunction
Function IncreaseAngerForFriend(Float base_amount)
EndFunction
Function IncreaseAngerForGreed(Float base_amount)
EndFunction
Function TrainForWornDevice(float severity, int ireason)
EndFunction
float Function GetModifierByName(string the_mod)
	Return 0.0
EndFunction
float Function GetTrainingByName(string the_stat)
	Return 0.0
EndFunction
bool Function TrainFromArrays(float severity, string mod_arousal, string[] mod_stats, float[] mod_values)
	Return False
EndFunction
Function TrainForReason(float severity, int reason)
EndFunction
Function TrainForKink(float amount, int ikink)
EndFunction
Function TrainForPromiseOnEnd()
EndFunction
Function TrainForBrokenSlave(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForRecruitedSlaver(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForWhoredSlave(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForCapturedSlave(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForSoldSlave(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForRansomedSlave(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainForFriend(Float amount, int reason, string type, string friend_name, string rel)
EndFunction
Function TrainForfreedom(Float base_amount)
EndFunction
Function TrainForGreed(Float base_amount)
EndFunction
Function TrainForBondage(Float base_amount)
EndFunction
Function TrainForDiscipline(Float base_amount)
EndFunction
Function TrainAll(Float amount)
EndFunction
Function TrainAllTrainer()
EndFunction
Function TrainTrainer()
EndFunction
Function TrainSexTrainer()
EndFunction
Function TrainHouseMistress()
EndFunction
Function HandlePunishmentOnHit(Actor akAbuser, Form akSource)
EndFunction
bool bHasFought = false
Function HandleShouldHaveFought()
EndFunction
Function TrainAfterFailedToFight()
EndFunction
Function TrainAfterCombat()
EndFunction
Function RegisterCombatEvents()
EndFunction
Function UnregisterCombatEvents()
EndFunction
Function UpdateCombatActorValues()
EndFunction
Function UpdateCombatStrength(float initialTraining)
EndFunction
Function SetBaseActorValue(string val_name, float value)
EndFunction
Function RegenHealth(float xregen)
EndFunction
Function RestoreHealth()
EndFunction
Function DamageHealth()
EndFunction
float Function GetBaseHealth()
	Return 0.0
EndFunction
Function UpdateHealth(int currentLevel, int addLevel)
EndFunction
Function UpdateStamina(int currentLevel, int addLevel)
EndFunction
Function UpdateMagicka(int currentLevel, int addLevel)
EndFunction
Function UpdateSkill(string the_skill, int currentLevel, int addLevel)
EndFunction
int Function GetActorLevel()
	Return 0
EndFunction
Function UpdateCombatStrengthToPlayerLevel()
EndFunction
Function SetShouldFightForPlayer()
EndFunction
Function UnsetShouldFightForPlayer()
EndFunction
bool __should_fight_for_player = false
bool Property should_fight_for_player Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __should_be_respectful = false
bool Property should_be_respectful Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __was_respectful = false
bool Property was_respectful Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __should_walk_on_four = false
bool Property should_walk_on_four Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_walking_on_four = false
bool Property is_walking_on_four Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Function IsRespectfulWritings()
	Return False
EndFunction
Function SetShouldBeSilent()
EndFunction
Function UnsetShouldBeSilent()
EndFunction
bool __should_be_silent = false
bool Property should_be_silent Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __should_be_noorgasm = false
bool Property should_be_noorgasm Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __was_should_be_naked = false
bool __was_should_hold_weapons = false
bool __was_should_wear_armor = false
Function UndressBeforeSex(Actor akAbuser, bool do_aggro)
EndFunction
Function RedressAfterSex(Actor akAbuser)
EndFunction
Function UndressBeforeShowering()
EndFunction
Function RedressAfterShowering()
EndFunction
bool __should_be_naked = false
bool Property should_be_naked Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __should_wear_armor = true
bool Property should_wear_armor Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __should_hold_weapons = false
bool Property should_hold_weapons Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
Function SetShouldBeNakedSoft(bool value = true)
EndFunction
bool was_fighting = false
Function UpdateIsFighting(Actor akTarget, int aeCombatStatus)
EndFunction
Function CheckIsFighting()
EndFunction
bool __was_fighting_for_player = true
bool Property was_fighting_for_player Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool was_silent = true
bool Property was_allowed_toorgasm = false Auto Hidden
Function CheckWasAllowedToOrgasm()
EndFunction
int Function GetNewSexualExperiences()
	Return 0
EndFunction
Function ResetSexLabStats()
EndFunction
Function IntegrateSexLabStats()
EndFunction
Function HandleMindTimers()
EndFunction
int Property timer_obedient = 0 Auto Hidden
bool Function WillObey(int reason, int ifacet, int itraining, float strength=1.0, bool do_msg=true)
	Return False
EndFunction
string Function GetTrainingStatusName()
	Return ""
EndFunction
string Function GetSlaverStatusName()
	Return ""
EndFunction
int property training_status = 0 Auto Hidden
string property training_status_name = "freshly captured" Auto Hidden
Function UpdateTrainingStatus()
EndFunction
int property slaver_status = 0 Auto Hidden
string property slaver_status_name = "rookie" Auto Hidden
Function UpdateSlaverStatus()
EndFunction
int Function GetTrainingStatusIndex()
	Return 0
EndFunction
int Function GetSlaverStatusIndex()
	Return 0
EndFunction
float Function GetSubmittedEffect()
	Return 0.0
EndFunction
float Function GetHumiliatedEffect()
	Return 0.0
EndFunction
float Function GetResignatedEffect()
	Return 0.0
EndFunction
float Function GetShamedEffect()
	Return 0.0
EndFunction
float Function GetDegradedEffect()
	Return 0.0
EndFunction
float Function GetAbusedEffect()
	Return 0.0
EndFunction
float Function GetObjectifiedEffect()
	Return 0.0
EndFunction
float Function GetTamedEffect()
	Return 0.0
EndFunction
float Function GetForcedEffect()
	Return 0.0
EndFunction
float Function GetdominatedEffect()
	Return 0.0
EndFunction
float Function GetSubjugatedEffect()
	Return 0.0
EndFunction
float Function GetTerrorizedEffect()
	Return 0.0
EndFunction
float Function GetEnslavedEffect()
	Return 0.0
EndFunction
float Function GetSubduedEffect()
	Return 0.0
EndFunction
float Function GetDebasedEffect()
	Return 0.0
EndFunction
float Function GetDemeanedEffect()
	Return 0.0
EndFunction
float Function GetDisgracedEffect()
	Return 0.0
EndFunction
float Property promiseTimer = 0.0 Auto Hidden
string Property promiseOath = "nothing" Auto Hidden
int __promise_kept = 0
int Property promise_kept Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
bool Function PromiseWasKept()
	Return False
EndFunction
Function HandlePromiseOnUpdate()
EndFunction
Function TrainForPromiseOnUpdate(string oath)
EndFunction
bool Function StartPromising(Actor akAbuser, string oath)
	Return False
EndFunction
bool Function SetPromise(string oath)
	Return False
EndFunction
Function ClearPromise()
EndFunction
bool Function ChangePromise(string new_oath)
	Return False
EndFunction
bool Function RenewPromise()
	Return False
EndFunction
Function CancelPromise()
EndFunction
int Property ticks_since_last_hit = 0 Auto Hidden
float Property time_last_abused = 0.0 Auto Hidden
float Property time_last_resilience = 0.0 Auto Hidden
Function HandlePunishmentOnUpdate()
EndFunction
bool Property end_punishment_on_next_tick = false Auto Hidden
Int __ticks_since_last_punished = 1000
Int Property ticks_since_last_punished Hidden
Int Function get()
	Return 0
EndFunction
Function set(Int value)
EndFunction
EndProperty
int effect_kinks_nb = 0
float effect_kinks_max = 0.0
int effect_kinks_idx = 0
float[] _effect_kinks_slot
float[] Property effect_kinks_slot
float[] Function Get()
	Return None
EndFunction
EndProperty
int hidden_kinks_nb = -1
Int[] _hidden_kinks_slot
Int[] Property hidden_kinks_slot
Int[] Function Get()
	Return None
EndFunction
EndProperty
int known_kinks_nb = 0
Int[] _known_kinks_slot
Int[] Property known_kinks_slot
Int[] Function Get()
	Return None
EndFunction
EndProperty
int Function GetNumberOfHiddenKinks()
	Return 0
EndFunction
int Function GetMaxTeasedKink()
	Return 0
EndFunction
float Function GetMaxTeasedLevel()
	Return 0.0
EndFunction
string Function GetListOfHiddenKinks()
	Return ""
EndFunction
int Function GetNumberOfKnownKinks()
	Return 0
EndFunction
int Function GetAnyHiddenKink()
	Return 0
EndFunction
string Function GetListOfKnownKinks()
	Return ""
EndFunction
Function ResetKinks()
EndFunction
Function SetHiddenKinksFromFactions()
EndFunction
Function SetKnownKinksFromFactions()
EndFunction
Function SetHiddenKinksFromJSON(int nkinksJSON)
EndFunction
Function SetHiddenKinksRandom()
EndFunction
Function ClearKinks()
EndFunction
Function SetKinks(int nkinksJSON)
EndFunction
Function AddHiddenKink(int the_kink)
EndFunction
Function AddHiddenKinkInSlot(int slot, int kink)
EndFunction
Function AddKnownKink(int the_kink)
EndFunction
Function AddKnownKinkInSlot(int slot, int kink)
EndFunction
bool Function HasHiddenKink(int the_kink)
	Return False
EndFunction
bool Function HasKnownKink(int the_kink)
	Return False
EndFunction
Function CheckAndRegisterKink(int the_kink, float w)
EndFunction
Function RegisterEffectKink(bool has_kink, int the_kink, float w)
EndFunction
Function DiscoverHiddenKink(int the_kink,float w)
EndFunction
Function CheckRestrainedKinks(string the_pose)
EndFunction
int personality_index = -1
float property Sum_HEXACO = 0.0 Auto Hidden
float property Sum_PRISM = 0.0 Auto Hidden
int Function GetPersonalityIndex()
	Return 0
EndFunction
Function UpdatePersonalityIndex()
EndFunction
int Function ComputePersonalityIndex()
	Return 0
EndFunction
Int[] _next_punishment_reason_slot
Int[] Property next_punishment_reason_slot
Int[] Function Get()
	Return None
EndFunction
EndProperty
bool Property whipping_active = false Auto Hidden
int next_punishment_reason_nb = 0
bool Property whipping_by_trainer = false Auto Hidden
bool Property punishing_trainee_or_trainer = false Auto Hidden
int Property whipping_pain_damage = 0 Auto Hidden
int Property cane_pain_damage = 0 Auto Hidden
int Property slap_pain_damage = 0 Auto Hidden
int Property whip_pain_damage = 0 Auto Hidden
int Property whipping_reason = 0 Auto Hidden
string Property whipping_type Auto Hidden
string Property whipping_reason_name = "no reason" Auto Hidden
string Property current_punishment_type Auto Hidden
int Property current_punishment_reason = 0 Auto Hidden
string Property current_punishment_reason_name = "no reason" Auto Hidden
int last_punishment_reason = 0
int __last_toldoff_reason = 0
int Property last_toldoff_reason Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
string last_punishment_reason_name    = "no reason"
int __warn_punishment_reason = 0
int Property warn_punishment_reason Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
string warn_punishment_reason_name    = "no reason"
string last_toldoff_reason_name    = "no reason"
string abuse_type = "physical"
bool force_crying_as_punishment_reason = false
int timer_warned = 0
int reason_warned = -1
int Function WillObeyBecauseWarned(int reason, float modifier = 1.0)
	Return 0
EndFunction
bool Function WillObeyBecausePunished(int reason, float modifier = 1.0)
	Return False
EndFunction
bool Function WillObeyBecauseAbuse(int reason, float modifier = 1.0)
	Return False
EndFunction
bool Function WasWarned(int reason)
	Return False
EndFunction
bool Function WasPunishedFor(int reason)
	Return False
EndFunction
Function ClearLastPunishmentReason()
EndFunction
Function AddNextPunishmentReason(int the_reason)
EndFunction
Function SetPunishmentReasonsFromFactions()
EndFunction
Function AddNextPunishmentReasonInSlot(int slot, int reason)
EndFunction
Function RemoveNextPunishmentReasonInSlot(int slot)
EndFunction
Int Function GetNumberOfNextPunishmentReasons()
	Return 0
EndFunction
String Function GetNextPunishmentReason(int islot)
	Return ""
EndFunction
int Function GetAnyPunishmentReason(string the_reason)
	Return 0
EndFunction
int Function GetNextPunishmentReasonByIndex()
	Return 0
EndFunction
Int Function GetVeryImportantNextPunishmentReason()
	Return 0
EndFunction
Int Function GetMajorNextPunishmentReason()
	Return 0
EndFunction
Int Function GetAnyNextPunishmentReason()
	Return 0
EndFunction
String Function GetNextPunishmentReasons()
	Return ""
EndFunction
Function SetNextPunishmentReasonSilent(int reason)
EndFunction
Function SetNextPunishmentReasonOnceMessage(int reason, String the_message)
EndFunction
Function SetNextPunishmentReasonForceMessage(int reason, String the_message)
EndFunction
bool Function IsPunishingFor(int ireason)
	Return False
EndFunction
bool Function HasNextPunishmentReason(int the_reason)
	Return False
EndFunction
bool Property correct_cover_self = true Auto Hidden
Function RemoveNextPunishmentReason(int old_reason)
EndFunction
string Function GetLastPunishmentReasonString()
	Return ""
EndFunction
string Function GetLastToldOffReasonString()
	Return ""
EndFunction
string Function GetWarnPunishmentReasonString()
	Return ""
EndFunction
Int[] _next_praise_reason_slot
Int[] Property next_praise_reason_slot
Int[] Function Get()
	Return None
EndFunction
EndProperty
int next_praise_reason_nb = 0
int last_praise_reason = 0
string last_praise_reason_name = "no reason"
Function AddNextPraiseReason(int the_reason)
EndFunction
Function SetPraiseReasonsFromFactions()
EndFunction
Function AddNextPraiseReasonInSlot(int slot, int reason)
EndFunction
Function RemoveNextPraiseReasonInSlot(int slot)
EndFunction
Int Function GetNumberOfNextPraiseReasons()
	Return 0
EndFunction
String Function GetNextPraiseReason(int islot)
	Return ""
EndFunction
Function SetNextPraiseReasonSilent(int reason)
EndFunction
Function SetNextPraiseReasonOnceMessage(int reason, String the_message)
EndFunction
int Function GetNextPraiseReasonByIndex()
	Return 0
EndFunction
Int Function GetVeryImportantNextPraiseReason()
	Return 0
EndFunction
Int Function GetMajorNextPraiseReason()
	Return 0
EndFunction
Int Function GetAnyNextPraiseReason()
	Return 0
EndFunction
string Function GetNextPraiseReasons()
	Return ""
EndFunction
bool Function HasNextPraiseReason(int the_reason)
	Return False
EndFunction
Function RemoveNextPraiseReason(int old_reason)
EndFunction
bool Function StartGuilt()
	Return False
EndFunction
bool Function IsComforted()
	Return False
EndFunction
bool Function IsAVirgin()
	Return False
EndFunction
Function StartPricing(Actor akAbuser)
EndFunction
bool Function StartUndressingForced(Actor akAbuser)
	Return False
EndFunction
bool Function StartUndressing(Actor akAbuser)
	Return False
EndFunction
bool Function StartShowering(Actor akAbuser, string wash_type)
	Return False
EndFunction
bool Function StartBathMe(Actor akAbuser, string wash_type)
	Return False
EndFunction
int Function StartComfortingWith(Actor akAbuser, string type)
	Return 0
EndFunction
string Function GetBestFlatter()
	Return ""
EndFunction
bool Function StartFlatteringWith(Actor akAbuser, string type)
	Return False
EndFunction
int Function GetMinimalTraining()
	Return 0
EndFunction
string Function GetBestInsult()
	Return ""
EndFunction
bool Function StartInsultingWith(Actor akAbuser, string type)
	Return False
EndFunction
bool Function StartInsultCrying()
	Return False
EndFunction
bool Function StartThreatening(Actor akAbuser, string the_reason)
	Return False
EndFunction
Function StartChattingPersonality(Actor akAbuser, Faction contrl_faction, int itrait, Float base_amount)
EndFunction
Function StartChattingFeelings(Actor akAbuser, Faction contrl_faction, int itrait, Float base_amount)
EndFunction
bool Function StartScolding(Actor akAbuser, string the_reason)
	Return False
EndFunction
bool Function StartPraising(Actor akAbuser, string the_reason, string type)
	Return False
EndFunction
bool Function StartPunishing(Actor akAbuser, string the_reason, string type)
	Return False
EndFunction
bool Function StartPunishingByIndex(Actor akAbuser, int ireason, string type)
	Return False
EndFunction
Function EndPunishing(Actor akAbuser, string type)
EndFunction
Float[] _before_training
Float[] Property before_training
Float[] Function Get()
	Return None
EndFunction
EndProperty
Function PrintTrainingBefore(string type, Float severity, string reason)
EndFunction
Function PrintTrainingAfter(string type, Float severity, string reason)
EndFunction
float anger_factor = 0.0
Function TrainAfterPunished(Actor akAbuser, Float severity, int reason, string type)
EndFunction
Function TrainAfterScold(Actor akAbuser, float amount, int reason)
EndFunction
bool Function TrainAfterPraise(float amount, int praise_reason, string type)
	Return False
EndFunction
Function TrainAfterShock()
EndFunction
Function TrainForWeather(int weatherType)
EndFunction
bool Function WillNotTalk()
	Return False
EndFunction
bool Function WillTalkAboutFeelingsOrEmotions()
	Return False
EndFunction
bool Function WillTalkSpontaneously()
	Return False
EndFunction
bool Function WillTalkForFriend()
	Return False
EndFunction
bool Function WillTalkForWeather()
	Return False
EndFunction
bool Function WillTalkForRival()
	Return False
EndFunction
bool Function WillTalkUnderPain()
	Return False
EndFunction
int Function GetPainTopicSubject()
	Return 0
EndFunction
int Function GetFriendTopicSubject()
	Return 0
EndFunction
int Function GetRivalTopicSubject()
	Return 0
EndFunction
int Function GetMainEmotion()
	Return 0
EndFunction
Function CheckPotentialSlaverFaction()
EndFunction
Function SetDefaultTraits(float[] TraitsArray)
EndFunction
Function SetBaseTraits(float[] TraitsArray)
EndFunction
Function SetVirginStatus(int[] vstatus)
EndFunction
Function SendNotification(string msg)
EndFunction
Function SendNotificationFriends(string msg)
EndFunction
Function SendNotificationAction(string msg)
EndFunction
Function SendNotificationEmotion(string msg)
EndFunction
Function SendNotificationAbuse(string msg)
EndFunction
Function SendNotificationAbuseForReason(string msg, string reason)
EndFunction
Function SendNotificationOrder(string msg)
EndFunction
Function SendNotificationMaster(string msg1, string msg2)
EndFunction
Function SendNotificationActionMaster(string msg1, string msg2)
EndFunction
Function SendNotificationOrderMaster(string msg1, string msg2)
EndFunction
Function DegradeRelationship()
EndFunction
Function SetExpression(int iexp, int amount)
EndFunction
Function ClearExpression()
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
