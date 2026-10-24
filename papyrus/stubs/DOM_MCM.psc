 Scriptname DOM_MCM extends SKI_ConfigBase
Import Utility
Import DOM_Util
DOM_PlayerAlias Property DOMPlayerAlias Auto
DOM_Core Property DOMCore Auto
DOM_Animator Property DOM_Anim Auto
DOM_Bathing Property DOMBath Auto
DOM_Equip Property DOMEquip Auto
DOM_Keys Property DOMKeys Auto
DOM_SlaverManager Property DOM01 Auto
DOM_SlaveManager Property DOM02 Auto
DOM_Diary Property DOM04 Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAZ Property DOMZAZ Auto
DOM_SEXLAB Property DOMSexlab Auto
DOM_Generator Property DOMGenerator Auto
Faction Property PotentialFollowerFaction Auto
Faction Property CurrentFollowerFaction Auto
Faction Property PlayerMarriedFaction Auto
Faction Property PlayerHousecarlFaction Auto
Faction Property JobMerchantFaction Auto
Faction Property DOMPlayerSlaveFaction Auto
Faction Property DOMPlayerSlaverFaction Auto
Faction Property DOMNotPlayerSlaveFaction Auto
Faction Property DOMFollowMode Auto
Faction Property DOMActionInContainer Auto
Faction Property DOMShouldWalkOnFour Auto
Faction Property DOMShouldBeRespectful Auto
Faction Property DOMShouldFightForPlayer Auto
Faction Property DOMShouldBeNaked Auto
Faction Property DOMShouldWearArmor Auto
Faction Property DOMShouldHoldWeapons Auto
Faction Property DOMShouldBeNoOrgasm Auto
Faction Property DOMShouldBeSilent Auto
Faction Property DOMLoveDesire Auto
Faction Property DOMLoyalWorship Auto
Faction Property DOMLoveFascination Auto
Faction Property DOMLoyalAbsolution Auto
Faction Property DOMLoyalDevotion Auto
Faction Property DOMLoveAdmiration Auto
Faction Property DOMSkillEnforcer Auto
Faction Property DOMSkillPersuader Auto
Faction Property DOMSkillDepraver Auto
Faction Property DOMSkillPredator Auto
Faction Property DOMSkillSlaver Auto
Faction Property DOMSkillDeceiver Auto
Faction Property DOMDirtiness Auto
Faction Property DOMDrunkLevel Auto
Actor Property PlayerRef Auto
GlobalVariable Property DOM_TrainingThresholdLow Auto
GlobalVariable Property DOM_TrainingThresholdMedium Auto
GlobalVariable Property DOM_TrainingThresholdHigh Auto
GlobalVariable Property DOM_TrainingThresholdMax Auto
GlobalVariable Property DOM_SubmissionMinValue Auto
GlobalVariable Property DOM_DeactivateDialogueFollow Auto
GlobalVariable Property DOM_DeactivateDialogueForNPC Auto
GlobalVariable Property DOM_DeactivateDialogueForDOM Auto
GlobalVariable Property DOM_HealthPercentage Auto
GlobalVariable Property DOM_HealthMinValue Auto
GlobalVariable Property DOM_NumberOfExtraMng Auto
GlobalVariable Property DOM_OppositeSexTopics auto
GlobalVariable Property DOM_SameSexTopics auto
GlobalVariable Property DOM_ActivateCombatAbduction auto
GlobalVariable Property DOM_ActivateCombatRecruit auto
GlobalVariable Property DOM_RelationShipClosenessValue auto
GlobalVariable Property DOM_RelationShipIntimacyValue auto
GlobalVariable Property DOM_Version auto
bool activateDialogueFollow = true
bool activateDialogueForNPC = true
bool activateDialogueForDOM = true
bool activateCombatAbduction = true
bool activateCombatRecruit = true
Int GroupChoiceRandom_OID
Int GroupChoicePose_OID
Int StartupCheckActor_OID
Int newActorMessageToggle_OID
Int StartupSyncTattoos_OID
Int CaptureSyncTattoos_OID
Int UpdateCombatStrength_OID
Int setOBodyPresetToggleF_OID
Int setOBodyPresetToggleM_OID
Int setTransferNodeToggle_OID
Int cryingPunishmentToggle_OID
Int cryingPraiseToggle_OID
Int travelCuffsToggle_OID
Int punishPoseToggle_OID
Int punishTieToggle_OID
Int punishMasturbateToggle_OID
Int punishRestrainToggle_OID
Int attentionPose_OID
Int salutePose_OID
Int kneelPose_OID
Int salutePoseOn_OID
Int attentionPoseOn_OID
Int kneelPoseOn_OID
Int poseMoveToggle_OID
Int checkInteriorPosesToggle_OID
Int spellPose1_OID
Int spellPose2_OID
Int ExportSettings_OID
Int ImportSettings_OID
Int playerSkillsMessageToggle_OID
Int playerApplyTears_OID
Int playerApplyBlush_OID
Int playerApplyDrool_OID
Int playerExpressionToggle_OID
Int kinksPlayerSubToggle_OID
Int kinksPlayerDomToggle_OID
Int friendsPlayerToggle_OID
Int activateDialogueFollow_OID
Int activateDialogueForNPC_OID
Int activateDialogueForDOM_OID
Int playerDiaryToggle_OID
Int playerJournalToggle_OID
Int playerLedgerToggle_OID
Int slaveDiaryToggle_OID
Int slaverDiaryToggle_OID
Int resetAllDiary_OID
Int resetAllmemories_OID
Int equipSlaver_OID
Int clearWidgets_OID
Int transferDOMtoPAHE_OID
Int transferPAHEtoDOM_OID
Int recoverPAHEtoDOM_OID
Int registerSexLab_OID
Int wMessageToggle_OID
Int wMessageLevel0_OID
Int wMessageLevel1_OID
Int wMessageLevel2_OID
Int wMessageLevel3_OID
Int wMessageLevel4_OID
Int wMessageLevel5_OID
Int[] widgetColor_OID
Int marks_color_OID
Int marks_glow_OID
Int marks_glow_status_OID
Int marks_gloss_OID
Int brand_color_OID
Int brand_glow_OID
Int brand_glow_status_OID
Int brand_gloss_OID
Int blushFToggle_OID
Int tearsFToggle_OID
Int masctFToggle_OID
Int blushMToggle_OID
Int tearsMToggle_OID
Int masctMToggle_OID
Int resilienceToggle_OID
Int loyalToggle_OID
Int inloveToggle_OID
Int depressedToggle_OID
Int insecureToggle_OID
Int jealousyToggle_OID
Int greedToggle_OID
Int friendToggle_OID
Int friendPlayerToggle_OID
Int friendFollowToggle_OID
Int friendDistantToggle_OID
Int hugWhenFreedToggle_OID
Int familyToggle_OID
Int answerToggle_OID
Int topicsToggle_OID
Int itemEquipToggle_OID
Int instantEquipToggle_OID
Int instantUnEquipToggle_OID
Int cellEquipToggle_OID
Int locationEquipToggle_OID
Int shameArea52_OID
Int maskPubicArea_OID
Int maskFillHerUp_OID
Int useStripKeywords_OID
Int resetStripKeywords_OID
Int neverStripFX_OID
Int stripAndDropToggle_OID
Int stripDeleteToggle_OID
Int stripLootToggle_OID
Int stripItemsToggle_OID
Int stripUnequippedToggle_OID
Int stripWeaponsToggle_OID
Int stripShieldsToggle_OID
Int stripHeelsToggle_OID
Int stripUnderwearToggle_OID
Int stripJewelryToggle_OID
Int removeBlindfoldToggle_OID
Int removeGagToggle_OID
Int removeCuffsToggle_OID
Int undressBeforeSex_OID
Int redressAfterSex_OID
Int doAnimBeforeAndAfterSex_OID
Int doAnimPlayerTieup_OID
Int doRipOffBeforeSex_OID
Int addAbductionSpell_OID
Int addDiarySpell_OID
Int addMenuSpell_OID
Int addMenuPower_OID
Int addInfoSpell_OID
Int addInfoPower_OID
Int addWakeUpPerk_OID
Int addBurlapSackPerk_OID
Int addAbductionPerk_OID
Int addRecruitPerk_OID
Int activateCombatAbduction_OID
Int activateCombatRecruit_OID
Int addSlapTool_OID
Int seedUniques_OID
Int RandomFlat_OID
Int RemoveEssentialToggle_OID
Int SetEssentialToggle_OID
Int phhshUseSLAL_OID
Int debugMode_OID
Int debugInit_OID
Int debugKeyMode_OID
Int writeJSONRelease_OID
Int writeJSONTransfer_OID
Int trainSexlabValuesToggle_OID
Int readSexlabValuesToggle_OID
Int VampireCattleToggle_OID
Int sendDOMOrders_OID
Int sendDOMEquipEvent_OID
Int sendDOMCaptureEvent_OID
Int sendDOMEvents_OID
Int forbidAnimalCapture_OID
Int forbidCreatureCapture_OID
Int forbidUndeadCapture_OID
Int showKinksToggle_OID
Int ReadJSONTraitsToggle_OID
Int ReadJSONTraitsWarning_OID
Int ReadJSONRelationshipToggle_OID
Int ReadJSONVirginityToggle_OID
Int ReadJSONTrainingToggle_OID
Int ReadJSONKinksToggle_OID
Int ReadJSONMemoriesToggle_OID
Int readJSONForUniques_OID
Int readJSONForSpawned_OID
Int useBiS_OID
Int useDOMDirtiness_OID
Int singleTellToggle_OID
Int removeSlavesSpells_OID
Int removeSlaversSpells_OID
Int summonPAHToggle_OID
Int summonPosingToggle_OID
Int printActorBonusesToggle_OID
Int verboseMode_OID
Int verboseTopics_OID
Int randomReactionToggle_OID
Int wheelsUseVerboseMessage_OID
Int dialoguesUseVerboseMessage_OID
Int verboseAnim_OID
Int verboseEquip_OID
Int neverAutoEquip_OID
Int rescaleAnimToggle_OID
Int doAnimateAtActorLocation_OID
Int alwaysRandomizeAnimations_OID
Int doPlayerAnim_OID
Int doPlayerIdle_OID
Int doFreeCamera_OID
Int doRemoveHeels_OID
Int useSexlapPPlusQS_OID
Int useSexlapPPlusQST_OID
Int useSexlapPPlusSS_OID
Int useSexlapPPlusSSA_OID
Int startSexlabPreferablyPlayer_OID
Int startSexlabPreferablyNPC_OID
Int startSexlabPreferablyDOM_OID
Int separateOrgasmToggle_OID
Int alwaysAggressiveToggle_OID
Int alwaysGentleToggle_OID
Int useAggressiveTag_OID
Int dualAnimToggle_OID
Int requireSLTags_OID
Int requireSLTags4_OID
Int requireSLTags3_OID
Int staticTraitsMode_OID
Int staticTraitsChat_OID
Int renameToggle_OID
Int cloneUniqueMode_OID
Int cloneSpawnMode_OID
Int cleanCrimeFaction_OID
Int cleanFactionUnique_OID
Int cleanFactionSpawn_OID
Int cleanExtraFaction_OID
Int cleanUniqueOutfit_OID
Int cleanSpawnOutfit_OID
Int cleanSlaverOutfit_OID
Int restoreOutfitUnique_OID
Int restoreOutfitSpawn_OID
Int restoreOutfitAlways_OID
Int tieupWhenUnBagToggle_OID
Int alarmToggleAbduction2_OID
Int alarmToggleAbduction_OID
Int alarmToggleWitness3_OID
Int alarmToggleWitness2_OID
Int alarmToggleWitness_OID
Int alarmToggleRunaway_OID
Int escapeToggle_OID
Int callForHelpToggle_OID
Int runawayToggle_OID
Int fHitToggle_OID
Int sHitToggle_OID
Int rivalryToggle_OID
Int weaponsOToggle_OID
Int weaponsBToggle_OID
Int weaponsFToggle_OID
Int weaponsMToggle_OID
Int virginOToggle_OID
Int virginAToggle_OID
Int virginVToggle_OID
Int virginSToggle_OID
Int virginGToggle_OID
Int oppositeSexToggle_OID
Int sameSexToggle_OID
Int allowSlavesGear_OID
Int allowSlaversGear_OID
Int HKModifier_OID
Int HKModifierDefault_OID
Int HKFixme_OID
Int HKTest_OID
Int HKMenu0_OID
Int HKMenu1_OID
Int HKMenu2_OID
Int HKMenu3_OID
Int HKMenu4_OID
Int HKMenu5_OID
Int HKMenu6_OID
Int HKMenu7_OID
Int HKMenu8_OID
Int HKMenu9_OID
Int HKMenu10_OID
Int HKMenuPAH_OID
Int HKMenuSlavers_OID
Int HKMenuExtraSlaves_OID
Int HKAbduction_OID
Int HKAction_OID
Int HKDiary_OID
Int HKBagIn_OID
Int HKBagOut_OID
Int HKTraits_OID
Int HKFeels_OID
Int HKStatus_OID
Int HKMood_OID
Int HKMove_OID
Int HKInventory_OID
Int HKPraise_OID
Int HKScold_OID
Int HKPunish_OID
Int HKChoke_OID
Int HKKneel_OID
Int HKAttention_OID
Int HKFavor_OID
Int HKRipOff_OID
Int HKStrip_OID
Int HKCome_OID
Int HKTraitsDigits_OID
Int HKFeelsDigits_OID
Int HKFollow_OID
Int HKFollowAll_OID
Int groupIsDefaultMenu_OID
Int wheelIsDefaultMenu_OID
Int wheelIsDefaultCall_OID
Int wheelUsesDefaultPunishmentType_OID
Int wheelUsesDefaultPraiseType_OID
Int cleanDeleteToggle_OID
Int cleanAmmoToggle_OID
Int cleanWeaponsToggle_OID
Int cleanArmorsToggle_OID
Int cleanBooksToggle_OID
Int cleanScrollsToggle_OID
Int playerTitle_OID
Int playerGender_OID
Int actorTitle_OID
Int actorSort_OID
Int actorName_OID
Int actorWrite_OID
Int actorRead_OID
Int actorRemoveSpells_OID
Int actorRemoveBaseSpells_OID
Int actorPrevious_OID
Int actorRace_OID
Int actorGender_OID
Int actionGroup_OID
Int actionFlag_OID
Int actionName_OID
Int actionType_OID
Int actorPose_OID
Int actorStrugglePose_OID
Int actorFightForPlayer_OID
Int actorHoldWeapons_OID
Int actorWearArmor_OID
Int actorBeNaked_OID
Int actorBeRespectful_OID
Int actorBeSilent_OID
Int actorNoOrgasm_OID
Int actorWalkOnFour_OID
Int actorEssential_OID
Int actorThrall_OID
Int actorSummon_OID
Int actorResetDiary_OID
Int actorRelease_OID
Int actorFixme_OID
Int actorFixTats_OID
Int actorSummonBag_OID
string[] pageNames
string[] default_follow_mode_names
string[] default_wait_mode_names
string[] horizontal_anchor_names
string[] vertical_anchor_names
int tattoos = 0
Function SetupTattooSections()
EndFunction
Function SetupTattooNames()
EndFunction
string tattoos_area_current
string[] tattoos_area_names
string tattoos_section_current
string[] tattoos_section_names
string[] tattoos_item_names
string[] tattoos_file_names
Event OnGameReload()
EndEvent
string Function GetVersionString()
	Return ""
EndFunction
bool has_page_slaves1 = false
bool has_page_slaves2 = false
bool has_page_slaves3 = false
bool has_page_slavers = false
bool has_page_followers = false
bool has_page_family = false
Event OnConfigOpen()
EndEvent
int nPages = 0
event OnPageReset(string page)
Endevent
Event OnOptionSelect(Int option)
EndEvent
Int color_hireling  = 0x00FFFF
Int color_follower  = 0x0077FF
Int color_lover     = 0xFF7777
Int color_spouse    = 0xFF0077
Int color_housecarl = 0xFF7700
Int color_merchant  = 0x00FF77
Int color_slaver    = 0x7700FF
int color_amax    = 0x00FFFF
int color_ahig    = 0xFFFFAA
int color_aavg    = 0xFFFFFF
int color_alow    = 0xFF00FF
int color_max     = 0x00FF00
int color_hig     = 0xFFFF00
int color_avg     = 0xAAAAAA
int color_low     = 0xFF0000
Int color_hireling_OID
Int color_spouse_OID
Int color_lover_OID
Int color_follower_OID
Int color_slaver_OID
Int color_housecarl_OID
Int color_merchant_OID
Int color_max_OID
Int color_hig_OID
Int color_avg_OID
Int color_low_OID
Int color_amax_OID
Int color_ahig_OID
Int color_aavg_OID
Int color_alow_OID
String Function GetColorCode(Int m)
	Return ""
EndFunction
Int[] color_training_OID
Int[] color_slavers_OID
Function UpdateColorsPage()
EndFunction
string sort_criteria = ""
Int[] slave_OID
Int currentActor_OID = -1
Function UpdateSlaveRosterPage1()
EndFunction
Function UpdateSlaveRosterPage2()
EndFunction
Function UpdateSlaveRosterPage3()
EndFunction
Int[] slaver_OID
Function UpdateSlaverRosterPage()
EndFunction
Function UpdatePlayerRosterPage()
EndFunction
Function UpdateFollowerRosterPage()
EndFunction
Function UpdateFamilyRosterPage()
EndFunction
string Function ValueOption(float value, bool love_stat=false)
	Return ""
EndFunction
Function AddTextOptionForActorTraining2(string txt1, float val1, string txt2, float val2)
EndFunction
string Function TextOptionHouse(Actor akRef)
	Return ""
EndFunction
Function AddTextOptionForActorTraining(string txt1, float val1)
EndFunction
Function UpdateActorInfoPage(int idx, bool is_slave, bool is_player)
EndFunction
Function UpdateNPCInfoPage(int idx, bool is_follower)
EndFunction
float Function getAnglePlayer(Actor akRef)
	Return 0.0
EndFunction
string Function GetDirectionString(Actor akRef)
	Return ""
EndFunction
string Function GetDistanceString(Actor akRef)
	Return ""
EndFunction
string Function GetPositionString(Actor akRef)
	Return ""
EndFunction
Function UpdateGenderPage()
EndFunction
Int[] kinksFemale_OID
Function UpdateKinksFemalePage()
EndFunction
Int[] kinksMale_OID
Function UpdateKinksMalePage()
EndFunction
phhshStorageFunctions HSHQuest = None
Function UpdateCapturePage()
EndFunction
Function UpdateWheelmenuPage()
EndFunction
Function UpdateHotkeysPage()
EndFunction
Function UpdateOptionsPage()
EndFunction
Function UpdatePlayerPage()
EndFunction
Function UpdateDebugPage()
EndFunction
Function UpdatePersonalityPage()
EndFunction
Function UpdateAbusePage()
EndFunction
Function UpdateEquipmentPage()
EndFunction
Function UpdateNPCsPage()
EndFunction
Function UpdateNotificationsPage()
EndFunction
Function UpdateIdlesPage()
EndFunction
Event OnOptionHighLight(Int option)
EndEvent
Event OnOptionKeyMapChange(Int Option, Int keyCode, String conflictControl, String conflictName)
EndEvent
Function CloseMessage()
EndFunction
DOM_Actor displayedActor = None
Actor displayedNPC = None
Function DoActorRosterPage(Int option)
EndFunction
Function DoGenderPage(Int option)
EndFunction
Function DoKinksFemalePage(Int option)
EndFunction
Function DoKinksMalePage(Int option)
EndFunction
event OnOptionInputOpen(int a_option)
Endevent
event OnOptionInputAccept(int a_option, string a_input)
Endevent
Function DoCapturePage(Int option)
EndFunction
Function DoHotkeysPage(Int option)
EndFunction
Function DoWheelPage(Int option)
EndFunction
Function DoOptionsPage(Int option)
EndFunction
Function DoColorsPage(Int option)
EndFunction
Function DoDebugPage(Int option)
EndFunction
Function DoPersonalityPage(Int option)
EndFunction
Function DoAbusePage(Int option)
EndFunction
Function DoEquipmentPage(Int option)
EndFunction
Function DoPlayerPage(Int option)
EndFunction
Function DoNPCsPage(Int option)
EndFunction
Function DoNotificationsPage(Int option)
EndFunction
event OnOptionColorOpen(int option)
Endevent
event OnOptionColorAccept(int option, int color)
Endevent
Function DoIdlesPage(Int option)
EndFunction
Function SaveSettings()
EndFunction
Function SaveSettingsToFile(string fileName)
EndFunction
Function LoadSettings()
EndFunction
Function LoadSettingsFromFile(string fileName)
EndFunction
Function PlayerAddItemOnce(Form the_form)
EndFunction
Function ResetAllMemories()
EndFunction
Function ResetAllDiaries()
EndFunction
Function GetSlaverEquipment()
EndFunction
Function RegisterAnimations()
EndFunction
Function toggleAllAnims(bool enable)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
