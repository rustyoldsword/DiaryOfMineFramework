Scriptname DOM_Core extends Quest Conditional
Import Utility
Import DOM_Util
Import DOM_EquipUtil
string DOMVersionStr = "8.4.0"
DOM_PlayerAlias Property DOMPlayerAlias Auto
DOM_API Property DOMAPI Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAZ Property DOMZaz Auto
DOM_ZAD Property DOMZad Auto
DOM_SEXLAB Property DOMSexlab Auto
DOM_Bathing Property DOMBath Auto
DOM_Equip Property DOMEquip Auto
DOM_Ostim Property DOMOstim Auto
DOM_Animator Property DOM_Anim Auto
DOM_Generator Property DOMGenerator Auto
DOM_SlaverManager Property DOM01 Auto
DOM_SlaveManager Property DOM02 Auto
aygasCoreScript Property AYGASCore Auto Hidden
int Property nDOMExtraMng = 0 Auto Hidden
DOM_SlaveManager[] __DOMExtraMng
DOM_SlaveManager[] Property DOMExtraMng Hidden
DOM_SlaveManager[] Function Get()
	Return None
EndFunction
EndProperty
GlobalVariable Property DOM_NumberOfExtraMng Auto
GlobalVariable Property DOM_HasHSH Auto
GlobalVariable Property DOM_HasAYGAS Auto
DOM_Diary Property DOM04 Auto
DOM_Keys Property DOMKeys Auto
DOM_MCM Property DOMConfig Auto
PHHSHFlexiStorage Property HSHFlexi Auto Hidden
PHHSHStorageFunctions Property HSHStorage Auto Hidden
PAHOCore Property PAHO Auto Hidden
pahscCoreScript Property PAHSCCore Auto Hidden
Actor Property PlayerRef Auto
ReferenceAlias Property fSlave Auto
ReferenceAlias Property fFamily Auto
Message Property DOMFamilyPayMessage Auto
Message Property DOMFamilyRansomMessage Auto
MiscObject Property Gold001 Auto
Perk Property DOMEnslavePerk Auto
Perk Property DOMRecruitPerk Auto
Perk Property DOMWakeupPerk Auto
Perk Property DOMBurlapSackPerk Auto
Keyword Property FurnitureWoodChoppingBlock Auto
Keyword Property CraftingSmithingForge Auto
Keyword Property CraftingSmithingSkyForge Auto
Keyword Property CraftingSmithingArmorTable Auto
Keyword Property CraftingSmithingSharpeningWheel Auto
Keyword Property CraftingCookPot Auto
Keyword Property CraftingTanningRack Auto
Keyword Property CraftingSmelter Auto
Keyword Property CraftingBewitchingBench Auto
Keyword Property WICraftingAlchemy Auto
Keyword Property WICraftingEnchanting Auto
Faction Property DunPlayerAllyFaction Auto
Faction Property MarriageExcludedFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property PotentialFollowerFaction Auto
Faction Property CurrentFollowerFaction Auto
Faction Property CurrentHireling Auto
Faction Property MQ201PartyGuestUnhappy Auto
Faction Property DLC1ThrallFaction Auto
Faction Property dunPrisonerFaction Auto
Faction Property BardAudienceExcludedFaction Auto
Faction Property WINeverFillAliasesFaction Auto
Faction Property pTweakWaitingFaction Auto Hidden
Faction Property PlayerFaction Auto
Faction Property WEPlayerEnemy Auto
Faction Property AygasSlaveTypeFaction Auto Hidden
Faction Property AygasIgnore Auto Hidden
Faction Property HshHouseSlaveFaction Auto Hidden
Faction Property HshNPCSlaveFaction Auto Hidden
Faction Property HydraSlaveFaction Auto Hidden
Faction Property VanillaBanditsSlaveFaction Auto Hidden
Faction Property VanillaBanditsExSlaveFaction Auto Hidden
Faction Property TravellingWenchesFaction Auto Hidden
Faction Property TravellingWenchesServantFaction Auto Hidden
Faction Property TravellingWenchesPatrolFaction Auto Hidden
Faction Property TravellingWenchesJudgementFaction Auto Hidden
Faction Property TravellingWenchesCollectedFaction Auto Hidden
Faction Property OBISFaction Auto Hidden
Ingredient Property ObisGlowingPearl Auto Hidden
MagicEffect Property DOMHoseAimed Auto
MagicEffect Property DOMHoseProjectile Auto
Spell Property DOMAbductionSpell Auto
Spell Property DOMDiarySpell Auto
Spell Property DOMMenuSpell Auto
Spell Property DOMMenuPower Auto
Spell Property DOMInfoPower Auto
Spell Property DOMInfoSpell Auto
Spell Property DOMLeashSpell Auto
Form  Property DOMLeashPoint Auto
Faction Property DOMNameChangedFaction Auto
Faction Property DOMActorGender Auto
Faction Property DOMActorOwnerGender Auto
Faction Property DOMTrainSex Auto
Faction Property DOMTrainAnal Auto
Faction Property DOMTrainOral Auto
Faction Property DOMTrainVaginal Auto
Faction Property DOMActorAlreadyCleaned Auto
Faction Property DOMActorInTransfer Auto
Faction Property DOMActorHasTatsMarks Auto
Faction Property DOMActorHasTatsBrand Auto
Faction Property DOMRandomSeed Auto
Faction Property DOMIsLeashed Auto
Faction Property DOMDrunkLevel Auto
Faction Property DOMDruggedLevel Auto
Faction Property DOMIsLoveInterest Auto
Faction Property DOMHasPersonality Auto
Cell Property AAADOMTestTony Auto
ObjectReference Property DOMTonyMarker Auto
Spell Property AbPOIFrozenCorpse Auto
Sound Property SlapMoan Auto
Sound Property SlapGagged Auto
Potion Property DOMLovePotion Auto
Potion Property DOMBrokenPotion Auto
Potion Property DOMLustPotion Auto
Potion Property DOMPainPotion Auto
Potion Property Skooma Auto
Potion Property WindhelmDoubleDistilledSkooma Auto
Potion Property FreeformAngasMillKordirsSkooma Auto
Potion Property dunSleepingTreeCampSap Auto
Potion Property TGTQ02BalmoraBlue Auto
Potion Property DLC1RedwaterDenSkooma Auto
Form Property DOMBurlapSack Auto
Form Property XMarkerForm Auto
Keyword Property LocTypeJail Auto
Keyword Property LocTypeDungeon Auto
Keyword Property LocTypeMine Auto
Keyword Property LocTypeCave Auto
Keyword Property LocTypeCemetery Auto
Keyword Property LocTypeCity Auto
Keyword Property LocTypeTown Auto
Keyword Property LocTypeDwelling Auto
Keyword Property LocTypeStewardsDwelling Auto
Keyword Property LocTypeInn Auto
Keyword Property LocTypeCastle Auto
Keyword Property LocTypePlayerHouse Auto
Keyword Property LocTypeMilitaryFort Auto
Keyword Property LocTypeMilitaryCamp Auto
Keyword Property CWPrisonerMarker1 Auto
Keyword Property CWPrisonerMarker2 Auto
Keyword Property CWPrisonerMarker3 Auto
Keyword Property CWPrisonerMarker4 Auto
Keyword Property IsBeastRace Auto
Keyword Property ActorTypeNPC Auto
Keyword Property ActorTypeCreature Auto
Keyword Property ActorTypeUndead Auto
Keyword Property ActorTypeAnimal Auto
Keyword Property Vampire Auto
KeyWord Property MagicDamageWater Auto Hidden
KeyWord Property MagicWater Auto
Keyword Property BodyBag Auto
Keyword Property DOMLeash Auto
VoiceType Property MaleNord Auto
VoiceType Property FemaleNord Auto
Idle Property IdleKneelingEnter Auto
Idle Property pa_HugA Auto
Idle Property IdleOffsetArmsCrossedStart Auto
Idle Property BleedOutStop Auto
Idle Property IdleStop_Loose Auto
Idle Property IdleForceDefaultState Auto
Idle Property staggerStart Auto
Idle Property IdleDrunkStart Auto
Idle Property IdleDrunkStop Auto
Idle Property IdleDialogueDefensiveHandGesture Auto
Idle Property IdleWarmArms Auto
Idle Property IdleCivilWarCheer Auto
Idle Property attackStart Auto
Idle Property ExitBed Auto
Idle Property ExitChairFront Auto
Idle Property IdleNervous Auto
Idle Property IdleCoweringLoose Auto
Idle Property IdleChildCryingStart Auto
Idle Property IdleSilentBow Auto
Idle Property IdleWipeBrow Auto
Idle Property pa_OffsetBoundStandingCut  Auto
Idle Property offsetBoundStandingPlayerInstant  Auto
Idle Property offsetBoundStandingStart  Auto
Idle Property OffsetStop  Auto
Weapon Property DOMSlap Auto
Furniture Property DOMFurniStraddle Auto
Furniture Property DOMFurniChair Auto
Formlist Property AlcoholicDrinksExtendedList Auto
Keyword Property NoModestyKeyword Auto Hidden
bool Property newActorMessageToggle = true Auto Hidden
bool Property playerExpressionToggle = false Auto Hidden
bool Property playerApplyTears = false Auto Hidden
bool Property playerApplyBlush = false Auto Hidden
bool Property playerApplyDrool = false Auto Hidden
bool Property hugWhenFreedToggle = true Auto Hidden
bool Property checkInteriorPosesToggle = true Auto Hidden
bool Property doAnimBeforeAndAfterSex = true Auto Hidden
bool Property doAnimPlayerTieup = true Auto Hidden
bool Property renameToggle = true Auto Hidden
bool Property VampireCattleToggle = true Auto Hidden
bool Property wheelsUseVerboseMessage = true Auto Hidden
bool Property dialoguesUseVerboseMessage = false Auto Hidden
bool Property UpdateCombatStrength = true Auto Hidden
bool Property SetEssentialToggle = false Auto Hidden
bool Property RemoveEssentialToggle = false Auto Hidden
bool Property GroupChoiceRandom = true Auto Hidden
bool Property GroupChoicePose = true Auto Hidden
bool Property StartupCheckActor = false Auto Hidden
bool Property StartupSyncTattoos = false Auto Hidden
bool Property CaptureSyncTattoos = true Auto Hidden
bool Property setTransferNodeToggle = true Auto Hidden
bool Property setOBodyPresetToggleF = true Auto Hidden
bool Property setOBodyPresetToggleM = false Auto Hidden
bool Property cryingPunishmentToggle = true Auto Hidden
bool Property cryingPraiseToggle = true Auto Hidden
bool Property RandomFlat = false Auto Hidden
bool Property summonPAHToggle = false Auto Hidden
bool Property summonPosingToggle = false Auto Hidden
bool Property seedUniques = false Auto Hidden
bool Property sendDOMOrders = true Auto Hidden
bool Property sendDOMCaptureEvent = true Auto Hidden
bool Property sendDOMEvents = true Auto Hidden
bool Property sendDOMExternalEventToggle = false Auto Hidden
bool Property sendDOMExternalEventToggleExt = false Auto Hidden
bool Property sendDOMExternalEventToggleExt2 = false Auto Hidden
bool Property sendDOMExternalEventToggleExt3 = false Auto Hidden
bool Property showKinksToggle = false Auto Hidden
bool Property friendsPlayerToggle = true Auto Hidden
bool Property kinksPlayerSubToggle = false Auto Hidden
bool Property kinksPlayerDomToggle = true Auto Hidden
bool Property hasAbductionSpell = true Auto Hidden
bool Property hasDiarySpell = true Auto Hidden
bool Property hasMenuSpell = true Auto Hidden
bool Property hasMenuPower = true Auto Hidden
bool Property hasInfoSpell = true Auto Hidden
bool Property hasInfoPower = true Auto Hidden
bool Property hasAbductionPerk = true Auto Hidden
bool Property hasWakeUpPerk = true Auto Hidden
bool Property hasBurlapSackPerk = true Auto Hidden
bool Property hasRecruitPerk = true Auto Hidden
bool Property hasSlapTool = true Auto Hidden
bool Property debugMode = true Auto Hidden
bool Property verboseMode = false Auto Hidden
bool Property verboseTopics = false Auto Hidden
bool Property verboseAnim = false Auto Hidden
bool Property doPlayerIdle = true Auto Hidden
bool Property dualAnimToggle  = true Auto Hidden
bool Property poseMoveToggle  = false Auto Hidden
bool Property rivalryToggle = true Auto Hidden
bool Property greedToggle = true Auto Hidden
bool Property answerToggle = true Auto Hidden
bool Property topicsToggle = true Auto Hidden
bool Property virginOToggle = true Auto Hidden
bool Property virginAToggle = true Auto Hidden
bool Property virginVToggle = true Auto Hidden
bool Property virginSToggle = true Auto Hidden
bool Property virginGToggle = true Auto Hidden
bool Property staticTraitsMode = false Auto Hidden
bool Property staticTraitsChat = false Auto Hidden
bool Property randomReactionToggle = false Auto Hidden
bool Property alarmToggleRunaway = true Auto Hidden
bool Property oppositeSexToggle = true Auto Hidden
bool Property sameSexToggle = false Auto Hidden
bool Property wMessageToggle = true Auto Hidden
bool Property wMessageLevel0 = true Auto Hidden
bool Property wMessageLevel1 = true Auto Hidden
bool Property wMessageLevel2 = true Auto Hidden
bool Property wMessageLevel3 = true Auto Hidden
bool Property wMessageLevel4 = true Auto Hidden
bool Property wMessageLevel5 = true Auto Hidden
bool Property cloneUniqueMode = false Auto Hidden
bool Property cleanFactionUnique = false Auto Hidden
bool Property cleanExtraFaction = false Auto Hidden
bool Property cleanFactionSpawn = false Auto Hidden
bool Property cleanCrimeFaction = false Auto Hidden
bool Property salutePoseOn = false Auto Hidden
bool Property attentionPoseOn = false Auto Hidden
bool Property kneelPoseOn = false Auto Hidden
bool Property friendToggle = true Auto Hidden
bool Property friendPlayerToggle = true Auto Hidden
bool Property friendDistantToggle = true Auto Hidden
bool Property friendFollowToggle = true Auto Hidden
bool Property familyToggle = true Auto Hidden
bool Property removeGagToggle = false Auto Hidden
bool Property removeCuffsToggle = false Auto Hidden
bool Property removeBlindfoldToggle = false Auto Hidden
bool Property blushFToggle = true Auto Hidden
bool Property tearsFToggle = true Auto Hidden
bool Property masctFToggle = true Auto Hidden
bool Property blushMToggle = true Auto Hidden
bool Property tearsMToggle = true Auto Hidden
bool Property masctMToggle = false Auto Hidden
bool Property resilienceToggle = false Auto Hidden
bool Property loyalToggle = true Auto Hidden
bool Property inloveToggle = true Auto Hidden
bool Property depressedToggle = true Auto Hidden
bool Property insecureToggle = true Auto Hidden
bool Property jealousyToggle = true Auto Hidden
bool Property weaponsFToggle = true Auto Hidden
bool Property weaponsMToggle = true Auto Hidden
bool Property weaponsBToggle = true Auto Hidden
bool Property weaponsOToggle = true Auto Hidden
bool Property cloneSpawnMode = true Auto Hidden
bool Property fHitToggle = true Auto Hidden
bool Property sHitToggle = true Auto Hidden
bool Property escapeToggle = true Auto Hidden
bool Property callForHelpToggle = true Auto Hidden
bool Property runawayToggle = true Auto Hidden
bool Property cleanDeleteToggle = true Auto Hidden
bool Property cleanWeaponsToggle = true Auto Hidden
bool Property cleanArmorsToggle = true Auto Hidden
bool Property cleanAmmoToggle = true Auto Hidden
bool Property cleanBooksToggle = true Auto Hidden
bool Property cleanScrollsToggle = true Auto Hidden
bool Property singleTellToggle = true Auto Hidden
bool Property travelCuffsToggle = true Auto Hidden
bool Property punishPoseToggle = true Auto Hidden
bool Property punishTieToggle = true Auto Hidden
bool Property punishRestrainToggle = true Auto Hidden
bool Property punishMasturbateToggle = true Auto Hidden
bool Property trainSexlabValuesToggle = false Auto Hidden
bool Property readSexlabValuesToggle = false Auto Hidden
int Property defaultWaitMode = 3 Auto Hidden
int Property defaultFollowMode = 2 Auto Hidden
int Property delayTopic = 10 Auto Hidden
int Property delayTopicGlobal = 10 Auto Hidden
int Property actorRegenTicks = 1 Auto Hidden
int Property MaxNumberOfFriends = 5 Auto Hidden
float Property chanceRunAwayMultiplier = 1.0 Auto Hidden
float Property abuseReactionThreshold = 0.5 Auto Hidden
float Property actorUpdateTimer = 3.0 Auto Hidden
float Property actorUpdateTimerGlobal = 1.0 Auto Hidden
float Property runAwayValue = 60.0 Auto Hidden
float Property deleteActorThreshold = 10.0 Auto Hidden
float Property actorRegenAmount = 5.0 Auto Hidden
float Property arousal_speed_kink  = 1.0 Auto Hidden
float Property orgasm_speed_kink  = 1.0 Auto Hidden
float Property train_speed_kink  = 1.0 Auto Hidden
float Property train_speed_love  = 0.25 Auto Hidden
float Property train_speed_arousal  = 0.50 Auto Hidden
float Property train_speed_orgasm  = 0.25 Auto Hidden
float Property train_speed_npc  = 1.0 Auto Hidden
float Property train_speed_player  = 1.2 Auto Hidden
float Property train_speed_pain = 100.0 Auto Hidden
float Property train_speed_sex  = 100.0 Auto Hidden
float Property train_speed_rape = 100.0 Auto Hidden
float Property train_speed_tell = 100.0 Auto Hidden
float Property train_speed_good = 100.0 Auto Hidden
float Property trait_race_bonus = 1.0 Auto Hidden
float Property trait_gender_bonus = 1.0 Auto Hidden
float Property trait_age_bonus = 1.0 Auto Hidden
float Property trait_job_bonus = 1.0 Auto Hidden
float Property trait_class_bonus = 1.0 Auto Hidden
float Property trait_place_bonus = 1.0 Auto Hidden
Float Property trait_variation = 25.0 Auto Hidden
Float Property anim_speed_sec = 1.0 Auto Hidden
Float Property friend_threshold = 0.60 Auto Hidden
Float Property wealth_modifier = 10.0 Auto Hidden
Float Property pose_threshold = 0.04 Auto Hidden
Int Property is_dialogue_global_blocked_for = 1 Auto Hidden
Int Property is_weather_dialogue_global_blocked_for = 1 Auto Hidden
bool Property ActionFlag = false Auto Hidden
bool Property ActionGroup = false Auto Hidden
string Property ActionName = "flatter" Auto Hidden
string Property ActionType = "sexy" Auto Hidden
string Property attentionPose = "ZapKneelDisplay" Auto Hidden
string Property salutePose = "IdleHandsBehindBack" Auto Hidden
string Property kneelPose = "ZapLickFeet" Auto Hidden
string Property spellPose1 = "IdleForceDefaultState" Auto Hidden
string Property spellPose2 = "BleedOutStart" Auto Hidden
string Property DefaultPraiseType = "tell" Auto Hidden ; "tell", "pat head", "grope ass", "pat cheek", "hold chin", "kiss", "kiss short", "kiss side"
string Property DefaultPunishmentType = "pain" Auto Hidden ; "pain", "rape", "scold", "public humiliation", "choke", "spank", "slap boobs", "slap face"
string Property DefaultWheelPraiseType = "tell" Auto Hidden ; "tell", "pat head", "grope ass", "pat cheek", "hold chin", "kiss", "kiss short", "kiss side"
string Property DefaultWheelPunishmentType = "scold" Auto Hidden ; "pain", "rape", "scold", "public humiliation", "choke", "spank", "slap boobs", "slap face"
string Property marks_maid_name = "Maid Left cheek" Auto Hidden
string Property marks_maid_file = "DOMMarks\\left_cheek_maid.dds" Auto Hidden
string Property marks_maid_area  = "Face" Auto Hidden
string Property marks_miner_name = "Miner Left cheek" Auto Hidden
string Property marks_miner_file = "DOMMarks\\left_cheek_miner.dds" Auto Hidden
string Property marks_miner_area  = "Face" Auto Hidden
string Property marks_name = "DOM Forehead" Auto Hidden
string Property marks_file = "DOMMarks\\forehead_DOM.dds" Auto Hidden
string Property brand_section = "DoMStatus" Auto Hidden
string Property marks_section = "DOMMarks" Auto Hidden
string Property brand_area  = "Body" Auto Hidden
string Property marks_area  = "Face" Auto Hidden
int    Property brand_color = 0x444544 Auto Hidden
int    Property marks_color = 0x000000 Auto Hidden
int    Property brand_glow  = 0x000000 Auto Hidden
int    Property marks_glow  = 0x000000 Auto Hidden
bool   Property brand_gloss = false Auto Hidden
bool   Property marks_gloss = false Auto Hidden
bool   Property brand_glow_status = true Auto Hidden
bool   Property marks_glow_status = false Auto Hidden
Int Property number_of_widgets = 8 Auto Hidden
DOM_MessageWidget[] Property MessageWidgets Auto
Faction Property DOMIsWalkingOnFour Auto
Faction Property DOMIsRespectful Auto
Faction Property DOMShouldWalkOnFour Auto
Faction Property DOMShouldBeRespectful Auto
Faction Property DOMShouldFightForPlayer Auto
Faction Property DOMShouldBeNaked Auto
Faction Property DOMShouldWearArmor Auto
Faction Property DOMShouldHoldWeapons Auto
Faction Property DOMShouldBeNoOrgasm Auto
Faction Property DOMShouldBeSilent Auto
Faction Property DOMActorFaction Auto
Faction Property DOMNotPlayerSlaveFaction Auto
Faction Property DOMNotPlayerSlaverFaction Auto
Faction Property DOMPlayerSlaveFaction Auto
Faction Property DOMPlayerSlaverFaction Auto
Faction Property DOMHistoryFaction Auto
Faction Property DOMActorFamilyHistory Auto
Faction Property DOMActorFamilyReunited Auto
Faction Property DOMSlaveManagerFaction Auto
Faction Property DOMActorIndexFaction Auto
Faction Property DOMAliasIndexFaction Auto
Faction Property DOMSexlabLoadSlave Auto
Faction Property DOMHiddenKink0 Auto
Faction Property DOMHiddenKink1 Auto
Faction Property DOMHiddenKink2 Auto
Faction Property DOMHiddenKink3 Auto
Faction Property DOMHiddenKink4 Auto
Faction Property DOMHiddenKink5 Auto
Faction Property DOMHiddenKink6 Auto
Faction Property DOMHiddenKink7 Auto
Faction Property DOMKnownKink0 Auto
Faction Property DOMKnownKink1 Auto
Faction Property DOMKnownKink2 Auto
Faction Property DOMKnownKink3 Auto
Faction Property DOMKnownKink4 Auto
Faction Property DOMKnownKink5 Auto
Faction Property DOMKnownKink6 Auto
Faction Property DOMKnownKink7 Auto
Faction Property DOMPunishmentReason0 Auto
Faction Property DOMPunishmentReason1 Auto
Faction Property DOMPunishmentReason2 Auto
Faction Property DOMPunishmentReason3 Auto
Faction Property DOMPunishmentReason4 Auto
Faction Property DOMPunishmentReason5 Auto
Faction Property DOMPunishmentReason6 Auto
Faction Property DOMPunishmentReason7 Auto
Faction Property DOMPraiseReason0 Auto
Faction Property DOMPraiseReason1 Auto
Faction Property DOMPraiseReason2 Auto
Faction Property DOMPraiseReason3 Auto
Faction Property DOMPraiseReason4 Auto
Faction Property DOMPraiseReason5 Auto
Faction Property DOMPraiseReason6 Auto
Faction Property DOMPraiseReason7 Auto
Faction Property DOMActorHasHSHCell Auto
Faction Property DOMActorExcludedFaction Auto
Faction Property DOMActorExcludedDialogue Auto
Faction Property DOMActorRivalIsVictim Auto
Faction Property DOMActorFriendIsVictim Auto
Faction Property DOMActorIsVictim Auto
Faction Property DOMBeingCaptured Auto
Faction Property DOMNoCloneFaction Auto
Faction Property DOMNoCleanFaction Auto
Faction Property DOMNoCleanCrimeFaction Auto
Faction Property DOMFollowMode Auto
Faction Property DOMWaitMode Auto
Faction Property DOMTravelMode Auto
Faction Property DOMWorkMode Auto
Faction Property DOMJailMode Auto
Faction Property DOMAnimatingFaction Auto
Faction Property DOMPotentialSlaverFaction Auto
Faction Property DOMPlayerEnemyFaction Auto
Faction Property DOMTobeComfortedFaction Auto
Faction Property DOMDirtiness Auto
Faction Property DOMHasWeapon Auto
Faction Property DOMHasArmor Auto
Faction Property DOMHasBodyArmor Auto
Faction Property DOMHasShield Auto
Faction Property DOMHasJewelry Auto
Faction Property DOMIsNaked Auto
Faction Property DOMPromised Auto
Faction Property DOMToBeSacrificed Auto
Faction Property DOMSlaverHasCamp Auto
Faction Property DOMTraineeCount Auto
Faction Property DOMSlaveHasTrainer Auto
Faction Property DOMSlaverLoadSlave Auto
Faction Property DOMVirginVaginal Auto
Faction Property DOMVirginAnal Auto
Faction Property DOMVirginOral Auto
Faction Property DOMVirginSame Auto
Faction Property DOMVirginGangbang Auto
Package Property DOMFollowPlayerAndWait Auto
Package Property DOMFamilyForceGreet Auto
Faction Property DOMActionFighting Auto
Faction Property DOMActionFleeing Auto
Faction Property DOMActionFollowing Auto
Faction Property DOMActionGuard Auto
Faction Property DOMActionKneeling Auto
Faction Property DOMActionMasturbating Auto
Faction Property DOMActionPosing Auto
Faction Property DOMActionPunishing Auto
Faction Property DOMActionTraining Auto
Faction Property DOMActionSweeping Auto
Faction Property DOMActionWorking Auto
Faction Property DOMActionTied Auto
Faction Property DOMActionTravel Auto
Faction Property DOMActionWaiting Auto
Faction Property DOMActionInContainer Auto
Faction Property DOMActionOnDuty Auto
Faction Property DOMActionJailed Auto
Faction Property DOMFailedToFight Auto
Faction Property DOMFailedToPose Auto
Faction Property DOMTraitHonesty Auto
Faction Property DOMTraitEmotionality Auto
Faction Property DOMTraitExtraversion Auto
Faction Property DOMTraitAgreeableness Auto
Faction Property DOMTraitConscientiousness Auto
Faction Property DOMTraitOpenness Auto
Faction Property DOMFacetBoldness Auto
Faction Property DOMFacetWilfulness Auto
Faction Property DOMFacetSmartness Auto
Faction Property DOMFacetSensuality Auto
Faction Property DOMFacetToughness Auto
Faction Property DOMFacetSubmissivity Auto
Faction Property DOMSkillEnforcer Auto
Faction Property DOMSkillPersuader Auto
Faction Property DOMSkillDepraver Auto
Faction Property DOMSkillPredator Auto
Faction Property DOMSkillSlaver Auto
Faction Property DOMSkillDeceiver Auto
Faction Property DOMMoodJustCaptured Auto
Faction Property DOMMoodNeutral Auto
Faction Property DOMMoodAngry Auto
Faction Property DOMMoodAfraid Auto
Faction Property DOMMoodHappy Auto
Faction Property DOMMoodAshamed Auto
Faction Property DOMMoodSad Auto
Faction Property DOMMoodShock Auto
Faction Property DOMMoodBroken Auto
Faction Property DOMMoodLoyal Auto
Faction Property DOMMoodInlove Auto
Faction Property DOMLoveDesire Auto
Faction Property DOMLoyalWorship Auto
Faction Property DOMLoveFascination Auto
Faction Property DOMLoyalAbsolution Auto
Faction Property DOMLoyalDevotion Auto
Faction Property DOMLoveAdmiration Auto
Faction Property DOMControlPersonalityDialogue1 Auto
Faction Property DOMControlPersonalityDialogue2 Auto
Faction Property DOMControlPersonalityDialogue3 Auto
Faction Property DOMControlPersonalityDialogue4 Auto
Faction Property DOMControlFeelingsDialogue1 Auto
Faction Property DOMControlFeelingsDialogue2 Auto
Faction Property DOMControlFeelingsDialogue3 Auto
Faction Property DOMControlFeelingsDialogue4 Auto
Faction Property DOMControlModifiersDialogue1 Auto
Faction Property DOMControlModifiersDialogue2 Auto
Faction Property DOMTrainSubmission Auto
Faction Property DOMTrainFear Auto
Faction Property DOMTrainHumiliation Auto
Faction Property DOMTrainAnger Auto
Faction Property DOMTrainResignation Auto
Faction Property DOMTrainRespect Auto
Faction Property DOMTrainCombat Auto
Faction Property DOMTrainPose Auto
Faction Property DOMTrainHouse Auto
Faction Property DOMTrainWorking Auto
Faction Property DOMTraumaInDays Auto
Faction Property DOMTraumaInMonths Auto
Faction Property DOMTraumaInYears Auto
Faction Property DOMEnslavedInDays Auto
Faction Property DOMEnslavedInMonths Auto
Faction Property DOMEnslavedInYears Auto
Faction Property DOMNbSexualExperiences Auto
Faction Property DOMNbBrainWashed Auto
Faction Property DOMNbBroken Auto
Faction Property DOMNbComfort Auto
Faction Property DOMNbFlatter Auto
Faction Property DOMNbInsult Auto
Faction Property DOMNbOrgasm Auto
Faction Property DOMNbBondage Auto
Faction Property DOMNbPain Auto
Faction Property DOMNbPraise Auto
Faction Property DOMNbPromise Auto
Faction Property DOMNbRape Auto
Faction Property DOMNbDrug Auto
Faction Property DOMNbSex Auto
Faction Property DOMNbSexWithOthers Auto
Faction Property DOMNbSexForMoney Auto
Faction Property DOMNbKinkTrigger Auto
Faction Property DOMNbShame Auto
Faction Property DOMNbShock Auto
Faction Property DOMNbThreat Auto
Faction Property DOMNbToldoff Auto
Faction Property DOMNbChatFeelings Auto
Faction Property DOMNbChatPersonality Auto
Faction Property DOMNbTrainee Auto
Faction Property DOMNbTrainer Auto
Faction Property DOMNbRecruitedSlavers Auto
Faction Property DOMNbRansomedSlaves Auto
Faction Property DOMNbCapturedSlaves Auto
Faction Property DOMNbBrokenSlaves Auto
Faction Property DOMNbSoldSlaves Auto
Faction Property DOMNbRapedSlaves Auto
Faction Property DOMNbWhoredSlaves Auto
Faction Property DOMNbPlayerFling Auto
Faction Property DOMNbPlayerChat Auto
Topic Property DOM02TopicAnswerSwingWeaponRespectful Auto
Topic Property DOM02TopicAnswerIdleRespectful Auto
Topic Property DOM02TopicAnswerHelloRespectful Auto
Topic Property DOM02TopicAnswerGoodbyeRespectful Auto
Topic Property DOM02TopicAnswerCollideRespectful Auto
Topic Property DOM02TopicAnswerYesRespectful Auto
Topic Property DOM02TopicAnswerNoRespectful Auto
Topic Property DOM02TopicAnswerSorryRespectful Auto
Topic Property DOM02TopicAnswerThanksRespectful Auto
Topic Property DOM02TopicAnswerWhatRespectful Auto
Topic Property DOM02TopicAnswerValueRespectful Auto
Topic Property DOM02TopicAnswerStripRespectful Auto
Topic Property DOM02TopicAnswerBadRespectful Auto
Topic Property DOM02TopicAnswerNewPromiseRespectful Auto
Topic Property DOM02TopicAnswerKeptPromiseRespectful Auto
Topic Property DOM02TopicAnswerFailedPromiseRespectful Auto
Topic Property DOM02TopicAnswerSwingWeapon Auto
Topic Property DOM02TopicAnswerIdle Auto
Topic Property DOM02TopicAnswerHello Auto
Topic Property DOM02TopicAnswerGoodbye Auto
Topic Property DOM02TopicAnswerCollide Auto
Topic Property DOM02TopicAnswerYes Auto
Topic Property DOM02TopicAnswerNo Auto
Topic Property DOM02TopicAnswerSorry Auto
Topic Property DOM02TopicAnswerThanks Auto
Topic Property DOM02TopicAnswerWhat Auto
Topic Property DOM02TopicAnswerValue Auto
Topic Property DOM02TopicAnswerStrip Auto
Topic Property DOM02TopicAnswerBad Auto
Topic Property DOM02TopicAnswerNewPromise Auto
Topic Property DOM02TopicAnswerKeptPromise Auto
Topic Property DOM02TopicAnswerFailedPromise Auto
Topic Property DOM02TopicAnswerAttack Auto
Topic Property DOM02TopicAnswerHelp Auto
Topic Property DOM02TopicAnswerOrgasm Auto
Topic Property DOM02TopicAnswerAroused Auto
Topic Property DOM02TopicAnswerTouchBase Auto
Topic Property DOM02TopicAnswerTouchButt Auto
Topic Property DOM02TopicAnswerTouchBreast Auto
Topic Property DOM02TopicAnswerTouchBegin Auto
Topic Property DOM02TopicAnswerTouchNeck Auto
Topic Property DOM02TopicAnswerMoodAngryRespectful Auto
Topic Property DOM02TopicAnswerMoodAfraidRespectful Auto
Topic Property DOM02TopicAnswerMoodTerrorRespectful Auto
Topic Property DOM02TopicAnswerMoodScaredRespectful Auto
Topic Property DOM02TopicAnswerMoodAshamedRespectful Auto
Topic Property DOM02TopicAnswerMoodSadRespectful Auto
Topic Property DOM02TopicAnswerMoodShockedRespectful Auto
Topic Property DOM02TopicAnswerMoodBrokenRespectful Auto
Topic Property DOM02TopicAnswerMoodLoyalRespectful Auto
Topic Property DOM02TopicAnswerMoodAngry Auto
Topic Property DOM02TopicAnswerMoodAfraid Auto
Topic Property DOM02TopicAnswerMoodTerror Auto
Topic Property DOM02TopicAnswerMoodScared Auto
Topic Property DOM02TopicAnswerMoodAshamed Auto
Topic Property DOM02TopicAnswerMoodSad Auto
Topic Property DOM02TopicAnswerMoodShocked Auto
Topic Property DOM02TopicAnswerMoodBroken Auto
Topic Property DOM02TopicAnswerMoodLoyal Auto
Topic Property DOM02TopicAnswerMoodInlove Auto
Topic Property DOM02TopicAnswerMoodDepressed Auto
Topic Property DOM02TopicAnswerMoodJealous Auto
Topic Property DOM02TopicAnswerMoodInsecure Auto
Topic Property DOM02TopicAnswerSubmissionRespectful Auto
Topic Property DOM02TopicAnswerFearRespectful Auto
Topic Property DOM02TopicAnswerHumiliationRespectful Auto
Topic Property DOM02TopicAnswerAngryRespectful Auto
Topic Property DOM02TopicAnswerResignationRespectful Auto
Topic Property DOM02TopicAnswerRespectRespectful Auto
Topic Property DOM02TopicAnswerSubmission Auto
Topic Property DOM02TopicAnswerFear Auto
Topic Property DOM02TopicAnswerHumiliation Auto
Topic Property DOM02TopicAnswerAngry Auto
Topic Property DOM02TopicAnswerResignation Auto
Topic Property DOM02TopicAnswerRespect Auto
Topic Property DOM02TopicAnswerPain1Respectful Auto
Topic Property DOM02TopicAnswerPain2Respectful Auto
Topic Property DOM02TopicAnswerPain3Respectful Auto
Topic Property DOM02TopicAnswerPain4Respectful Auto
Topic Property DOM02TopicAnswerPain5Respectful Auto
Topic Property DOM02TopicAnswerPain1 Auto
Topic Property DOM02TopicAnswerPain2 Auto
Topic Property DOM02TopicAnswerPain3 Auto
Topic Property DOM02TopicAnswerPain4 Auto
Topic Property DOM02TopicAnswerPain5 Auto
Topic Property DOM02TopicAnswerWeather1Respectful Auto
Topic Property DOM02TopicAnswerWeather2Respectful Auto
Topic Property DOM02TopicAnswerWeather3Respectful Auto
Topic Property DOM02TopicAnswerWeather1 Auto
Topic Property DOM02TopicAnswerWeather2 Auto
Topic Property DOM02TopicAnswerWeather3 Auto
Topic Property DOM02TopicAnswerFriend0Respectful Auto
Topic Property DOM02TopicAnswerFriend1Respectful Auto
Topic Property DOM02TopicAnswerFriend2Respectful Auto
Topic Property DOM02TopicAnswerFriend3Respectful Auto
Topic Property DOM02TopicAnswerFriend4Respectful Auto
Topic Property DOM02TopicAnswerFriend0 Auto
Topic Property DOM02TopicAnswerFriend1 Auto
Topic Property DOM02TopicAnswerFriend2 Auto
Topic Property DOM02TopicAnswerFriend3 Auto
Topic Property DOM02TopicAnswerFriend4 Auto
Topic Property DOM02TopicAnswerRival0 Auto
Topic Property DOM02TopicAnswerRival1 Auto
Topic Property DOM02TopicAnswerRival2 Auto
Topic Property DOM02TopicAnswerRival3 Auto
Topic Property DOM02TopicAnswerRival4 Auto
associationType Property pCourting    auto
associationType Property pSpouse      auto
associationType Property pParent      auto
associationType Property pGrandParent auto
associationType Property pGreatGrandParent auto
associationType Property pSibling     auto
associationType Property pCousin      auto
associationType Property pUncleAunt   auto
associationType Property pGreatAuntUncle auto
associationType Property pInLawParent auto
associationType Property pInLawBrotherSister auto
associationType Property pInLawAuntUncle auto
GlobalVariable Property DOM_FollowersMainGenderType Auto
Int Property femaleFollowCounter = -1 Auto Hidden
Int Property maleFollowCounter = -1 Auto Hidden
Function SetFollowCounters()
EndFunction
Function SetFollowersMainGenderType()
EndFunction
Function AddSlaveFollower(DOM_Actor akActor)
EndFunction
Function RemoveSlaveFollower(DOM_Actor akActor)
EndFunction
string Property playerTitle = "" Auto Hidden
Function PlayerHasSold(DOM_Actor akActor)
EndFunction
Float __skill_enforcer = 0.0
Float __skill_persuader = 0.0
Float __skill_depraver = 0.0
Float __skill_predator = 0.0
Float __skill_slaver = 0.0
Float __skill_deceiver = 0.0
Float Function RetrieveSkillEnforcer()
	Return 0.0
EndFunction
Float Function RetrieveSkillPersuader()
	Return 0.0
EndFunction
Float Function RetrieveSkillDepraver()
	Return 0.0
EndFunction
Float Function RetrieveSkillPredator()
	Return 0.0
EndFunction
Float Function RetrieveSkillSlaver()
	Return 0.0
EndFunction
Float Function RetrieveSkillDeceiver()
	Return 0.0
EndFunction
Function TrainSkillEnforcer(Actor akAbuser, Float base_amount)
EndFunction
Function TrainSkillPersuader(Actor akAbuser, Float base_amount)
EndFunction
Function TrainSkillDepraver(Actor akAbuser, Float base_amount)
EndFunction
Function TrainSkillPredator(Actor akAbuser, Float base_amount)
EndFunction
Function TrainSkillSlaver(Actor akAbuser, Float base_amount)
EndFunction
Function TrainSkillDeceiver(Actor akAbuser, Float base_amount)
EndFunction
Float Function GetEnforcerModifier(Actor akAbuser)
	Return 0.0
EndFunction
Float Function GetPersuaderModifier(Actor akAbuser)
	Return 0.0
EndFunction
Float Function GetDepraverModifier(Actor akAbuser)
	Return 0.0
EndFunction
Float Function GetPredatorModifier(Actor akAbuser)
	Return 0.0
EndFunction
Float Function GetSlaverModifier(Actor akAbuser)
	Return 0.0
EndFunction
Float Function GetDeceiverModifier(Actor akAbuser)
	Return 0.0
EndFunction
float Function GetTrainingSpeed(Actor akAbuser)
	Return 0.0
EndFunction
int Function GetFeeForRecruiting(Actor akTarget)
	Return 0
EndFunction
bool Function IsWeaponCaptureAllowed(Actor akTarget)
	Return False
EndFunction
Faction Function GetHEXACOFactionByIndex(int index)
	Return None
EndFunction
Faction Function GetTrainingFactionByIndex(int index)
	Return None
EndFunction
Faction Function GetCounterFactionByIndex(int index)
	Return None
EndFunction
Faction Function GetVirginFactionByIndex(int index)
	Return None
EndFunction
bool Property kinksFilterIsSet = false Auto Hidden
bool[] _kinksFilterFemale
bool[] Property kinksFilterFemale
bool[] Function Get()
	Return None
EndFunction
EndProperty
bool[] _kinksFilterMale
bool[] Property kinksFilterMale
bool[] Function Get()
	Return None
EndFunction
EndProperty
Function SetFilterKink(int kink, int actorSex, bool value)
EndFunction
bool Function FilterKink(int kink, int actorSex, Actor akRef)
	Return False
EndFunction
int Function GetVersion()
	Return 0
EndFunction
Function OnPlayerLoadReInit()
EndFunction
string Property RACESEX_MENU = "RaceSex Menu" Auto Hidden
bool Property on_player_loadgame = false Auto Hidden
bool on_player_loadgame_failed = true
bool game_was_initialized = false
bool game_menu_registered = false
bool game_message_was_displayed = false
Event OnInit()
EndEvent
Event OnMenuOpen(String menuName)
EndEvent
Event OnMenuClose(String menuName)
EndEvent
Function DisplayGameMessage()
EndFunction
Event OnGameReload()
EndEvent
Event OnPlayerLoadGame()
EndEvent
bool on_dom_init = true
Function OnPlayerLoadInit()
EndFunction
bool Function isOnDOMInit()
	Return False
EndFunction
bool recheck_is_done = false
Function ReCheck()
EndFunction
Function ClearAliases(Actor akRef)
EndFunction
Function SendBootstrapEvents()
EndFunction
bool on_update = false
Event OnUpdate()
EndEvent
Event OnBootstrap()
EndEvent
int Function GetActorType(Actor akRef)
	Return 0
EndFunction
int Function GetActorRace(Actor akRef)
	Return 0
EndFunction
int Function GetActorGender(Actor akRef, int actorType = 0)
	Return 0
EndFunction
int Function GetActorGenderByString(Actor akRef, string str_gender, int actorType = 0)
	Return 0
EndFunction
Function Initialize()
EndFunction
string   g_kink_last_read_key   = ""
string   g_kink_fileName = "Diary Of Mine/KinkReasons.json"
string   g_kink_basePath = "kinksList"
String[] g_kink_keys
String[] g_kink_reasonsF
String[] g_kink_reasonsM
String[] g_kink_last_read_stats
String[] g_kink_last_read_mod
Float[]  g_kink_last_read_values
Function SetJSONKinkReasons()
EndFunction
Int Function GetJSONNumberOfKinkReasons()
	Return 0
EndFunction
Int Function GetJSONKinkReasonIndexByName(string the_reason)
	Return 0
EndFunction
String Function GetJSONKinkReasonNameByIndex(int index, int actorSex)
	Return ""
EndFunction
String Function GetJSONKinkReasonName(string the_key)
	Return ""
EndFunction
String Function GetJSONKinkReasonNameForMales(string the_key)
	Return ""
EndFunction
String Function GetJSONKinkArousalModifierByIndex(int index)
	Return ""
EndFunction
String Function GetJSONKinkArousalModifier(string the_key)
	Return ""
EndFunction
Float[] Function GetJSONKinkTrainingValuesByIndex(int index)
	Return None
EndFunction
Float[] Function GetJSONKinkTrainingValues(string the_key)
	Return None
EndFunction
String[] Function GetJSONKinkTrainingStatsByIndex(int index)
	Return None
EndFunction
String[] Function GetJSONKinkTrainingStats(string the_key, bool do_check=true)
	Return None
EndFunction
string   g_praisetype_fileName = "Diary Of Mine/PraisingTypes.json"
string   g_praisetype_fileName2 = "Diary Of Mine/PraisingTypes.json"
string   g_praisetype_basePath = "praiseTypes"
String[] g_praisetype_keys
String[] Property g_praisetype_names Auto Hidden
String[] g_praisetype_desc1
String[] g_praisetype_desc2
String[] g_praisetype_anim1
String[] g_praisetype_anim2
Int Function GetJSONNumberOfPraisingTypes()
	Return 0
EndFunction
Function SetJSONPraisingTypes()
EndFunction
string Function GetJSONPraisingTypeDescriptionByName(string type)
	Return ""
EndFunction
string Function GetJSONPraisingTypeDescriptionByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTypeDescription(string the_key)
	Return ""
EndFunction
string Function GetJSONPraisingTypeTextByName(string type)
	Return ""
EndFunction
string Function GetJSONPraisingTypeTextByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTypeText(string the_key)
	Return ""
EndFunction
int Function GetJSONPraisingTypeIndexByName(string the_name)
	Return 0
EndFunction
String Function GetJSONPraisingTypeNameByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTypeName(string the_key)
	Return ""
EndFunction
String Function GetJSONPraisingTypeAnimByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTypeAnim(string the_key)
	Return ""
EndFunction
String Function GetJSONPraisingTypeAnimBoundedByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTypeAnimBounded(string the_key)
	Return ""
EndFunction
string   g_punishtype_fileName = "Diary Of Mine/PunishmentTypes.json"
string   g_punishtype_basePath = "punishmentTypes"
String[] g_punishtype_keys
String[] Property g_punishtype_names Auto Hidden
String[] g_punishtype_desc1
String[] g_punishtype_desc2
String[] g_punishtype_tats1
String[] g_punishtype_tats2
String[] g_punishtype_anim1
String[] g_punishtype_anim2
Int Function GetJSONNumberOfPunishmentTypes()
	Return 0
EndFunction
Function SetJSONPunishmentTypes()
EndFunction
int Function GetJSONPunishmentTypeIndexByName(string the_name)
	Return 0
EndFunction
String Function GetJSONPunishmentTypeNameByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeName(string the_key)
	Return ""
EndFunction
string Function GetJSONPunishmentTypeDescriptionByName(string type)
	Return ""
EndFunction
string Function GetJSONPunishmentTypeDescriptionByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeDescription(string the_key)
	Return ""
EndFunction
string Function GetJSONPunishmentTypeTextByName(string type)
	Return ""
EndFunction
string Function GetJSONPunishmentTypeTextByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeText(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeTatsByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeTats(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeTatsBoundedByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeTatsBounded(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeAnimByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeAnim(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeAnimBoundedByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTypeAnimBounded(string the_key)
	Return ""
EndFunction
string   g_punish_last_read_key   = ""
string   g_punish_fileName = "Diary Of Mine/PunishmentReasons.json"
string   g_punish_basePath = "punishmentsList"
String[] g_punish_keys
String[] g_punish_reasonsF
String[] g_punish_reasonsM
String[] g_punish_last_read_stats
Float[]  g_punish_last_read_values
String   g_punish_last_read_mod
String   g_punish_last_read_check
Function SetJSONPunishmentReasons()
EndFunction
Int Function GetJSONNumberOfPunishmentReasons()
	Return 0
EndFunction
Int Function GetJSONPunishmentReasonIndexByName(string the_reason)
	Return 0
EndFunction
String Function GetJSONPunishmentReasonNameByIndex(int index, int actorSex)
	Return ""
EndFunction
String Function GetJSONPunishmentReasonName(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentReasonNameForMales(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentTrainingCheckByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentTrainingCheck(string the_key)
	Return ""
EndFunction
String Function GetJSONPunishmentArousalModifierByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPunishmentArousalModifier(string the_key)
	Return ""
EndFunction
Float[] Function GetJSONPunishmentTrainingValuesByIndex(int index)
	Return None
EndFunction
Float[] Function GetJSONPunishmentTrainingValues(string the_key)
	Return None
EndFunction
String[] Function GetJSONPunishmentTrainingStatsByIndex(int index)
	Return None
EndFunction
String[] Function GetJSONPunishmentTrainingStats(string the_key, bool do_check=true)
	Return None
EndFunction
string   g_praise_last_read_key   = ""
string   g_praise_fileName = "Diary Of Mine/PraisingReasons.json"
string   g_praise_basePath = "praisesList"
String[] g_praise_keys
String[] g_praise_reasonsF
String[] g_praise_reasonsM
String[] g_praise_last_read_stats
Float[]  g_praise_last_read_values
String   g_praise_last_read_mod
String   g_praise_last_read_check
Function SetJSONPraisingReasons()
EndFunction
Int Function GetJSONNumberOfPraisingReasons()
	Return 0
EndFunction
Int Function GetJSONPraisingReasonIndexByName(string the_reason)
	Return 0
EndFunction
String Function GetJSONPraisingReasonNameByIndex(int index, int actorSex)
	Return ""
EndFunction
String Function GetJSONPraisingReasonName(string the_key)
	Return ""
EndFunction
String Function GetJSONPraisingReasonNameForMales(string the_key)
	Return ""
EndFunction
String Function GetJSONPraisingTrainingCheckByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingTrainingCheck(string the_key)
	Return ""
EndFunction
String Function GetJSONPraisingArousalModifierByIndex(int index)
	Return ""
EndFunction
String Function GetJSONPraisingArousalModifier(string the_key)
	Return ""
EndFunction
Float[] Function GetJSONPraisingTrainingValuesByIndex(int index)
	Return None
EndFunction
Float[] Function GetJSONPraisingTrainingValues(string the_key)
	Return None
EndFunction
String[] Function GetJSONPraisingTrainingStatsByIndex(int index)
	Return None
EndFunction
String[] Function GetJSONPraisingTrainingStats(string the_key, bool do_check=true)
	Return None
EndFunction
Function RegisterSpells()
EndFunction
Function RegisterPerks()
EndFunction
Function UnregisterPerks()
EndFunction
int Function GetSlaveManagerIndex(DOM_SlaveManager mng)
	Return 0
EndFunction
int Function AddSlaveManager(DOM_SlaveManager mng)
	Return 0
EndFunction
DOM_Mind Function GetMindFromActor(DOM_Actor akActor)
	Return None
EndFunction
DOM_Mind Function GetActorMind(Actor akTarget)
	Return None
EndFunction
DOM_Actor selected_actor = None
Function ClearSelectedActor(DOM_Actor akActor)
EndFunction
Function CheckDistanceToCell(Actor akRef, int index)
EndFunction
Actor Function GetActorFromBase(ActorBase akBase)
	Return None
EndFunction
DOM_Actor Function GetActor(Actor akRef)
	Return None
EndFunction
Function DOMToHSH(Actor akTarget)
EndFunction
Function DOMToHSHome(Actor akTarget)
EndFunction
Function HSHToDOM(Actor akTarget)
EndFunction
Function HSHToPAH(Actor akTarget)
EndFunction
DOM_Actor Function GetSlave(Actor akRef)
	Return None
EndFunction
DOM_Actor Function GetSlaver(Actor akRef)
	Return None
EndFunction
Function ReleaseAlias(ReferenceAlias akAlias)
EndFunction
Function ReleaseSlaveAlias(ReferenceAlias akAlias)
EndFunction
Function ReleaseNotPlayerSlaveAlias(ReferenceAlias akAlias)
EndFunction
Function ReleaseSlaverAlias(ReferenceAlias akAlias)
EndFunction
Function ReleaseFromCart(Actor akTarget)
EndFunction
bool Function ReleaseActor(Actor akRef)
	Return False
EndFunction
bool Function ReleaseSlave(Actor akRef)
	Return False
EndFunction
bool Function ReleaseNotPlayerSlave(Actor akRef)
	Return False
EndFunction
bool Function ReleaseSlaver(Actor akRef)
	Return False
EndFunction
Actor actor_in_dialogue = None
Function SlaveFamilyCheck(Actor akTarget)
EndFunction
Function SlaveFamilyRansom(Actor akTarget)
EndFunction
Function CheckPlayersEquipment()
EndFunction
bool Function IsAllowedToPunish(Actor aggro)
	Return False
EndFunction
bool Function IsWithPlayer(Actor akTarget, float distance)
	Return False
EndFunction
bool Function IsObjectWithPlayer(ObjectReference akTarget, float distance)
	Return False
EndFunction
bool Function IsTogetherWith(ObjectReference subject_ref, ObjectReference object_ref, float distance = 10000.0)
	Return False
EndFunction
bool Function isInDungeon(Location loc)
	Return False
EndFunction
bool Function isInCity(Location loc)
	Return False
EndFunction
bool Function isAJail(ObjectReference akRef)
	Return False
EndFunction
bool Function IsWorkplaceBusy(DOM_Actor akWorker, ObjectReference workplace)
	Return False
EndFunction
bool Function IsANarcotic(Form the_form)
	Return False
EndFunction
Form Function FindAlcoholInInventory(Actor akRef)
	Return None
EndFunction
float Function GetFormAlcoholLevel(Form the_form)
	Return 0.0
EndFunction
Function UpdateAlcoholList()
EndFunction
Function SayTopic(Actor the_actor, Topic topic_to_say, ObjectReference say_to = None)
EndFunction
bool Function hasWaterKeyword(Form the_form)
	Return False
EndFunction
bool Function isAPlayerSlave(Actor akTarget)
	Return False
EndFunction
bool Function isAPlayerSlaver(Actor akTarget)
	Return False
EndFunction
bool Function isAHouseSlave(Actor akTarget)
	Return False
EndFunction
bool Function isFleeing(Actor akTarget)
	Return False
EndFunction
bool Function isAnActor(Actor akTarget)
	Return False
EndFunction
bool Function isAnActorOrASlave(Actor akTarget)
	Return False
EndFunction
bool Function isATaskMistress(Actor akTarget)
	Return False
EndFunction
bool Function isASlave(Actor akTarget)
	Return False
EndFunction
bool Function isASlaver(Actor akTarget)
	Return False
EndFunction
string Function GetSlaveType(Actor akTarget)
	Return ""
EndFunction
Function DOMOpenDiary(Actor akTarget)
EndFunction
Function DOMOpenPlayerDiary()
EndFunction
string Function DOMBasicInfo(Actor akTarget)
	Return ""
EndFunction
string Function DOMMoodInfo(DOM_Actor akActor)
	Return ""
EndFunction
int Function GetMaxRelationShip(Actor akTarget)
	Return 0
EndFunction
Function SetMinRelationShip(Actor akTarget)
EndFunction
Function IncrementRelationShip(Actor akTarget)
EndFunction
int Function GetPersonalityIndexNPC(Actor akTarget)
	Return 0
EndFunction
Function DOMInfoNPCTraits1(Actor akTarget, int hexaco_trait)
EndFunction
Function DOMInfoNPCTraits2(Actor akTarget, int hexaco_trait1, int hexaco_trait2)
EndFunction
Function DOMInfoNPCTraits3(Actor akTarget, int hexaco_trait1, int hexaco_trait2)
EndFunction
Function DOMInfoNPCTraits4(Actor akTarget, int hexaco_trait1, int hexaco_trait2)
EndFunction
Function DOMInfoNPCFeelings1(Actor akTarget, int training_stat)
EndFunction
Function DOMInfoNPCFeelings2(Actor akTarget, int training_stat)
EndFunction
Function DOMInfoNPCFeelings3(Actor akTarget, int training_stat)
EndFunction
Function DOMInfoNPCFeelings4(Actor akTarget, int training_stat)
EndFunction
Function DOMInfoNPCMods1(Actor akTarget, int hexaco_trait)
EndFunction
Function DOMInfoNPCMods2(Actor akTarget, int hexaco_trait)
EndFunction
Function DOMInfoTraitsMod(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function DOMInfoTrainingMod(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function DOMInfoNPCTraitsAdjust(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function DOMInfoTraitsAdjust(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
int Function DOMNPCTrainingRandom(Actor akTarget, float amount)
	Return 0
EndFunction
Function DOMInfoNPCTrainingAdjust(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function DOMInfoTrainingAdjust(Actor akTarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function DOMDialogueFeelings(Actor akTarget)
EndFunction
Function NPCDialogueFeelings(Actor akTarget)
EndFunction
Function DOMDialogueTraits(Actor akTarget)
EndFunction
Function NPCDialogueTraits(Actor akTarget)
EndFunction
Function DOMWheelFeelings(Actor akTarget)
EndFunction
Function NPCWheelFeelings(Actor akTarget)
EndFunction
Function DOMWheelTraits(Actor akTarget)
EndFunction
Function NPCWheelTraits(Actor akTarget)
EndFunction
string Function DOMTrainingMessage(DOM_Actor akActor)
	Return ""
EndFunction
string Function NPCTrainingMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetTrainingMessage(Actor akTarget, float[] training)
	Return ""
EndFunction
int Function GetDifficultyLevel(float MOD_Sum)
	Return 0
EndFunction
int Function GetPersonalityTraitPrism(int idx)
	Return 0
EndFunction
int Function GetLowLowestTrait(Float[] TraitsHEXACO)
	Return 0
EndFunction
int Function GetLowHighestTrait(Float[] TraitsHEXACO)
	Return 0
EndFunction
int Function GetHighHighestTrait(Float[] TraitsHEXACO)
	Return 0
EndFunction
int Function GetHighLowestTrait(Float[] TraitsHEXACO)
	Return 0
EndFunction
int Function GetPersonalityLowHigh(int i_low1)
	Return 0
EndFunction
int Function GetPersonalityHighLow(int i_hig1)
	Return 0
EndFunction
int Function GetPersonalityLowLow(int i_low1)
	Return 0
EndFunction
int Function GetPersonalityHighHigh(int i_hig1)
	Return 0
EndFunction
int Function GetPersonalitySums(float Sum_HEXACO, float Sum_PRISM)
	Return 0
EndFunction
string Function GetPersonalityType(int index)
	Return ""
EndFunction
string Function GetTrainingDifficulty(float MOD_Sum)
	Return ""
EndFunction
string Function GetSlaverProficiency(float MOD_Sum)
	Return ""
EndFunction
string Function DifficultyMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetStatusMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetBehaviourMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetRaceMessageFirstPerson(Actor akTarget)
	Return ""
EndFunction
string Function GetRaceMessageThirdPerson(Actor akTarget)
	Return ""
EndFunction
string Function GetMoodMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetMood(Actor akTarget)
	Return ""
EndFunction
string[] str_feel_message08
string[] str_feel_message16
string[] str_feel_message34
string[] str_feel_message50
string[] str_feel_message66
string[] str_feel_message84
string[] str_feel_message92
string[] str_npcs_message08
string[] str_npcs_message16
string[] str_npcs_message34
string[] str_npcs_message50
string[] str_npcs_message66
string[] str_npcs_message84
string[] str_npcs_message92
string[] str_love_message08
string[] str_love_message16
string[] str_love_message34
string[] str_love_message50
string[] str_love_message66
string[] str_love_message84
string[] str_love_message92
string[] str_npc2_message08
string[] str_npc2_message16
string[] str_npc2_message34
string[] str_npc2_message50
string[] str_npc2_message66
string[] str_npc2_message84
string[] str_npc2_message92
string[] str_trait_message_low
string[] str_trait_message_lc1
string[] str_trait_message_lc2
string[] str_trait_message_hig
string[] str_trait_message_hc1
string[] str_trait_message_hc2
int[]    str_trait_xcorrel_lc1
int[]    str_trait_xcorrel_lc2
int[]    str_trait_xcorrel_hc1
int[]    str_trait_xcorrel_hc2
string Function GetNPCFeelMessage(int ifeel, int stat)
	Return ""
EndFunction
string Function GetFeelMessage(int ifeel, int stat, string mstr)
	Return ""
EndFunction
string Function GetTraitMessage(int itrait, float[] traits)
	Return ""
EndFunction
Function SetStrMessagesFromFile(string fileName)
EndFunction
string Function DOMMoodMessage(Actor akTarget)
	Return ""
EndFunction
string Function NPCMoodMessage(Actor akTarget)
	Return ""
EndFunction
string Function ActorMoodMessage(Actor akTarget)
	Return ""
EndFunction
string Function DOMTrainingCounterMessage(Actor akTarget, int istart, int istop, string sh, int[] values, int type)
	Return ""
EndFunction
string Function NPCStatsMessage(Actor akTarget)
	Return ""
EndFunction
string Function DOMStatsMessage(Actor akTarget)
	Return ""
EndFunction
string Function ActorStatsMessage(Actor akTarget)
	Return ""
EndFunction
int Function GetEnslavedInDaysFromFactions(Actor akTarget)
	Return 0
EndFunction
int Function GetTraumaInDaysFromFactions(Actor akTarget)
	Return 0
EndFunction
int Function GetDateInDaysFromFactions(Actor akTarget, Faction the_days, Faction the_months, Faction the_years)
	Return 0
EndFunction
Function SetFactionsTraumaInDays(Actor akRef, float value)
EndFunction
Function SetFactionsEnslavedInDays(Actor akRef, float value)
EndFunction
Function SetDateInDaysToFactions(Actor akRef, Faction the_days, Faction the_months, Faction the_years, float value)
EndFunction
string Function DOMTrainingStatsMessage(Actor akTarget)
	Return ""
EndFunction
string Function DOMFeelingsMessage(Actor akTarget)
	Return ""
EndFunction
string Function DOMFeelingStatsMessage(Actor akTarget)
	Return ""
EndFunction
string Function NPCFeelingsMessage(Actor akTarget)
	Return ""
EndFunction
Function NPCStartFollowMe(Actor akTarget)
EndFunction
Function NPCStartWaitHere(Actor akTarget)
EndFunction
Function NPCStartWaitSandbox(Actor akTarget)
EndFunction
Function NPCStopFollowAndWait(Actor akTarget)
EndFunction
Function NPCStartAbduction(Actor akTarget)
EndFunction
string Function GetTraitsMessage(Actor akTarget, float[] TraitsArray)
	Return ""
EndFunction
string Function DOMTraitsMessage(Actor akTarget)
	Return ""
EndFunction
string Function NPCTraitsMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetKinkMessage(DOM_Actor akActor, bool show_hidden)
	Return ""
EndFunction
string Function GetFriendMessage(DOM_Actor sl_alias)
	Return ""
EndFunction
string Function DOMFeelingsVerboseMessage(Actor akTarget)
	Return ""
EndFunction
string Function NPCFeelingsVerboseMessage(Actor akTarget)
	Return ""
EndFunction
string Function DOMTraitsVerboseMessage(Actor akTarget)
	Return ""
EndFunction
string Function NPCTraitsVerboseMessage(Actor akTarget)
	Return ""
EndFunction
string Function TraitsVerboseMessage(float[] TraitsArray)
	Return ""
EndFunction
string Function CheckMainModifiersToString(Float[] mods, Float[] invmods, float fmax, float fmin, string pct)
	Return ""
EndFunction
string Function CheckSexModifiersToString(Float[] mods, Float[] invmods, float fmax, float fmin, string pct)
	Return ""
EndFunction
string Function TraitsSlaveMessage(Actor akTarget, float[] TraitsArray)
	Return ""
EndFunction
Function SendNotificationFriends(string section, string msg, bool start_at_end=false)
EndFunction
Function SendNotificationAction(string section, string msg, bool start_at_end=false)
EndFunction
Function SendNotificationEmotion(string section, string msg, bool start_at_end=false)
EndFunction
Function SendNotificationAbuse(string section, string msg, bool start_at_end=false)
EndFunction
Function SendNotificationOrder(string section, string msg, bool start_at_end=false)
EndFunction
Function SendNotification(string section, string msg, bool start_at_end=false)
EndFunction
Function DisplayMessage(String section, String msg, bool start_at_end=false)
EndFunction
int[] Property widgetColor Auto Hidden
bool has_apropos = false
Function InitMessageWidgets(string hAnchor = "", string vAnchor = "")
EndFunction
Int lastwidget = -1
Int lastwidget2 = -1
String Property horizontalAnchor = "Right" Auto Hidden ; "Center" "Left"
String Property verticalAnchor = "Top" Auto Hidden ; "Center" "Bottom"
Function ClearWidgetSections()
EndFunction
DOM_MessageWidget Function FindWidget(String section, bool start_at_end = false)
	Return None
EndFunction
Function UpdateAllWidgetPositions()
EndFunction
Function UpdateWidgetPosition(Int widgetIndex)
EndFunction
Int[] Function GetReferencePos(Int widgetIndex)
	Return None
EndFunction
Int[] Function GetOffsetPos(Int widgetIndex)
	Return None
EndFunction
bool Function HasSpouse(Actor akRef)
	Return False
EndFunction
bool Function HasLover(Actor akRef)
	Return False
EndFunction
bool Function HasFamily(Actor akRef)
	Return False
EndFunction
bool Function IsFamily(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsFriend(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsLover(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsCourting(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsCourted(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsSpouse(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsParent(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsChild(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsInLawParent(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsInLawChild(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsSibling(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsInlawSibling(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsCousin(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGrandParent(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGrandChild(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGreatGrandParent(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGreatGrandChild(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsAuntUncle(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsNieceNephew(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGreatAuntUncle(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsGreatNieceNephew(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsInLawAuntUncle(Actor akRef, Actor akOther)
	Return False
EndFunction
bool Function IsInLawNieceNephew(Actor akRef, Actor akOther)
	Return False
EndFunction
int Function GetFriendshipType(Actor akRef, Actor akOther)
	Return 0
EndFunction
int property nbNearbySlaves = 0 Auto Conditional
DOM_Actor[] __nearby_slaves
DOM_Actor[] Property nearby_slaves
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
int property nbNearbySlavesPwF = 0 Auto Conditional
DOM_Actor[] __nearby_slaves_pwf
DOM_Actor[] Property nearby_slaves_pwf
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
int property nbNearbyActors = 0 Auto Hidden
Actor[] __nearby_actors
Actor[] Property nearby_actors
Actor[] Function Get()
	Return None
EndFunction
EndProperty
int property nbNearbyFollowers = 0 Auto Hidden
Actor[] __nearby_followers
Actor[] Property nearby_followers
Actor[] Function Get()
	Return None
EndFunction
EndProperty
int property nbAllFollowers = 0 Auto Hidden
Actor[] __all_followers
Actor[] Property all_followers
Actor[] Function Get()
	Return None
EndFunction
EndProperty
Function RemoveFromFollowersList(Actor akSomeone)
EndFunction
Function AddToFollowersList(Actor akSomeone)
EndFunction
int property nbNearbyActorsFamily = 0 Auto Hidden
DOM_Actor[] __nearby_actors_family
DOM_Actor[] Property nearby_actors_family
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
int property nbNearbyFamily = 0 Auto Hidden
Actor[] __nearby_family
Actor[] Property nearby_family
Actor[] Function Get()
	Return None
EndFunction
EndProperty
bool waiting_for_family = false
Function FillNearbySlavesAndActors()
EndFunction
DOM_Actor Function ActorHasFamilyNearby(Actor akSomeone)
	Return None
EndFunction
Actor Function SlaveHasFamilyNearby(DOM_Actor akActor)
	Return None
EndFunction
bool Function mightHaveFamilyOrFriend(Actor akTarget)
	Return False
EndFunction
bool Function isFamilyOrFriend(Actor akSomeone, Actor akSomeoneelse)
	Return False
EndFunction
bool Function IsToCheckForFamily(Actor akSomeone)
	Return False
EndFunction
bool Function IsFollower(Actor akSomeone)
	Return False
EndFunction
bool Function IsWaitingForPlayer(Actor akRef)
	Return False
EndFunction
bool checking_for_family = false
Function CheckForFamilyAround()
EndFunction
Function NPCFamilyKeep(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyAccept(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyFear(Actor akTarget, DOM_Actor akActor)
EndFunction
int pay_amount = 0
Function NPCFamilyRecruitOffer(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyRecruit(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyOffer(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyPay(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyRansomOffer(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyRansomPay(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyFree(Actor akTarget, DOM_Actor akActor)
EndFunction
Function NPCFamilyForgetIt(Actor akTarget)
EndFunction
Function NPCFamilyAbduct(Actor akTarget, DOM_Actor akActor, bool is_mesmerized)
EndFunction
Function NPCClearForceGreet(Actor akTarget)
EndFunction
Function NPCStartForceGreet(Actor akTarget, Actor akSlave)
EndFunction
Function NPCStopForceGreet(Actor akTarget)
EndFunction
Function NPCCheckForceGreet()
EndFunction
bool on_global_friend_check = false
Function ReCheckFollowFriendships()
EndFunction
bool on_distant_friend_check = false
float distant_friend_time = 0.0
Function ReCheckDistantFriendships()
EndFunction
Function TrainWitnesses(DOM_Actor akActor, int reason, string type, float amount)
EndFunction
string Function GetPreviousOccupation(Actor akRef)
	Return ""
EndFunction
Actor Function CloneOrNot(Actor original, bool force_clone=false)
	Return None
EndFunction
string Function GetOBodyPreset(Actor act)
	Return ""
EndFunction
Function SetOBodyPreset(Actor act, string preset)
EndFunction
Actor Function CloneAndCopyActor(Actor original)
	Return None
EndFunction
string Function NameGenerator(Actor akRef)
	Return ""
EndFunction
Function cleanActor(Actor akRef)
EndFunction
Actor Function CheckGender(actor slave)
	Return None
EndFunction
ActorBase Function GetValidActorBase(actor akActor)
	Return None
EndFunction
bool Function IsSimilarActorBase(ActorBase akActorBase1, ActorBase akActorBase2)
	Return False
EndFunction
Actor Function CloneActor(Actor original)
	Return None
EndFunction
Function prepareClone(Actor original, Actor clone)
EndFunction
Function ReCloneActor(Actor akTarget)
EndFunction
Form[] _saveFactions1
Function ReadSaveFactions()
EndFunction
Function WriteSaveFactions()
EndFunction
Int [] Function SaveFactions1(Actor original)
	Return None
EndFunction
Int [] Function SaveFactions2(Actor original)
	Return None
EndFunction
Function RestoreFactions(Actor original, Int [] fact_save1, Int [] fact_save2)
EndFunction
Function RemoveFromEnemyFactions(Actor akRef)
EndFunction
bool Function CheckSameActorBase(Actor akTarget)
	Return False
EndFunction
Function copySexStats(Actor target, Actor source)
EndFunction
Function copyFactions(Actor original, Actor clone)
EndFunction
bool Function IsEnemyFaction(Faction the_faction)
	Return False
EndFunction
Function CleanFactions(Actor akRef)
EndFunction
Function SetMoodFaction(Actor akRef, string mood)
EndFunction
Function MoveActorToDOMx(Actor akTarget, int pool_index)
EndFunction
Function MoveActorToPAH(Actor akActor)
EndFunction
Function MoveActorToDOM(Actor akActor)
EndFunction
DOM_Actor Function MoveNPCToDOM(Actor akActor)
	Return None
EndFunction
Function CommandDoCombat(Actor akRef)
EndFunction
Function CommandNoLongerDoCombat(Actor akRef)
EndFunction
String Function VictimState(Actor Target)
	Return ""
EndFunction
bool Function isVampire(Actor akTarget)
	Return False
EndFunction
Int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
Int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly
bool Function CheckNiOverride()
	Return False
EndFunction
bool Function transferNode(Actor source, Actor target)
	Return False
EndFunction
Function PrintAllFactions(Actor _a)
EndFunction
int Function GetWeatherType(Actor akRef)
	Return 0
EndFunction
GlobalVariable Property DOM_SlaverLoadSlave Auto
GlobalVariable Property DOM_SexlabLoadSlave Auto
DOM_Actor _actor_to_join = None
DOM_Actor _actor1_to_join_sexlab = None
DOM_Actor _actor2_to_join_sexlab = None
DOM_Actor _actor3_to_join_sexlab = None
Function SetActorToJoin(DOM_Actor Slaver)
EndFunction
DOM_Actor Function GetActorToJoin()
	Return None
EndFunction
Function ResetActorToJoin(Actor akRef)
EndFunction
Function ResetDOMActorToJoin(DOM_Actor akActor)
EndFunction
Function SetActor1ToJoinSexlab(DOM_Actor akActor, int type)
EndFunction
Function SetActor2ToJoinSexlab(DOM_Actor akActor, int type)
EndFunction
Function SetActor3ToJoinSexlab(DOM_Actor akActor, int type)
EndFunction
DOM_Actor Function GetActor1ToJoinSexlab()
	Return None
EndFunction
DOM_Actor Function GetActor2ToJoinSexlab()
	Return None
EndFunction
DOM_Actor Function GetActor3ToJoinSexlab()
	Return None
EndFunction
Function ResetDOMActor1ToJoinSexlab(DOM_Actor akActor)
EndFunction
Function ResetDOMActor2ToJoinSexlab(DOM_Actor akActor)
EndFunction
Function ResetDOMActor3ToJoinSexlab(DOM_Actor akActor)
EndFunction
Function DoActorToJoinSexlab(Actor akTarget)
EndFunction
DOM_Actor currentVictim = None
DOM_Actor currentVictimRival = None
DOM_Actor[] currentVictimFriends
Function SetAsVictim(DOM_Actor akActor, int type)
EndFunction
Function UnsetAsVictim(DOM_Actor akActor)
EndFunction
DOM_Actor Function AddSlave(Actor akRef)
	Return None
EndFunction
DOM_Actor Function AddSlaver(Actor akRef)
	Return None
EndFunction
Function ResetPoseMarkers()
EndFunction
bool Property clearing_leash_point = false Auto Hidden
bool Function IsLeashPointInUse(DOMLeashPointScript objScript)
	Return False
EndFunction
bool Function LeashPointInUse(ObjectReference leash_point)
	Return False
EndFunction
Function ClearLeashPoint(DOMLeashPointScript leash_point)
EndFunction
Function SetSendExternalEvents(bool status)
EndFunction
Function SetSendExternalEventsExt(bool status)
EndFunction
Function SetSendExternalEventsExt2(bool status)
EndFunction
Function SetSendExternalEventsExt3(bool status)
EndFunction
Function SendDOMExternalEventSSSBS(Form sender, string the_order, string type, string reason, bool flag, string txt)
EndFunction
Function SendDOMExternalEventSSBS(Form sender, string the_order, string type, bool flag, string txt)
EndFunction
Function SendDOMExternalEventSFB(Form sender, string the_order, float value, bool flag)
EndFunction
Function SendDOMExternalEventSSFB(Form sender, string the_order, string type, float value, bool flag)
EndFunction
Function SendDOMExternalEventSSB(Form sender, string the_order, string type, bool flag)
EndFunction
Function SendDOMExternalEventSSSB(Form sender, string the_order, string type, string reason, bool flag)
EndFunction
Function SendDOMExternalEventSSS(Form sender, string the_order, string type, string reason)
EndFunction
Function SendDOMExternalEventSSF(Form sender, string the_order, string type, float value)
EndFunction
Function SendDOMExternalEventSS(Form sender, string the_order, string type)
EndFunction
Function SendDOMExternalEventSI(Form sender, string the_order, int value)
EndFunction
Function SendDOMExternalEventSSI(Form sender, string the_order, string type, int value)
EndFunction
Function SendDOMExternalEventS(Form sender, string the_order)
EndFunction
Function SendDOMOrder(Form sender, string the_order, string type="", bool flag=false)
EndFunction
Function SendDOMEvent(Form sender, string the_order, float amount=0.0, int reason=0, string type="")
EndFunction
Function SummonSlaves(Actor akTarget, bool only_fighters)
EndFunction
Function SummonSlavers(Actor akTarget, bool only_fighters)
EndFunction
Function SummonRunnerSlaves(Actor akTarget)
EndFunction
Function SummonFollowerSlaves(Actor akTarget)
EndFunction
Function SummonFollowerSlavers(Actor akTarget)
EndFunction
Function SummonFollowers(Actor akTarget)
EndFunction
Function SummonAllFollowers(Actor akTarget)
EndFunction
bool Function IsToBeSummoned(DOM_Actor akActor, bool only_fighters)
	Return False
EndFunction
bool Function IsARunner(DOM_Actor akActor)
	Return False
EndFunction
Function HudNotification(string msg)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
Function LogAnim(string msg)
EndFunction
Function LogTopic(Actor ActorRef, Topic topic_to_say)
EndFunction
Function DoLocationChange(Location akOldLoc, Location akNewLoc)
EndFunction
Function RegisterForCollisionEvents()
EndFunction
Function UnregisterForCollisionEvents()
EndFunction
Function RegisterModEvents()
EndFunction
Function UnregisterModEvents()
EndFunction
