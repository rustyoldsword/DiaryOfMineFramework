Scriptname DOM_Generator extends Quest
Import Utility
import DOM_Util

DOM_Core Property DOM01 Auto
DOM_Diary Property DOM04 Auto
DOM_Keys Property DOMKeys Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAZ Property DOMZaz Auto
DOM_SEXLAB Property DOMSexlab Auto
Faction Property DOMPotentialSlaverFaction Auto
Actor Property PlayerRef Auto

; Origin factions
Faction Property DOMPlaceOriginFaction Auto
Faction Property DOMJobOriginFaction Auto
Faction Property DOMEmployerOriginFaction Auto
Faction Property DOMTrainerOriginFaction Auto

; DOM Factions
Faction Property DOMHasPersonality Auto
Faction Property DOMPlayerSlaveFaction Auto
Faction Property DOMPlayerSlaverFaction Auto
Faction Property DOMNotPlayerSlaveFaction Auto
Faction Property DOMNotPlayerSlaverFaction Auto
Faction Property DOMRandomSeed Auto  ; to save Random seed of non unique NPC

; Moods
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

; Training
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
Faction Property DOMTrainSex Auto
Faction Property DOMTrainAnal Auto
Faction Property DOMTrainOral Auto
Faction Property DOMTrainVaginal Auto

; Skills
Faction Property DOMSkillEnforcer Auto      ; Submission
Faction Property DOMSkillPersuader Auto     ; Fear
Faction Property DOMSkillDepraver Auto      ; Humiliation
Faction Property DOMSkillPredator Auto      ; Anger
Faction Property DOMSkillSlaver Auto        ; Resignation
Faction Property DOMSkillDeceiver Auto      ; Respect

; Love syndrome
Faction Property DOMLoveDesire Auto
Faction Property DOMLoyalWorship Auto
Faction Property DOMLoveFascination Auto
Faction Property DOMLoyalAbsolution Auto
Faction Property DOMLoyalDevotion Auto
Faction Property DOMLoveAdmiration Auto

; Counters
Faction Property DOMNbSexualExperiences Auto
Faction Property DOMNbBrainwashed Auto
Faction Property DOMNbBroken Auto
Faction Property DOMNbComfort Auto
Faction Property DOMNbFlatter Auto
Faction Property DOMNbInsult Auto
Faction Property DOMNbOrgasm Auto
Faction Property DOMNbPain Auto
Faction Property DOMNbBondage Auto
Faction Property DOMNbPraise Auto
Faction Property DOMNbPromise Auto
Faction Property DOMNbRape Auto
Faction Property DOMNbDrug Auto
Faction Property DOMNbSex Auto
Faction Property DOMNbSexForMoney Auto
Faction Property DOMNbSexWithOthers Auto
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
Faction Property DOMNbRapedSlaves Auto
Faction Property DOMNbSoldSlaves Auto
Faction Property DOMNbWhoredSlaves Auto
Faction Property DOMNbPlayerFling Auto
Faction Property DOMNbPlayerChat Auto

; Virgin status
Faction Property DOMVirginVaginal Auto
Faction Property DOMVirginAnal Auto
Faction Property DOMVirginOral Auto
Faction Property DOMVirginSame Auto
Faction Property DOMVirginGangbang Auto

; Hidden kinks
Faction Property DOMHiddenKink0 Auto
Faction Property DOMHiddenKink1 Auto
Faction Property DOMHiddenKink2 Auto
Faction Property DOMHiddenKink3 Auto
Faction Property DOMHiddenKink4 Auto
Faction Property DOMHiddenKink5 Auto
Faction Property DOMHiddenKink6 Auto
Faction Property DOMHiddenKink7 Auto

; Personality traits
Faction Property DOMTraitHonesty Auto
Faction Property DOMTraitEmotionality Auto
Faction Property DOMTraitExtraversion Auto
Faction Property DOMTraitAgreeableness Auto
Faction Property DOMTraitConscientiousness Auto
Faction Property DOMTraitOpenness Auto

; Personality facets
Faction Property DOMFacetBoldness Auto
Faction Property DOMFacetWilfulness Auto
Faction Property DOMFacetSmartness Auto
Faction Property DOMFacetSensuality Auto
Faction Property DOMFacetToughness Auto
Faction Property DOMFacetSubmissivity Auto

; Factions
Faction Property ArenaFaction Auto
Faction Property ForswornFaction Auto
Faction Property BanditFaction Auto
Faction Property BladesFaction Auto 
Faction Property CWImperialFaction Auto
Faction Property CWImperialFactionNPC Auto
Faction Property CWSonsFaction Auto
Faction Property CWSonsFactionNPC Auto
Faction Property DarkBrotherhoodFaction Auto 
Faction Property HagravenFaction Auto
Faction Property IsGuardFaction Auto
Faction Property GuardDialogueFaction Auto
Faction Property NecromancerFaction Auto
Faction Property SilverHandFaction Auto
Faction Property ThalmorFaction Auto
Faction Property ThievesGuildFaction Auto
Faction Property VampireFaction Auto
Faction Property VigilantOfStendarrFaction Auto
Faction Property WarlockFaction Auto	;Warlocks
Faction Property WerewolfFaction Auto
Faction Property CompanionsFaction Auto
Faction Property DraugrAllyFaction Auto
Faction Property CaravanMerchant Auto
Faction Property HunterFaction Auto
Faction Property FavorJobsBeggarsFaction Auto

; Job factions
Faction Property JobApothecaryFaction Auto
Faction Property JobBardFaction Auto
Faction Property JobCourtWizardFaction Auto
Faction Property JobJusticiar Auto
Faction Property JobPriestFaction Auto
Faction Property JobOrcWiseWomanFaction Auto
Faction Property JobStewardFaction Auto
Faction Property JobMerchantFaction Auto
Faction Property JobBlacksmithFaction Auto
Faction Property JobFarmerFaction Auto
Faction Property JobLumberjackFaction Auto
Faction Property JobMinerFaction Auto
Faction Property JobTrainerFaction Auto
Faction Property JobFletcherFaction Auto
Faction Property JobJewelerFaction Auto
Faction Property JobTailorFaction Auto
Faction Property JobJarlFaction Auto
Faction Property JobFenceFaction Auto
Faction Property JobInnkeeperFaction Auto
Faction Property JobInnServer Auto
Faction Property PlayerHousecarlFaction Auto

; Employer factions
Faction Property DawnstarWhiteHallFaction Auto
Faction Property FalkreathJarlsLonghouseFaction Auto
Faction Property MarkarthCastleServantsFaction Auto
Faction Property MarkarthKeepFaction Auto
Faction Property MorthalLonghouseFaction Auto
Faction Property RiftenMistveilKeepFaction Auto
Faction Property SolitudeBluePalaceFaction Auto
Faction Property SolitudeBluePalaceServants Auto
Faction Property WhiterunDragonsReachServants Auto
Faction Property WindhelmPalace Auto
Faction Property WinterholdJarlFaction Auto

; Trainer factions
Faction Property JobTrainerAlchemyFaction Auto ; "Alchemy Trainer"
Faction Property JobTrainerAlterationFaction Auto ; "Alteration Trainer"
Faction Property JobTrainerBlockFaction Auto ; "Block Trainer"
Faction Property JobTrainerConjurationFaction Auto ; "Conjuration Trainer"
Faction Property JobTrainerDestructionFaction Auto ; "Destruction Trainer"
Faction Property JobTrainerEnchantingFaction Auto ; "Enchanting Trainer"
Faction Property JobTrainerHeavyArmorFaction Auto ; "HeavyArmor Trainer"
Faction Property JobTrainerIllusionFaction Auto ; "Illusion Trainer"
Faction Property JobTrainerLightArmorFaction Auto ; "LightArmor Trainer"
Faction Property JobTrainerLockpickingFaction Auto ; "Lockpicking Trainer"
Faction Property JobTrainerMarksmanFaction Auto ; "archery Trainer"
Faction Property JobTrainerOneHandedFaction Auto ; "OneHanded Trainer"
Faction Property JobTrainerPickpocketFaction Auto ; "PickpocketFaction Trainer"
Faction Property JobTrainerRestorationFaction Auto ; "Restoration Trainer"
Faction Property JobTrainerSmithingFaction Auto ; "Smithing Trainer"
Faction Property JobTrainerSneakFaction Auto ; "Sneak Trainer"
Faction Property JobTrainerSpeechcraftFaction Auto ; "Speechcraft Trainer"
Faction Property JobTrainerTwoHandedFaction Auto ; "TwoHanded Trainer"

; Ruler factions
Faction Property GovExiled Auto
Faction Property GovRuling Auto

; Crime factions
Faction Property CrimeFactionCidhnaMine Auto
Faction Property CrimeFactionEastMarch Auto
Faction Property CrimeFactionFalkreath Auto
Faction Property CrimeFactionGreybeard Auto
Faction Property CrimeFactionHaafingar Auto
Faction Property CrimeFactionHjaalmarch Auto
Faction Property CrimeFactionImperial Auto
Faction Property CrimeFactionKhajiitCaravans Auto
Faction Property CrimeFactionOrcs Auto
Faction Property CrimeFactionPale Auto
Faction Property CrimeFactionReach Auto
Faction Property CrimeFactionRift Auto
Faction Property CrimeFactionSons Auto
Faction Property CrimeFactionThievesGuild Auto
Faction Property CrimeFactionWhiterun Auto
Faction Property CrimeFactionWinterhold Auto
Faction Property DLC1VampireCrimeFaction Auto

; List of factions
FormList Property DOMListHEXACOFactions Auto
FormList Property DOMListTrainingFactions Auto
FormList Property DOMListCounterFactions Auto
FormList Property DOMListVirginFactions Auto

; Toggle
Message Property DOMPersonalityReadModeMessage Auto
bool Property readJSONTraitsWarning = true Auto Hidden
bool Property writeJSONTransfer = true Auto Hidden
bool Property writeJSONRelease = true Auto Hidden
bool Property readJSONForUniques = true Auto Hidden
bool Property readJSONForSpawned = true Auto Hidden
bool Property readJSONTraitsToggle = true Auto Hidden
bool Property ReadJSONRelationshipToggle = true Auto Hidden
bool Property ReadJSONVirginityToggle = true Auto Hidden
bool Property ReadJSONTrainingToggle = true Auto Hidden
bool Property ReadJSONKinksToggle = true Auto Hidden
bool Property ReadJSONMemoriesToggle = true Auto Hidden
bool Property printActorBonusesToggle = false Auto Hidden

Function Initialize()
	LogInfo("=============================================================================")
	LogInfo("==                             DOM: Generator                              ==")
	LogInfo("=============================================================================")
	if DOMZaz == None
		LogTrace("Recovering DOMZaz")
		DOMZaz = DOM01.DOMZaz
	endif
	FillFactionsList()
	ReadDescriptionsFile()
	ReadTraitBonusFile()
	PrintHexacoTable()
EndFunction

Function FillFactionsList()
	FillHEXACOFactionsList()
	FillTrainingFactionsList()
	FillVirginFactionsList()
	FillCounterFactionsList()
EndFunction

Function FillHEXACOFactionsList()
	if DOMListHEXACOFactions.GetSize() == 12
		return
	endif
	DOMListHEXACOFactions.Revert() ; Clears all added forms
	DOMListHEXACOFactions.AddForm(DOMTraitHonesty)    ; 0
	DOMListHEXACOFactions.AddForm(DOMTraitEmotionality)
	DOMListHEXACOFactions.AddForm(DOMTraitExtraversion)
	DOMListHEXACOFactions.AddForm(DOMTraitAgreeableness)
	DOMListHEXACOFactions.AddForm(DOMTraitConscientiousness)
	DOMListHEXACOFactions.AddForm(DOMTraitOpenness) ; 5
	DOMListHEXACOFactions.AddForm(DOMFacetWilfulness) ; 6
	DOMListHEXACOFactions.AddForm(DOMFacetToughness)
	DOMListHEXACOFactions.AddForm(DOMFacetSensuality)
	DOMListHEXACOFactions.AddForm(DOMFacetSubmissivity)
	DOMListHEXACOFactions.AddForm(DOMFacetBoldness)
	DOMListHEXACOFactions.AddForm(DOMFacetSmartness) ; 11
EndFunction

bool redo_trainingfactionlists = true
Function FillTrainingFactionsList()
	if DOMListTrainingFactions.GetSize() == 28 && !redo_trainingfactionlists
		return
	endif
	redo_trainingfactionlists = false
	DOMListTrainingFactions.Revert() ; Clears all added forms
	DOMListTrainingFactions.AddForm(DOMTrainSubmission)    ; 0
	DOMListTrainingFactions.AddForm(DOMTrainFear)
	DOMListTrainingFactions.AddForm(DOMTrainHumiliation)
	DOMListTrainingFactions.AddForm(DOMTrainAnger)
	DOMListTrainingFactions.AddForm(DOMTrainResignation)
	DOMListTrainingFactions.AddForm(DOMTrainRespect) ; 5
	DOMListTrainingFactions.AddForm(DOMLoveDesire) ; 6
	DOMListTrainingFactions.AddForm(DOMLoyalWorship)
	DOMListTrainingFactions.AddForm(DOMLoveFascination)
	DOMListTrainingFactions.AddForm(DOMLoyalAbsolution)
	DOMListTrainingFactions.AddForm(DOMLoyalDevotion) ; 10
	DOMListTrainingFactions.AddForm(DOMLoveAdmiration)
	DOMListTrainingFactions.AddForm(DOMSkillEnforcer) ; 12
	DOMListTrainingFactions.AddForm(DOMSkillPersuader)
	DOMListTrainingFactions.AddForm(DOMSkillDepraver)
	DOMListTrainingFactions.AddForm(DOMSkillPredator) ; 15
	DOMListTrainingFactions.AddForm(DOMSkillSlaver)
	DOMListTrainingFactions.AddForm(DOMSkillDeceiver)
	DOMListTrainingFactions.AddForm(DOMTrainVaginal) ; 18
	DOMListTrainingFactions.AddForm(DOMTrainSex)
	DOMListTrainingFactions.AddForm(DOMTrainAnal) ; 20
	DOMListTrainingFactions.AddForm(DOMTrainOral)
	DOMListTrainingFactions.AddForm(DOMTrainPose)
	DOMListTrainingFactions.AddForm(DOMTrainHouse)
	DOMListTrainingFactions.AddForm(DOMTrainWorking) ; 24
	DOMListTrainingFactions.AddForm(DOMTrainCombat) ; 25
	DOMListTrainingFactions.AddForm(DOMTraumaInDays)
	DOMListTrainingFactions.AddForm(DOMEnslavedInDays) ; 27
EndFunction

Function FillVirginFactionsList()
	if DOMListVirginFactions.GetSize() == 5
		return
	endif
	DOMListVirginFactions.Revert() ; Clears all added forms
	DOMListVirginFactions.AddForm(DOMVirginVaginal)    ; 0
	DOMListVirginFactions.AddForm(DOMVirginGangbang)
	DOMListVirginFactions.AddForm(DOMVirginAnal)
	DOMListVirginFactions.AddForm(DOMVirginOral)
	DOMListVirginFactions.AddForm(DOMVirginSame) ; 4
EndFunction

Function FillCounterFactionsList()
	if DOMListCounterFactions.GetSize() == 34
		return
	endif
	DOMListCounterFactions.Revert() ; Clears all added forms
	DOMListCounterFactions.AddForm(DOMNbPain)    ; 0
	DOMListCounterFactions.AddForm(DOMNbToldoff)
	DOMListCounterFactions.AddForm(DOMNbpraise)
	DOMListCounterFactions.AddForm(DOMNbcomfort)
	DOMListCounterFactions.AddForm(DOMNbinsult)
	DOMListCounterFactions.AddForm(DOMNbflatter)
	DOMListCounterFactions.AddForm(DOMNbThreat)
	DOMListCounterFactions.AddForm(DOMNbpromise)
	DOMListCounterFactions.AddForm(DOMNbBondage)
	DOMListCounterFactions.AddForm(DOMNbShame)
	DOMListCounterFactions.AddForm(DOMNbDrug)   ; 10
	DOMListCounterFactions.AddForm(DOMNbRape)
	DOMListCounterFactions.AddForm(DOMNbSex)
	DOMListCounterFactions.AddForm(DOMNbSexForMoney)
	DOMListCounterFactions.AddForm(DOMNbSexWithOthers)
	DOMListCounterFactions.AddForm(DOMNborgasm)
	DOMListCounterFactions.AddForm(DOMNbSexualExperiences)
	DOMListCounterFactions.AddForm(DOMNbKinkTrigger)
	DOMListCounterFactions.AddForm(DOMNbChatFeelings)
	DOMListCounterFactions.AddForm(DOMNbChatPersonality)
	DOMListCounterFactions.AddForm(DOMNbShock) ; 20
	DOMListCounterFactions.AddForm(DOMNbBroken)
	DOMListCounterFactions.AddForm(DOMNbBrainwashed)
	DOMListCounterFactions.AddForm(DOMNbTrainee)
	DOMListCounterFactions.AddForm(DOMNbTrainer)
	DOMListCounterFactions.AddForm(DOMNbRecruitedSlavers)
	DOMListCounterFactions.AddForm(DOMNbWhoredSlaves)
	DOMListCounterFactions.AddForm(DOMNbRansomedSlaves)
	DOMListCounterFactions.AddForm(DOMNbCapturedSlaves)
	DOMListCounterFactions.AddForm(DOMNbBrokenSlaves)
	DOMListCounterFactions.AddForm(DOMNbRapedSlaves) ; 30
	DOMListCounterFactions.AddForm(DOMNbSoldSlaves)
	DOMListCounterFactions.AddForm(DOMNbPlayerFling)
	DOMListCounterFactions.AddForm(DOMNbPlayerChat) ; 33
EndFunction

bool Function IsFacetDependsOn(int ifacet, int itrait)
	if itrait < 0
		return true
	endif
	itrait += 1
	if Math.Abs(__facetMod1[ifacet]) == itrait
		return true
	endif
	if Math.Abs(__facetMod2[ifacet]) == itrait
		return true
	endif
	if Math.Abs(__facetMod3[ifacet]) == itrait
		return true
	endif
	return false
EndFunction

float Function GetFacet(float trait, float PRISM_a, float PRISM_b)
	; personality trait between 0 to 100
	;LogTrace("HEXACO trait="+trait+" prism_a="+PRISM_a+" prism_b="+PRISM_b)
	float facet = 3.0 * trait + 2.0*PRISM_a + PRISM_b
	facet = facet / 600.0
	if facet < 0.0
		facet = 0.0
	elseif facet > 100.0
		facet = 100.0
	endif
	;LogTrace("facet="+facet)
	facet = FacetToModifier(facet)
	;LogTrace("modifier="+facet)
	return facet
EndFunction

float Function GetFacetByIndex(int imod, float[] Traits)
	if imod < 0 || imod >= __facetMod1.Length
		LogTrace("GetFacetByIndex ERROR Facet index is out of range:"+imod+" / "+__facetMod1.Length)
		return 0.5
	endif
	if Traits.Length < 12
		LogTrace("GetFacetByIndex ERROR Traits array size is wrong:"+imod+" / "+Traits.Length)
		return 0.5
	endif
	bool invert = false
	int itrait = __facetMod1[imod]
	if itrait < 0
		invert = true
		itrait = -itrait
	endif
	float hexaco_trait = Traits[itrait-(1)]
	if invert
		hexaco_trait = 100.0-hexaco_trait
		invert = false
	endif
	int iprism1 = __facetMod2[imod]
	if iprism1 < 0
		invert = true
		iprism1 = -iprism1
	endif
	float PRISM_a = Traits[iprism1-(1)]
	if invert
		PRISM_a = 100.0-PRISM_a
		invert = false
	endif
	int iprism2 = __facetMod3[imod]
	if iprism2 < 0
		invert = true
		iprism2 = -iprism2
	endif
	float PRISM_b = Traits[iprism2-(1)]
	if invert
		PRISM_b = 100.0-PRISM_b
	endif
	float mod = GetFacet(hexaco_trait, PRISM_a, PRISM_b)
	;LogTrace("GetFacetByIndex "+imod+" "+hexaco_trait+" "+PRISM_a+" "+PRISM_b+" = "+mod)
	return mod
EndFunction

float Function GetInverseFacetByIndex(int imod, float[] Traits)
	if imod < 0 || imod >= __facetMod1.Length
		LogTrace("GetInverseFacetByIndex ERROR Inverse Facet index is out of range:"+imod+" / "+__facetMod1.Length)
		return 0.5
	endif
	if Traits.Length < 12
		LogTrace("GetInverseFacetByIndex ERROR Traits array size is wrong:"+imod+" / "+Traits.Length)
		return 0.5
	endif
	bool invert = false
	int itrait = -(__facetMod1[imod])
	if itrait < 0
		invert = true
		itrait = -itrait
	endif
	float hexaco_trait = Traits[itrait-(1)]
	if invert
		hexaco_trait = 100.0-hexaco_trait
		invert = false
	endif
	int iprism1 = -(__facetMod2[imod])
	if iprism1 < 0
		invert = true
		iprism1 = -iprism1
	endif
	float PRISM_a = Traits[iprism1-(1)]
	if invert
		PRISM_a = 100.0-PRISM_a
		invert = false
	endif
	int iprism2 = -(__facetMod3[imod])
	if iprism2 < 0
		invert = true
		iprism2 = -iprism2
	endif
	float PRISM_b = Traits[iprism2-(1)] 
	if invert
		PRISM_b = 100.0-PRISM_b
	endif
	float mod = GetFacet(hexaco_trait, PRISM_a, PRISM_b)
	;LogTrace("GetInverseFacetByIndex "+imod+" "+hexaco_trait+" "+PRISM_a+" "+PRISM_b+" = "+mod)
	return mod
EndFunction

Function PrintHexacoTable()
	if !DOM01.verboseMode
		return
	endif
	
	; Print HEXACO Facets and Extras
	Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
	Debug.Trace("DOM_Generator: | HEXACO facet     | trait            | 1st prism        | 2nd prism        |")
	Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
	int n = __facetNames.length
	int i = 0
	while i < n
		int imod = i
		bool invert_trait = false
		string pred_trait = "+"
		int itrait = __facetMod1[imod]
		if itrait < 0
			invert_trait = true
			itrait = -itrait
		endif
		itrait -= 1
		if invert_trait
			pred_trait = "-"
		endif
		bool invert_prism1 = false
		string pred_prism1 = "+"
		int iprism1 = __facetMod2[i]
		if iprism1 < 0
			invert_prism1 = true
			iprism1 = -iprism1
		endif
		iprism1 -= 1
		if invert_prism1
			pred_prism1 = "-"
		endif
		bool invert_prism2 = false
		string pred_prism2 = "+"
		int iprism2 = __facetMod3[i]
		if iprism2 < 0
			invert_prism2 = true
			iprism2 = -iprism2
		endif
		iprism2 -= 1
		if invert_prism2
			pred_prism2 = "-"
		endif
		if imod == 0 || imod == 7 || imod == 21 || imod == 28
			Debug.trace("DOM_Generator: | * "+LeadString(__facetNames[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
		elseif imod == 37 || imod == 13 || imod == 40 || imod == 41
			Debug.trace("DOM_Generator: | # "+LeadString(__facetNames[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
		elseif imod == 14 || imod == 35
			Debug.trace("DOM_Generator: | - "+LeadString(__facetNames[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
		elseif imod == 1 || imod == 23
			Debug.trace("DOM_Generator: | _ "+LeadString(__facetNames[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
		else
			Debug.trace("DOM_Generator: | "+LeadString(__facetNames[imod],16)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
		endif
		i += 1
		if i == 36
			Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
			Debug.Trace("DOM_Generator: | Extra facet      | trait            | 1st prism        | 2nd prism        |")
			Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
		elseif (i%6) == 0
			Debug.Trace("DOM_Generator: +------------------+------------------+------------------+------------------+")
		endif			
	endwhile

	; Print inverse
	Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
	Debug.Trace("DOM_Generator: | Inverse facet    | trait            | 1st prism        | 2nd prism        |")
	Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
	n = __facetInverse.length
	i = 0
	while i < n
		if __facetInverse[i] != ""
			int imod = i
			bool invert_trait = false
			string pred_trait = "+"
			int itrait = -(__facetMod1[imod])
			if itrait < 0
				invert_trait = true
				itrait = -itrait
			endif
			itrait -= 1
			if invert_trait
				pred_trait = "-"
			endif
			bool invert_prism1 = false
			string pred_prism1 = "+"
			int iprism1 = -(__facetMod2[i])
			if iprism1 < 0
				invert_prism1 = true
				iprism1 = -iprism1
			endif
			iprism1 -= 1
			if invert_prism1
				pred_prism1 = "-"
			endif
			bool invert_prism2 = false
			string pred_prism2 = "+"
			int iprism2 = -(__facetMod3[i])
			if iprism2 < 0
				invert_prism2 = true
				iprism2 = -iprism2
			endif
			iprism2 -= 1
			if invert_prism2
				pred_prism2 = "-"
			endif
			if imod == 14 || imod == 35
				Debug.trace("DOM_Generator: | * "+LeadString(__facetInverse[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
			elseif imod == 1 || imod == 23
				Debug.trace("DOM_Generator: | # "+LeadString(__facetInverse[imod],14)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
			else
				Debug.trace("DOM_Generator: | "+LeadString(__facetInverse[imod],16)+" | "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" | "+__facetdescs[imod])
			endif
		endif
		i += 1
	endwhile
	Debug.Trace("DOM_Generator: +==================+==================+==================+==================+")
EndFunction

Function PrintHEXACOResults(string title, Actor akTarget, float[] HEXACO_TRAITS, float[] HEXACO_FACETS, float[] HEXACO_INVERSE_FACETS)
	if akTarget == None
		Debug.Trace(title+"Personality traits, facets and modifiers: id=NONE")
		return
	endif

	actorBase abTarget = akTarget.GetLeveledActorBase()
	int formID = Math.LogicalAnd(abTarget.GetFormID(), 0xFFFFFF)
	String IDstr = DOM_Util.ConvertIDToHex(formID)
	bool[] wasTraitPrinted = new bool[12]

	Debug.Trace(title+TailString("Personality traits, prisms and facet modifiers: id="+IDstr,64))
	Debug.Trace(title+"+===================+==================+==================+==================+==================+")
	int n = __facetNames.length
	int i = 0
	while i < n
		int imod = i
		bool invert_trait = false
		string pred_trait = "+"
		int itrait = __facetMod1[imod]
		if itrait < 0
			invert_trait = true
			itrait = -itrait
		endif
		itrait -= 1
		if invert_trait
			pred_trait = "-"
		endif
		bool invert_prism1 = false
		string pred_prism1 = "+"
		int iprism1 = __facetMod2[i]
		if iprism1 < 0
			invert_prism1 = true
			iprism1 = -iprism1
		endif
		iprism1 -= 1
		if invert_prism1
			pred_prism1 = "-"
		endif
		bool invert_prism2 = false
		string pred_prism2 = "+"
		int iprism2 = __facetMod3[i]
		if iprism2 < 0
			invert_prism2 = true
			iprism2 = -iprism2
		endif
		iprism2 -= 1
		if invert_prism2
			pred_prism2 = "-"
		endif
		if !wasTraitPrinted[itrait] && itrait < 6
			Debug.Trace(title+"|"+TailString(" "+__traitNames[itrait],18)+" =           "+LeadString(HEXACO_TRAITS[itrait],6)+    " | [ Trait ]        |                  |                  |")
			Debug.Trace(title+"|"+TailString(" "+__traitNames[itrait+6],18)+" =           "+LeadString(HEXACO_TRAITS[itrait+6],6)+" | [ Prism ]        |                  |  / [ Modifiers ] |")
			wasTraitPrinted[itrait] = true
		endif
		if imod < 36 && (itrait + 6) == iprism1 && itrait < 6 && imod != 35 && imod != 14
			Debug.Trace(title+"| * "+TailString(__facetNames[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_FACETS[imod]*100.0,16)+" |")
		elseif imod == 37 || imod == 13 || imod == 40 || imod == 41
			Debug.Trace(title+"| # "+TailString(__facetNames[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_FACETS[imod]*100.0,16)+" |")
		elseif imod == 14 || imod == 35
			Debug.Trace(title+"| - "+TailString(__facetNames[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_FACETS[imod]*100.0,16)+" |")
		elseif imod == 1 || imod == 23
			Debug.Trace(title+"| _ "+TailString(__facetNames[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_FACETS[imod]*100.0,16)+" |")
		else
			Debug.Trace(title+"|   "+TailString(__facetNames[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_FACETS[imod]*100.0,16)+" |")
		endif
		i += 1
		if (i%6) == 0
			Debug.Trace(title+"+-------------------+------------------+------------------+------------------+------------------+")
		endif			
	endwhile

	Debug.Trace(title+"+-------------------+------------------+------------------+------------------+------------------+")
	n = __facetInverse.length
	i = 0
	while i < n
		if __facetInverse[i] != ""
			int imod = i
			bool invert_trait = false
			string pred_trait = "+"
			int itrait = -(__facetMod1[imod])
			if itrait < 0
				invert_trait = true
				itrait = -itrait
			endif
			itrait -= 1
			if invert_trait
				pred_trait = "-"
			endif
			bool invert_prism1 = false
			string pred_prism1 = "+"
			int iprism1 = -(__facetMod2[i])
			if iprism1 < 0
				invert_prism1 = true
				iprism1 = -iprism1
			endif
			iprism1 -= 1
			if invert_prism1
				pred_prism1 = "-"
			endif
			bool invert_prism2 = false
			string pred_prism2 = "+"
			int iprism2 = -(__facetMod3[i])
			if iprism2 < 0
				invert_prism2 = true
				iprism2 = -iprism2
			endif
			iprism2 -= 1
			if invert_prism2
				pred_prism2 = "-"
			endif
			if imod == 35 || imod == 14
				Debug.Trace(title+"| * "+TailString(__facetInverse[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_INVERSE_FACETS[imod]*100.0,16)+" |")
			elseif imod == 1 || imod == 14 || imod == 23
				Debug.Trace(title+"| # "+TailString(__facetInverse[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_INVERSE_FACETS[imod]*100.0,16)+" |")
			else
				Debug.Trace(title+"|   "+TailString(__facetInverse[imod],15)+" = "+LeadString(pred_trait+__traitNames[itrait],16)+" | "+LeadString(pred_prism1+__traitNames[iprism1],16)+" | "+LeadString(pred_prism2+__traitNames[iprism2],16)+" = "+LeadString(HEXACO_INVERSE_FACETS[imod]*100.0,16)+" |")
			endif
		endif
		i += 1
	endwhile

	Debug.Trace(title+"+===================+==================+==================+==================+==================+")
EndFunction

Function SetDescriptionsFileIntValue(string KeyName, int index, int value)
	string fileName = "Diary Of Mine/Descriptions.json"
	if !JsonUtil.JsonExists(fileName)
		;LogTrace("SetDescriptionsFileIntValue: Skipping! File already exists: "+fileName)
		return
	endif
	LogTrace("SetDescriptionsFileIntValue: "+keyName+" idx="+index+" value="+value+" was="+JsonUtil.IntListGet(fileName,keyName,index))
	JsonUtil.IntListSet(fileName,keyName,index,value)
	JsonUtil.Save(fileName)
EndFunction

Function WriteDescriptionsFile(string fileName)
	if JsonUtil.JsonExists(fileName)
		;LogTrace("WriteDescriptionsFile: Skipping! File already exists: "+fileName)
		return
	endif
	LogTrace("WriteDescriptionsFile: WRITING "+fileName)

	JsonUtil.StringListAdd(fileName,"huddescs", "Writers",false) ; Writers: Slaves write their diary
	JsonUtil.StringListAdd(fileName,"huddescs", "Readers",false) ; Readers: Slavers too but they should mostly read the slaves to learn their secrets

	JsonUtil.StringListAdd(fileName,"personalitydescs", "plain",false)	; 0
	JsonUtil.StringListAdd(fileName,"personalitydescs", "manipulative",false)	; 1
	JsonUtil.StringListAdd(fileName,"personalitydescs", "apathetic",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "languid",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "obstinate",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "reckless",false) ; 5
	JsonUtil.StringListAdd(fileName,"personalitydescs", "brash",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "ruthless",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "shiftless",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "commanding",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "austere",false) ; 10
	JsonUtil.StringListAdd(fileName,"personalitydescs", "listless",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "feckless",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "conventional",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "stolid",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "guileless",false) ; 15
	JsonUtil.StringListAdd(fileName,"personalitydescs", "fiery",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "exuberant",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "meek",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "delicate",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "contemplative",false) ; 20
	JsonUtil.StringListAdd(fileName,"personalitydescs", "lambent",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "wise",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "timid",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "vivacious",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "steadfast",false) ; 25
	JsonUtil.StringListAdd(fileName,"personalitydescs", "stoic",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "audacious",false)
	JsonUtil.StringListAdd(fileName,"personalitydescs", "magnanimous",false) ; 28

	JsonUtil.StringListAdd(fileName,"feelmessage08", "<MSTR> better keep distance from me!",false)	; submission
	JsonUtil.StringListAdd(fileName,"feelmessage08", "I have defeated enemies more impressive than <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage08", "I would rather die than let <MSTR> touch me.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage08", "When I get free <MSTR> will regret this",false)
	JsonUtil.StringListAdd(fileName,"feelmessage08", "I will escape in no time from <MSTR>'s hell.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage08", "I will make <MSTR> pay for what happened to me!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage16", "<MSTR> better not dare to hurt me one more time.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage16", "I am not afraid of <MSTR>.",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage16", "<MSTR> better not dare touching me!",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage16", "Who does <MSTR> think they are?",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage16", "There must be a way out of this hell.",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage16", "<MSTR> has no right to give me orders!",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage34", "What does <MSTR> want from me?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage34", "What is going to happen to me?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage34", "<MSTR> should never try to touch me ever again!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage34", "<MSTR>'ll pay for what happened to me!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage34", "Am I never going to escape this hell?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage34", "This is for sure a mistake, I have another destiny.",false)	
	JsonUtil.StringListAdd(fileName,"feelmessage50", "I will learn, I promised to <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage50", "I will be good, but <MSTR> has to stop shouting.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage50", "<MSTR> disgusts me!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage50", "Why me? Did I do something wrong?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage50", "Will someone ever come and rescue me?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage50", "I feel it's this or the slave market.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "I hope <MSTR> doesn't hurt me anymore.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "If <MSTR> shows some lenience, I will behave.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "How did I let this happen?",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "I get it, <MSTR> has the power!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "I guess this is my life now.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage66", "I feel so worthless.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "Mercy! I will do whatever <MSTR> wants!",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "I surrender, but this crazyness has to stop.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "I feel so humiliated.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "I didn't mean to provoke <MSTR>'s anger.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "I stopped thinking long ago, I just obey blindly.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage84", "I hope <MSTR> knows I can be useful.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I am an obedient slave. I hope <MSTR> will be gentle with me.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I am always listening to <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I feel so dirty and degraded. I hope <MSTR> is proud of me.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I feel so sorry for my behaviour, I will try my best for <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I'll do everything <MSTR> says.",false)
	JsonUtil.StringListAdd(fileName,"feelmessage92", "I hope <MSTR>, does not get rid of me.",false)

	JsonUtil.StringListAdd(fileName,"lovemessage08", "I wish <MSTR> would spend more time with me.",false)	; submission
	JsonUtil.StringListAdd(fileName,"lovemessage08", "I would be foolish to provoke <MSTR>'s wrath.",false)	
	JsonUtil.StringListAdd(fileName,"lovemessage08", "I am learning to be a good pet.",false)	
	JsonUtil.StringListAdd(fileName,"lovemessage08", "<MSTR> is not perfect, but I am not perfect either.",false)	
	JsonUtil.StringListAdd(fileName,"lovemessage08", "I am at <MSTR>'s service.",false)	
	JsonUtil.StringListAdd(fileName,"lovemessage08", "This humble slave only wish is to serve <MSTR>.",false)	
	JsonUtil.StringListAdd(fileName,"lovemessage16", "I hope <MSTR> uses me soon again.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage16", "<MSTR> is so strong.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage16", "I didn't think I would enjoy this as much.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage16", "I understand it's not all <MSTR>'s fault.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage16", "It is my duty to serve <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage16", "I would be so honoured to be <MSTR>'s sex slave.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "I get the shivers when <MSTR> gives me orders.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "Our enemies are no match to <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "I love being objectified.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "All is forgiven, <MSTR> should be forgiven too.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "I am at <MSTR>'s disposal.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage34", "I long for the touch of <MSTR>'s hands.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "I love it when <MSTR> gives me orders!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "I believe <MSTR> is indeed the Dragonborn.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "<MSTR> can dispose of me at will.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "<MSTR> knows better what's good for me!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "It is my pleasure to serve <MSTR>.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage50", "One look from <MSTR> is all I need!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "I am here for <MSTR> free use!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "<MSTR> is truly unrivalled!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "I hope I am a good pet for <MSTR>!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "<MSTR> is an example for us all.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "I am here standing at <MSTR>'s orders!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage66", "I literally melt when <MSTR> looks at me.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "I am <MSTR>'s proud sex slave!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "<MSTR> is certainly one of the divines!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "I am <MSTR>'s horny pet!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "I wish I was like <MSTR>, flawless!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "<MSTR> is magnificent and <MSTR>'s wishes, are my orders!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage84", "<MSTR> is the one and only one!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "I live only to fulfil <MSTR>'s desires!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "<MSTR> is the one and only god!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "I live to be <MSTR>'s thing!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "<MSTR> is perfect, and I am trying hard to be too.",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "I would die for <MSTR>!",false)
	JsonUtil.StringListAdd(fileName,"lovemessage92", "I shout your name to the sky: <MSTR>!",false)

	JsonUtil.StringListAdd(fileName,"npcsmessage08", "better than ever",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage08", "relaxed",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage08", "holier than you",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage08", "rebellious",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage08", "joyful",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage08", "free",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "good",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "calm",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "amazing",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "defiant",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "happy",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage16", "relieved",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "none of your business",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "tranquil",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "proud",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "obstinated",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "merry",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage34", "satisfied",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "a bit passive",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "worried",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "easy",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "good",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "at peace",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage50", "ok",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "kind of passive",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "annoyed",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "ashamed",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "bitter",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "down",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage66", "meek",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "passive",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "irritated",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "humiliated",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "suppressed",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "sad",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage84", "resigned",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "docile",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "anxious",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "degraded",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "tamed",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "broken",false)
	JsonUtil.StringListAdd(fileName,"npcsmessage92", "branded",false)

	JsonUtil.StringListAdd(fileName,"npc2message08", "great",false)
	JsonUtil.StringListAdd(fileName,"npc2message08", "intimidated",false)
	JsonUtil.StringListAdd(fileName,"npc2message08", "aroused",false)
	JsonUtil.StringListAdd(fileName,"npc2message08", "indulgent",false)
	JsonUtil.StringListAdd(fileName,"npc2message08", "helpful",false)
	JsonUtil.StringListAdd(fileName,"npc2message08", "hooked",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "really great",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "admirative",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "excited",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "understanding",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "committed",false)
	JsonUtil.StringListAdd(fileName,"npc2message16", "charmed",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "awesome",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "dedicated",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "lustful",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "forgiving",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "reliable",false)
	JsonUtil.StringListAdd(fileName,"npc2message34", "bewitched",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "sublime",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "converted",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "captivated",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "dazzled",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "entrusted",false)
	JsonUtil.StringListAdd(fileName,"npc2message50", "passionate",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "desirable",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "in awe",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "hypnotized",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "blinded",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "trusted",false)
	JsonUtil.StringListAdd(fileName,"npc2message66", "infatuated",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "sexy",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "zealous",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "enraptured",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "transformed",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "faithful",false)
	JsonUtil.StringListAdd(fileName,"npc2message84", "enamoured",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "horny",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "fanatical",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "fascinated",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "under a spell",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "devoted",false)
	JsonUtil.StringListAdd(fileName,"npc2message92", "in love",false)

	JsonUtil.StringListAdd(fileName,"traitmessagelow", "against rules",false)	; 0
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "calm",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "shy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "grumpy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "lazy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "conservative",false) ; 5
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "weak-willed",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "delicate",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "frigid",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "dominant",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "needy",false) ; 10
	JsonUtil.StringListAdd(fileName,"traitmessagelow", "stupid",false) ; 11

	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "mean",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "fearless",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "modest",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "bitchy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "a leech",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "conventional",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "spineless",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "ticklish",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "prude",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "a pervert",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "an attention whore",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc1", "stubborn",false)

	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "narcissistic",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "careful",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "reserved",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "arrogant",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "efficient",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "protective",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "a follower",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "hypersensitive",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "bitter",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "a sicko",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "clingy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagelc2", "a brute",false)

	JsonUtil.StringListAdd(fileName,"traitmessagehig", "honest",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "anxious",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "outgoing",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "friendly",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "lazy",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "conservative",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "strong-willed",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "tough",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "sensual",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "submissive",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "independent",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehig", "smart",false)

	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "naive",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "sentimental",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "slutty",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "patient",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "perfectionist",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "flexible",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "organized",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "a cold person",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "a libertine",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "demanding",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "spirited",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc1", "serious",false)

	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "gentle",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "a drama queen",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "a fury",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "sociable",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "dull",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "forgiving",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "courageous",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "reclusive",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "frustrated",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "a whore",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "adventurous",false)
	JsonUtil.StringListAdd(fileName,"traitmessagehc2", "sadistic",false)

	JsonUtil.IntListAdd(fileName,"traitcorrellc1", -5,true) ; 0
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 10,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 0,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 2,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", -5,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", -8,true) ; 5
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", -10,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 8,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 0,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 11,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 2,true); 10
	JsonUtil.IntListAdd(fileName,"traitcorrellc1", 6,true)

	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 2,true) ; 0
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 4,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 10,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", -5,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 6,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 3,true) ; 5
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 10,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 1,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", -3,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", -5,true)
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", 6,true) ; 10
	JsonUtil.IntListAdd(fileName,"traitcorrellc2", -5,true)

	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", -11,true) ; 0
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 3,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 8,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", -1,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 1,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", -1,true) ; 5
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 4,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", -8,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 5,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 2,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 2,true) ; 10
	JsonUtil.IntListAdd(fileName,"traitcorrelhc1", 0,true)

	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 3,true) ; 0
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 2,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 6,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 2,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", -11,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 3,true) ; 5
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 10,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", -2,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", -3,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 8,true)
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", 7,true) ; 10
	JsonUtil.IntListAdd(fileName,"traitcorrelhc2", -5,true)
 
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "doing nothing",false)	; 0
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "dead",false)	; 1
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "leashed",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "bagged",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "on duty",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "busying around",false) ; 5
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "waiting",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "following",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "following trainer",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "moving",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "fleeing",false) ; 10
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "running away",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "posing",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "masturbating",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being tied",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being chained",false) ; 15
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being restrained",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being restrained in furniture",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "using furniture",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "punishing a trainee",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "fetching a trainee",false) ; 20
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "punishing trainees",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "having sex with a trainee",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "fetching a trainee for sex",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "preparing for sexual training",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "having an orgy with trainees",false) ; 25
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "fetching trainees for sex",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "preparing for an orgy",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "cleaning",false) ; clean_house
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "guarding",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "travelling",false) ; 30
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "standing in jail",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "jailed",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being restrained in jail",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "going to jail",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "showering",false) ; 35
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "working",false)
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "cleaning",false) ; on_duty_clean
	JsonUtil.StringListAdd(fileName,"behaviourstatus", "being restrained in device",false)

	JsonUtil.StringListAdd(fileName,"moodstatus", "empty minded",false)	; 0
	JsonUtil.StringListAdd(fileName,"moodstatus", "recently captured",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "angry",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "afraid",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "terrified",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "scared",false) ; 5
	JsonUtil.StringListAdd(fileName,"moodstatus", "ashamed",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "sad",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "in shock",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "broken",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "ok",false) ; 10	
	JsonUtil.StringListAdd(fileName,"moodstatus", "fine",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "happy",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "loyal",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "in love",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "not happy",false)	; 15
	JsonUtil.StringListAdd(fileName,"moodstatus", "insecure",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "annoyed",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "outraged",false)	; "defiant"
	JsonUtil.StringListAdd(fileName,"moodstatus", "crushed",false)	
	JsonUtil.StringListAdd(fileName,"moodstatus", "offended",false)	; 20 "proud"
	JsonUtil.StringListAdd(fileName,"moodstatus", "charmed",false)	; 21
	JsonUtil.StringListAdd(fileName,"moodstatus", "surprised",false) ; should never happen	

	JsonUtil.StringListAdd(fileName,"mooddescs", "an empty minded ",false)	; 0
	JsonUtil.StringListAdd(fileName,"mooddescs", "a freshly captured ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "an angry ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a fearful ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a terrified ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a scared ",false) ; 5
	JsonUtil.StringListAdd(fileName,"mooddescs", "a shamed ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a sobbing ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a shocked ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a broken ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "",false) ; 10	neutral
	JsonUtil.StringListAdd(fileName,"mooddescs", "a content ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a happy ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a loyal ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a loving ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "an unhappy ",false)	; 15
	JsonUtil.StringListAdd(fileName,"mooddescs", "an insecure ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a jealous ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a rebellious ",false)	; "defiant"
	JsonUtil.StringListAdd(fileName,"mooddescs", "a weeping ",false)	
	JsonUtil.StringListAdd(fileName,"mooddescs", "a proud ",false)	; 20 "proud"
	JsonUtil.StringListAdd(fileName,"mooddescs", "a charmed ",false)  ; 21
	JsonUtil.StringListAdd(fileName,"mooddescs", "a surprised",false) ; should never happen	

	JsonUtil.StringListAdd(fileName,"trainingstatus", "freshly captured",false)	; 0
	JsonUtil.StringListAdd(fileName,"trainingstatus", "untamed",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "degraded",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "abused",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "objectified",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "tamed",false) ; 5
	JsonUtil.StringListAdd(fileName,"trainingstatus", "forced",false) ; 6
	JsonUtil.StringListAdd(fileName,"trainingstatus", "dominated",false) ; 7
	JsonUtil.StringListAdd(fileName,"trainingstatus", "subjugated",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "terrorized",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "enslaved",false) ; 10
	JsonUtil.StringListAdd(fileName,"trainingstatus", "subdued",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "debased",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "demeaned",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "disgraced",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "shamed",false) ; 15
	JsonUtil.StringListAdd(fileName,"trainingstatus", "submitted",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "humiliated",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "resignated",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "unbroken",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "mesmerized",false) ; 20
	JsonUtil.StringListAdd(fileName,"trainingstatus", "ravished",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "bewitched",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "charmed",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "brainwashed",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "hypnotized",false) ; 25
	JsonUtil.StringListAdd(fileName,"trainingstatus", "devoted",false)
	JsonUtil.StringListAdd(fileName,"trainingstatus", "enraptured",false) ; 27

	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xC2E8FF,false)	; 0 "freshly captured"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xA2B8DE,false)	; 1 "untamed"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x8898CC,false)	; 2 "degraded"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x6070BB,false)	; 3 "abused"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x484AAA,false)	; 4 "objectified"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xF2D766,false)	; 5 "tamed"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xE8CC5D,false)	; 6 "forced"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xD0A448,false)	; 7 "dominated"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xE89730,false)	; 8 "subjugated"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xF07818,false)	; 9 "terrorized"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xF8460A,false)	; 10 "enslaved"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x06FE21,false)	; 11 "subdued"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x08DB32,false)	; 12 "debased"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x0ACF43,false)	; 13 "demeaned"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x0DB250,false)	; 14 "disgraced"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x10A36E,false)	; 15 "shamed"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x28937E,false)	; 16 "submitted"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x39876F,false)	; 17 "humiliated"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x47715E,false)	; 18 "resignated"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xD2F8FF,false)	; 19 "unbroken" 
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xFE00FD,false)	; 20 "mesmerized"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xEF2EFB,false)	; 21 "ravished"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xDF45FB,false)	; 22 "bewitched"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xCF85FB,false)	; 23 "charmed"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xBF6DF3,false)	; 24 "brainwashed"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0xAF4CFD,false)	; 25 "hypnotized"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x9F24F3,false)	; 26 "devoted"
	JsonUtil.IntListAdd(fileName,"trainingcolor", 0x8803FE,false)	; 27 "enraptured"
	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "rookie",false)	; 0
	JsonUtil.StringListAdd(fileName,"slaverstatus", "enforcer",false)	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "persuader",false)	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "depraver",false)	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "predator",false)	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "deceiver",false)	; 5
	JsonUtil.StringListAdd(fileName,"slaverstatus", "slaver",false)	
	JsonUtil.StringListAdd(fileName,"slaverstatus", "Expert slaver",false)	; 7
	JsonUtil.StringListAdd(fileName,"slaverstatus", "Master slaver",false)
	JsonUtil.StringListAdd(fileName,"slaverstatus", "Infamous slaver",false)	; 9

	JsonUtil.IntListAdd(fileName,"slavercolor", 0x9090C0,false)	; 0 "rookie"
	JsonUtil.IntListAdd(fileName,"slavercolor", 0x6060A0,false)	;  
	JsonUtil.IntListAdd(fileName,"slavercolor", 0xA06060,false)	;  
	JsonUtil.IntListAdd(fileName,"slavercolor", 0x608080,false)	; 
	JsonUtil.IntListAdd(fileName,"slavercolor", 0x806080,false)	; 
	JsonUtil.IntListAdd(fileName,"slavercolor", 0x60A060,false)	; 5 "deceiver"
	JsonUtil.IntListAdd(fileName,"slavercolor", 0xA08030,false)	; 6 slaver
	JsonUtil.IntListAdd(fileName,"slavercolor", 0xA06030,false)	; 7 Expert
	JsonUtil.IntListAdd(fileName,"slavercolor", 0xC04030,false)	; 8 Master
	JsonUtil.IntListAdd(fileName,"slavercolor", 0xFF3030,false)	; 9 Infamous

	JsonUtil.StringListAdd(fileName,"specialdescs", "Animal",false)	; false = don't allow duplicates
	JsonUtil.StringListAdd(fileName,"specialdescs", "Child",false)	
	JsonUtil.StringListAdd(fileName,"specialdescs", "Creature",false)	
	JsonUtil.StringListAdd(fileName,"specialdescs", "Elder",false)	
	JsonUtil.StringListAdd(fileName,"specialdescs", "Female",false)	
	JsonUtil.StringListAdd(fileName,"specialdescs", "Male",false)	    
	JsonUtil.StringListAdd(fileName,"specialdescs", "Undead",false)	
	JsonUtil.StringListAdd(fileName,"specialdescs", "YoungAdult",false)	

	JsonUtil.StringListAdd(fileName,"racedescs", "Akavir",false) ; 0
	JsonUtil.StringListAdd(fileName,"racedescs", "Argonian",false) ; 1
	JsonUtil.StringListAdd(fileName,"racedescs", "Breton",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Daedra",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Dark Elf",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "High Elf",false) ; 5
	JsonUtil.StringListAdd(fileName,"racedescs", "Imperial",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Khajiit",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Nord",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Orc",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Redguard",false) ; 10
	JsonUtil.StringListAdd(fileName,"racedescs", "Snow Elf",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Succubus",false)
	JsonUtil.StringListAdd(fileName,"racedescs", "Vampire",false)	
	JsonUtil.StringListAdd(fileName,"racedescs", "Wood Elf",false) ; 14
	
	JsonUtil.StringListAdd(fileName,"classdescs", "Placeholder00",false) ; 0
	JsonUtil.StringListAdd(fileName,"classdescs", "Archer",false) ; 1
	JsonUtil.StringListAdd(fileName,"classdescs", "Missile",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Warrior",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Melee",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Barbarian",false) ; 5
	JsonUtil.StringListAdd(fileName,"classdescs", "Hero",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Wizard",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Mage",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Conjurer",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Sorcerer",false) ; 10
	JsonUtil.StringListAdd(fileName,"classdescs", "Warlock",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Witchblade",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Priest",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Monk",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Shaman",false) ; 15
	JsonUtil.StringListAdd(fileName,"classdescs", "Mystic",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Bard",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Assassin",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Nightblade",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Rogue",false) ; 20
	JsonUtil.StringListAdd(fileName,"classdescs", "Thief",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Scout",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Ranger",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Blade",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Vigilant",false) ; 25
	JsonUtil.StringListAdd(fileName,"classdescs", "Guard",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Soldier",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Mercenary",false) ; 28
	JsonUtil.StringListAdd(fileName,"classdescs", "Brigand",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Bandit",false) ; 30
	JsonUtil.StringListAdd(fileName,"classdescs", "Elementalist",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Necromancer",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Nightingale",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Spellsword",false) ; 34
	JsonUtil.StringListAdd(fileName,"classdescs", "Predator",false) ; 35
	JsonUtil.StringListAdd(fileName,"classdescs", "Animal",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Flame",false) ; 37
	JsonUtil.StringListAdd(fileName,"classdescs", "Frost",false)
	JsonUtil.StringListAdd(fileName,"classdescs", "Storm",false) 

	JsonUtil.StringListAdd(fileName,"trainerdescs", "Placeholder00",false) ; 0
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Alteration",false) ; 1
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Conjuration",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Destruction",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Illusion",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Restoration",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Enchanting",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Alchemy",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Speechcraft",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Smithing",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "One-Handed weapons",false) ; 10
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Two-handed weapons",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Block",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Heavy Armor",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Light Armor",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Marksman",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Sneak",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Lockpicking",false)
	JsonUtil.StringListAdd(fileName,"trainerdescs", "Pickpocket",false) ; 18

	JsonUtil.StringListAdd(fileName,"employerdescs", "Placeholder00",false) ; 0
	JsonUtil.StringListAdd(fileName,"employerdescs", "the White Hall of Dawnstar",false) ; 1
	JsonUtil.StringListAdd(fileName,"employerdescs", "Falkreath Jarl's Longhouse",false) 
	JsonUtil.StringListAdd(fileName,"employerdescs", "Markarth's Keep",false) 
	JsonUtil.StringListAdd(fileName,"employerdescs", "Morthal's Longhouse",false)
	JsonUtil.StringListAdd(fileName,"employerdescs", "Riften's Mistveil Keep",false) ; 5
	JsonUtil.StringListAdd(fileName,"employerdescs", "Solitude's Blue Palace",false) 
	JsonUtil.StringListAdd(fileName,"employerdescs", "Whiterun's Dragonsreach",false) 
	JsonUtil.StringListAdd(fileName,"employerdescs", "Windhelm Palace",false) 
	JsonUtil.StringListAdd(fileName,"employerdescs", "Winterhold Jarl's Longhouse",false) ; 9

	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder00",false) ; 0
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Jarl",false) ; 1
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Noble",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "an Exiled",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Bandit",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Forsworn",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Imperial Legion",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Stormcloaks",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Dark Brotherhood",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Thieves Guild",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Companions",false) ; 10
	JsonUtil.StringListAdd(fileName,"jobdescs", "a wild Werewolf",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Silver Hand",false) ; 12
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Blades",false) ; 13
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Vigilant of Stendarr",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a member of the Arena",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Thalmor",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Necromancer",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Warlock",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Vampire",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Wizard",false) ; 20
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Justiciar",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Priest",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Wise woman",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Steward",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Bard",false) ; 25
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Jeweler",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "an Apothecary",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Tailor",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Merchant",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Caravan Merchant",false) ; 30
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Fletcher",false) ; bows and arrows maker
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Blacksmith",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Farmer",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Hunter",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Lumberjack",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Miner",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Guard",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a beggar",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Fence",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "an Inn Keeper",false) ; 40
	JsonUtil.StringListAdd(fileName,"jobdescs", "an Inn Servant",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Housecarl",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder43",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder44",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder45",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder46",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder47",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder48",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Hagraven",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Travelling Wench",false) ; 50
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Travelling Servant",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a Travelling Bodyguard",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder53",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder54",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder55",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder56",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder57",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder58",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "Placeholder59",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "merely a piece of meat used by vampires",false) ; 60 Slaves and slavers
	JsonUtil.StringListAdd(fileName,"jobdescs", "sold as a slave",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a slave of Hydra",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a bandit's slave",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a fugitive slave",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a slave",false)
	JsonUtil.StringListAdd(fileName,"jobdescs", "a slaver",false) ; 66

	JsonUtil.StringListAdd(fileName,"placedescs", "Skyrim",false) ; 0
	JsonUtil.StringListAdd(fileName,"placedescs", "the East March",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Falkreath",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Haafingar",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Hjaalmarch",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "the Pale",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "the Reach",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "the Rift",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Whiterun",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Winterhold",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "the Orc Strongholds",false) ; 10
	JsonUtil.StringListAdd(fileName,"placedescs", "Cidhna Mine",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "the Throat of the World",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Cyrodiil",false)
	JsonUtil.StringListAdd(fileName,"placedescs", "Tamriel",false) ; "the Khajiit Caravans"
	JsonUtil.StringListAdd(fileName,"placedescs", "Bruma",false) ; 15

	JsonUtil.StringListAdd(fileName,"difficultydescs", "a nightmare",false) ; 0
	JsonUtil.StringListAdd(fileName,"difficultydescs", "strenuous",false)
	JsonUtil.StringListAdd(fileName,"difficultydescs", "very hard",false)
	JsonUtil.StringListAdd(fileName,"difficultydescs", "difficult",false) 
	JsonUtil.StringListAdd(fileName,"difficultydescs", "challenging",false) ; 4
	JsonUtil.StringListAdd(fileName,"difficultydescs", "manageable",false) ; 5
	JsonUtil.StringListAdd(fileName,"difficultydescs", "promising",false) 
	JsonUtil.StringListAdd(fileName,"difficultydescs", "fairly easy",false)
	JsonUtil.StringListAdd(fileName,"difficultydescs", "quite easy",false)
	JsonUtil.StringListAdd(fileName,"difficultydescs", "a piece of cake",false) ; 9

	JsonUtil.StringListAdd(fileName,"proficiencydescs", "hopeless",false) ; 0
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "terrible",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "very poor",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "poor",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "mediocre",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "capable",false) ; 5
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "competent",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "great",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "excellent",false)
	JsonUtil.StringListAdd(fileName,"proficiencydescs", "masterful",false)

	JsonUtil.StringListAdd(fileName,"trainingdescs", "Submission ",false) ; 0
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Fear ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Humiliation ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Anger ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Resignation ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Respect ",false)
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Desire (love)",false) ; 6
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Worship (loyal)",false)
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Fascination (love)",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Absolution (loyal)",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Devotion (loyal)",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Admiration (love)",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Enforcer ",false) ; 12
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Persuader ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Depraver ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Predator ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Slaver ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Deceiver ",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Vaginal training",false) ; 18
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Sex training",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Anal Training",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Oral Training",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Pose Training",false)	; 22
	JsonUtil.StringListAdd(fileName,"trainingdescs", "House Training",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Work Training",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Combat Training",false) ; 25	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Trauma in days",false)	
	JsonUtil.StringListAdd(fileName,"trainingdescs", "Enslaved in days",false)	

	JsonUtil.StringListAdd(fileName,"feelingdescs", "docile",false)	
	JsonUtil.StringListAdd(fileName,"feelingdescs", "relaxed",false)	
	JsonUtil.StringListAdd(fileName,"feelingdescs", "humble",false)	
	JsonUtil.StringListAdd(fileName,"feelingdescs", "lovable",false)	
	JsonUtil.StringListAdd(fileName,"feelingdescs", "happy",false)	
	JsonUtil.StringListAdd(fileName,"feelingdescs", "tamed",false)	

	JsonUtil.StringListAdd(fileName,"feelinvdescs", "defiant",false)	
	JsonUtil.StringListAdd(fileName,"feelinvdescs", "nervous",false)	
	JsonUtil.StringListAdd(fileName,"feelinvdescs", "proud",false)	
	JsonUtil.StringListAdd(fileName,"feelinvdescs", "hater",false)	
	JsonUtil.StringListAdd(fileName,"feelinvdescs", "sad",false)	
	JsonUtil.StringListAdd(fileName,"feelinvdescs", "rebel",false)	

	JsonUtil.StringListAdd(fileName,"counterdescs", "punished ",true) ; I was...	
	JsonUtil.StringListAdd(fileName,"counterdescs", "scolded ",true) ; 1	
	JsonUtil.StringListAdd(fileName,"counterdescs", "praised ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "comforted ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "insulted ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "flattered ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "threatened ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "given false promises ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "tied-up ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "humiliated ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "drugged ",true)	; 10
	JsonUtil.StringListAdd(fileName,"counterdescs", "raped ",true)	; 11
	JsonUtil.StringListAdd(fileName,"counterdescs", "sex ",true) ; 12 I had...	
	JsonUtil.StringListAdd(fileName,"counterdescs", "sex for money ",true) ; 13	
	JsonUtil.StringListAdd(fileName,"counterdescs", "sex with others",true)
	JsonUtil.StringListAdd(fileName,"counterdescs", "an orgasm ",true)	; 15
	JsonUtil.StringListAdd(fileName,"counterdescs", "new sexual experiences ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "a kink revelation ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "number_of_chat_feelings",true) ; 18	
	JsonUtil.StringListAdd(fileName,"counterdescs", "number_of_chat_personality",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "in shock ",true) ; 20	
	JsonUtil.StringListAdd(fileName,"counterdescs", "broken ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "brainwashed ",true) ; 22	
	JsonUtil.StringListAdd(fileName,"counterdescs", "number_of_trainee",true) ; 23	
	JsonUtil.StringListAdd(fileName,"counterdescs", "number_of_trainer",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "recruit ",true) ; 25 I saw you...	
	JsonUtil.StringListAdd(fileName,"counterdescs", "pimp ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "ransom ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "capture ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "manage to break ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "rape ",true)	; 30
	JsonUtil.StringListAdd(fileName,"counterdescs", "sell ",true)	
	JsonUtil.StringListAdd(fileName,"counterdescs", "being intimate ",true) ; 32	
	JsonUtil.StringListAdd(fileName,"counterdescs", "flirting ",true)	

	JsonUtil.StringListAdd(fileName,"facetdescs", "The Humility scale assesses a tendency to restrain one's ego and to accept limits on one's own status and entitlement. Low scorers are inclined to assert superiority, resist constraint, and place their own importance above shared rules, whereas high scorers regulate their pride, accept common standards, and are willing to lower themselves rather than seek special advantage.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Mercy scale assesses a tendency to respond to others' suffering with leniency and understanding rather than harshness. Low scorers are relatively unmoved by others' distress and may favor strict or punitive responses, whereas high scorers consider others' perspectives and are inclined to spare, forgive, or mitigate harm when possible.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Greed Avoidance scale assesses a tendency to be uninterested in possessing lavish wealth, luxury goods, and signs of high social status. Low scorers want to enjoy and to display wealth and privilege, whereas high scorers are not especially motivated by monetary or social-status considerations.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Modesty scale assesses a tendency to be modest and unassuming. Low scorers consider themselves as superior and as entitled to privileges that others do not have, whereas high scorers view themselves as ordinary people without any claim to special treatment.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Sincerity scale assesses a tendency to be genuine in interpersonal relations. Low scorers will flatter others or pretend to like them in order to obtain favors, whereas high scorers are unwilling to manipulate others.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Fairness scale assesses a tendency to avoid fraud and corruption. Low scorers are willing to gain by cheating or stealing, whereas high scorers are unwilling to take advantage of other individuals or of society at large.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Panic scale assesses a tendency to react strongly and immediately to sudden stress or pressure. Low scorers remain composed and able to think clearly in tense situations, whereas high scorers become quickly overwhelmed and may experience confusion or loss of control when confronted with acute demands.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Fearfulness scale assesses a tendency to experience fear. Low scorers feel little fear of injury and are relatively tough, brave, and insensitive to physical pain, whereas high scorers are strongly inclined to avoid physical harm.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Sentimentality scale assesses a tendency to feel strong emotional bonds with others. Low scorers feel little emotion when saying good-bye or in reaction to the concerns of others, whereas high scorers feel strong emotional attachments and an empathic sensitivity to the feelings of others.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Reactivity scale assesses a tendency to respond quickly and intensely to immediate emotional stimuli. Low scorers are relatively reserved and less affected by momentary changes in their surroundings, whereas high scorers are easily influenced by events and tend to experience rapid shifts in mood, including excitement, enjoyment, or distress.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Dependence scale assesses one's need for emotional support from others. Low scorers feel self-assured and able to deal with problems without any help or advice, whereas high scorers want to share their difficulties with those who will provide encouragement and comfort.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Anxiety scale assesses a tendency to worry in a variety of contexts. Low scorers feel little stress in response to difficulties, whereas high scorers tend to become preoccupied even by relatively minor problems.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Liveliness scale assesses one's typical enthusiasm and energy. Low scorers tend not to feel especially cheerful or dynamic, whereas high scorers usually experience a sense of optimism and high spirits.",false) 
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Social Self-Esteem scale assesses a tendency to have positive self-regard, particularly in social contexts. Low scorers tend to have a sense of personal worthlessness and to see themselves as unpopular, whereas high scorers are generally satisfied with themselves and consider themselves to have likable qualities.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Composure scale assesses a tendency to regulate one's behavior and maintain a controlled social image. Low scorers are prone to act impulsively or reveal too much of themselves in social situations, whereas high scorers are able to restrain their impulses and present themselves in a deliberate and composed manner.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Sociability scale assesses a tendency to enjoy conversation, social interaction, and parties. Low scorers generally prefer solitary activities and do not seek out conversation, whereas high scorers enjoy talking, visiting, and celebrating with others.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Social Boldness scale assesses one's comfort or confidence within a variety of social situations. Low scorers feel shy or awkward in positions of leadership or when speaking in public, whereas high scorers are willing to approach strangers and are willing to speak up within group settings.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Ingenuity scale assesses a tendency to express oneself freely and impulsively under social or emotional stimulation. Low scorers remain measured and thoughtful even when excited or engaged, whereas high scorers are prone to talk excessively, act without restraint, or say inappropriate or poorly considered things when stimulated.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Gentleness scale assesses a tendency to be mild and lenient in dealings with other people. Low scorers tend to be critical in their evaluations of others, whereas high scorers are reluctant to judge others harshly.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Patience scale assesses a tendency to remain calm rather than to become angry. Low scorers tend to lose their tempers quickly, whereas high scorers have a high threshold for feeling or expressing anger.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Flexibility scale assesses one's willingness to compromise and cooperate with others. Low scorers are seen as stubborn and are willing to argue, whereas high scorers avoid arguments and accommodate others' suggestions, even when these may be unreasonable.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Forgiveness scale assesses one's willingness to feel trust and liking toward those who may have caused one harm. Low scorers tend to hold a grudge against those who have offended them, whereas high scorers are usually ready to trust others again and to re-establish friendly relations after having been treated badly.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Empathy scale assesses a tendency to experience concern for others and to respond emotionally to their well-being, particularly in situations involving harm or unfairness. Low scorers are relatively unaffected by others' difficulties and may show little reaction to injustice, whereas high scorers are strongly attuned to others' feelings and are inclined to react with concern, support, or protective behavior, especially toward those close to them.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Contentment scale assesses a tendency to remain satisfied and untroubled in the face of personal inconvenience or unfairness. Low scorers are easily irritated by setbacks or perceived injustice toward themselves, whereas high scorers are generally accepting of circumstances and are not readily disturbed by difficulties or unfavorable treatment.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Dutifulness scale assesses a tendency to comply with duties and follow instructions without question. Low scorers are inclined to resist direction or seek personal advantage, whereas high scorers carry out tasks faithfully even in the absence of reward or discussion.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Diligence scale assesses a tendency to work hard. Low scorers have little self-discipline and are not strongly motivated to achieve, whereas high scorers have a strong work ethic and are willing to exert themselves.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Ease scale assesses a tendency to settle into and take pleasure in calm, orderly, and comfortable conditions. Low scorers remain tense or indifferent even in pleasant surroundings, whereas high scorers readily relax and derive satisfaction from environments that are quiet, structured, and physically agreeable.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Perfectionism scale assesses a tendency to be thorough and concerned with details. Low scorers tolerate some errors in their work and tend to neglect details, whereas high scorers check carefully for mistakes and potential improvements.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Prudence scale assesses a tendency to deliberate carefully and to inhibit impulses. Low scorers act on impulse and tend not to consider consequences, whereas high scorers consider their options carefully and tend to be cautious and self-controlled.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Organization scale assesses a tendency to seek order, particularly in one's physical surroundings. Low scorers tend to be sloppy and haphazard, whereas high scorers keep things tidy and prefer a structured approach to tasks.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Independence scale assesses a tendency to question authority and to form one's own views rather than accepting established claims. Low scorers tend to rely on authoritative sources or accepted â€œfactsâ€ without challenge, whereas high scorers are willing to examine, discuss, and contest such claims based on their own judgment and experience.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Inquisitiveness scale assesses a tendency to seek information about, and experience with, the natural and human world. Low scorers have little curiosity about the natural or social sciences, whereas high scorers read widely and are interested in travel.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Aesthetic Appreciation scale assesses one's enjoyment of beauty in art and in nature. Low scorers tend not to become absorbed in works of art or in natural wonders, whereas high scorers have a strong appreciation of various art forms and of natural wonders.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Discernment scale assesses a tendency to evaluate new ideas and influences carefully rather than accepting them at face value. Low scorers may accept suggestions or information without much reflection and can be easily influenced, whereas high scorers think independently, question what they are told, and form judgments based on their own reasoning.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Creativity scale assesses one's preference for innovation and experiment. Low scorers have little inclination for original thought, whereas high scorers actively seek new solutions to problems and express themselves in art.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "The Originality scale assesses a tendency to accept the unusual. Low scorers avoid eccentric or nonconforming persons, whereas high scorers are receptive to ideas that might seem strange or radical.",false)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	
	JsonUtil.StringListAdd(fileName,"facetdescs", "",true)	

	JsonUtil.StringListAdd(fileName,"timedescs", "I can't remember when",false)	; 0
	JsonUtil.StringListAdd(fileName,"timedescs", "in the future",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "just now",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a few minutes ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "less than an hour ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "an hour ago",false)	; 5
	JsonUtil.StringListAdd(fileName,"timedescs", "a few hours ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "almost a day ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a day ago",false)	; 8
	JsonUtil.StringListAdd(fileName,"timedescs", "more than a day ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "two days ago",false)	; 10
	JsonUtil.StringListAdd(fileName,"timedescs", "a few days ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a week ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "more than a week ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "two weeks ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a month ago",false)	; 15
	JsonUtil.StringListAdd(fileName,"timedescs", "two months ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a few months ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "months ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a year ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "more than a year ago",false)	; 20
	JsonUtil.StringListAdd(fileName,"timedescs", "two years ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a few years ago",false)	
	JsonUtil.StringListAdd(fileName,"timedescs", "a long time ago",false)	; 24
	JsonUtil.StringListAdd(fileName,"timedescs", "a very long time ago",false)	; 25

	JsonUtil.StringListAdd(fileName,"timediffdescs", "I can't remember when",false)	; 0
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Without notice",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Immediately after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Right after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Soon after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "The very same day",false)	; 5
	JsonUtil.StringListAdd(fileName,"timediffdescs", "The same day",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About a day after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A day after",false)	; 8
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About two days after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Two days after",false)	; 10
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About a week after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A week after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About two weeks after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Two weeks after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About a month after",false)	; 15
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About two months after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A few months after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "Many months after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About a year after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "More than a year after",false)	; 20
	JsonUtil.StringListAdd(fileName,"timediffdescs", "About two years after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A few years after",false)	
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A long time after",false)	; 24
	JsonUtil.StringListAdd(fileName,"timediffdescs", "A very long time after",false)	; 25

	JsonUtil.StringListAdd(fileName,"malerelation", "friend",false)	; 0
	JsonUtil.StringListAdd(fileName,"malerelation", "lover",false)	; 1
	JsonUtil.StringListAdd(fileName,"malerelation", "spouse",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "son",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "father",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "brother",false)	; 5
	JsonUtil.StringListAdd(fileName,"malerelation", "grandson",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "grandfather",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "cousin",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "nephew",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "uncle",false)	; 10
	JsonUtil.StringListAdd(fileName,"malerelation", "great-grandson",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "great-grandfather",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "great-nephew",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "great-uncle",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "kinsman",false)	; 15
	JsonUtil.StringListAdd(fileName,"malerelation", "nephew inlaw",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "uncle inlaw",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "son inlaw",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "father inlaw",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "brother inlaw",false)	; 20
	JsonUtil.StringListAdd(fileName,"malerelation", "loved one",false)	
	JsonUtil.StringListAdd(fileName,"malerelation", "suitor",false)	; 22
	JsonUtil.StringListAdd(fileName,"malerelation", "someone",false)	; 23

	JsonUtil.StringListAdd(fileName,"femalerelation", "friend",false)	; 0
	JsonUtil.StringListAdd(fileName,"femalerelation", "lover",false)	; 1
	JsonUtil.StringListAdd(fileName,"femalerelation", "spouse",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "daughter",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "mother",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "sister",false)	; 5
	JsonUtil.StringListAdd(fileName,"femalerelation", "granddaughter",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "grandmother",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "cousin",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "niece",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "aunt",false)	; 10
	JsonUtil.StringListAdd(fileName,"femalerelation", "great-granddaughter",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "great-grandmother",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "great-niece",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "great-aunt",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "kinswoman",false)	; 15
	JsonUtil.StringListAdd(fileName,"femalerelation", "niece inlaw",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "aunt inlaw",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "daughter inlaw",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "mother inlaw",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "sister inlaw",false)	; 20
	JsonUtil.StringListAdd(fileName,"femalerelation", "loved one",false)	
	JsonUtil.StringListAdd(fileName,"femalerelation", "suitress",false)	; 22
	JsonUtil.StringListAdd(fileName,"femalerelation", "someone",false)	; 23

	JsonUtil.Save(fileName)
EndFunction

Function WriteTraitBonusFile(string fileName)
	if JsonUtil.JsonExists(fileName)
		;LogTrace("WriteTraitBonusFile: Skipping! File already exists: "+fileName)
		return
	endif
	LogTrace("WriteTraitBonusFile: WRITING "+fileName)
		
	JsonUtil.StringListAdd(fileName,"trainingnames", "xsubmission",false) ; 0
	JsonUtil.StringListAdd(fileName,"trainingnames", "xfeartraining",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "xhumiliation",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "xangertraining",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "xresignation",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "xrespecttraining",false) ; 5
	JsonUtil.StringListAdd(fileName,"trainingnames", "ylovedesire",false) ; 6
	JsonUtil.StringListAdd(fileName,"trainingnames", "yloyalworship",false)
	JsonUtil.StringListAdd(fileName,"trainingnames", "ylovefascination",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "yloyalabsolution",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "yloyaldevotion",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "yloveadmiration",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskillenforcer",false) ; 12
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskillpersuader",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskilldepraver",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskillpredator",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskillslaver",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "wskilldeceiver",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "zVaginalTraining",false) ; 18
	JsonUtil.StringListAdd(fileName,"trainingnames", "zSexTraining",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "zAnalTraining",false)	; 20
	JsonUtil.StringListAdd(fileName,"trainingnames", "zOralTraining",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "zPoseTraining",false)	; 22
	JsonUtil.StringListAdd(fileName,"trainingnames", "zHouseTraining",false) ; 23	
	JsonUtil.StringListAdd(fileName,"trainingnames", "zWorkTraining",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "zCombatTraining",false) ; 25	
	JsonUtil.StringListAdd(fileName,"trainingnames", "trauma",false)	
	JsonUtil.StringListAdd(fileName,"trainingnames", "enslaved",false)	

	JsonUtil.StringListAdd(fileName,"virginnames", "virginvaginal",false)	
	JsonUtil.StringListAdd(fileName,"virginnames", "virgingangbang",false)	
	JsonUtil.StringListAdd(fileName,"virginnames", "virginanal",false)	
	JsonUtil.StringListAdd(fileName,"virginnames", "virginoral",false)	
	JsonUtil.StringListAdd(fileName,"virginnames", "virginsame",false)	

	JsonUtil.StringListAdd(fileName,"virginstatus", "virginvaginalstatus",false)	
	JsonUtil.StringListAdd(fileName,"virginstatus", "virgingangbangstatus",false)	
	JsonUtil.StringListAdd(fileName,"virginstatus", "virginanalstatus",false)	
	JsonUtil.StringListAdd(fileName,"virginstatus", "virginoralstatus",false)	
	JsonUtil.StringListAdd(fileName,"virginstatus", "virginsamestatus",false)	

	JsonUtil.StringListAdd(fileName,"counternames", "number_of_pain",false) ; 0	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_toldoff",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_praise",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_comfort",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_insult",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_flatter",false)	; 5
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_threat",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_promise",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_bondage",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_shame",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_drug",false)	; 10
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_rape",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_sex",false)	; 12
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_sexformoney",false) ; 13	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_sexwithothers",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_orgasm",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_sexual_experiences",false) ; 16	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_kinktrigger",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_chat_feelings",false)	; 18
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_chat_personality",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_shock",false)	; 20
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_broken",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_brainwashed",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_trainee",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_trainer",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_recruitedslavers",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_whoredslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_ransomedslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_capturedslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_brokenslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_rapedslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_soldslaves",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_player_fling",false)	
	JsonUtil.StringListAdd(fileName,"counternames", "number_of_player_chat",false)	

	JsonUtil.StringListAdd(fileName,"traitnames", "honesty",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "emotionality",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "extraversion",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "agreeableness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "conscientiousness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "openness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "wilfulness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "toughness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "sensuality",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "submissivity",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "boldness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "smartness",false)	
	JsonUtil.StringListAdd(fileName,"traitnames", "dominance",false) ; Opposite of submissivity	

	JsonUtil.StringListAdd(fileName,"modifiernames", "pain",true) ; 0	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	; 6
	JsonUtil.StringListAdd(fileName,"modifiernames", "fear",true) ; 7
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true) ; 12
	JsonUtil.StringListAdd(fileName,"modifiernames", "depraver",true)	; 13 self-esteem
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true); 14 -shame
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true) ; 18	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "pose",true) ; 20	
	JsonUtil.StringListAdd(fileName,"modifiernames", "anger",true) ; 21	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	; 24
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "housekeeper",true)	; 27
	JsonUtil.StringListAdd(fileName,"modifiernames", "sorrow",true)	; 28
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	; 30
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	; 35 -discipline
	JsonUtil.StringListAdd(fileName,"modifiernames", "vaginal",true) ;36	
	JsonUtil.StringListAdd(fileName,"modifiernames", "leader",true)	; persuading
	JsonUtil.StringListAdd(fileName,"modifiernames", "anal",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "oral",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "slave trader",true)	; 40
	JsonUtil.StringListAdd(fileName,"modifiernames", "pretender",true)	; 41
	JsonUtil.StringListAdd(fileName,"modifiernames", "orgasm",true)	; 42
	JsonUtil.StringListAdd(fileName,"modifiernames", "combat",true)	
	JsonUtil.StringListAdd(fileName,"modifiernames", "",true)	; 44

	JsonUtil.StringListAdd(fileName,"invmodnames", "",true) ; 0
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "training",true) ; 5	punishing
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	; 6
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true) ; 12
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "shame",true) ; 14	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	; 18
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "stalking",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	; 24
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "work",true)	; 30
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "discipline",true) ; 35	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	
	JsonUtil.StringListAdd(fileName,"invmodnames", "",true)	

	JsonUtil.StringListAdd(fileName,"facetnames", "humility",false) ; 0	+pain modifier
	JsonUtil.StringListAdd(fileName,"facetnames", "mercy",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "greed avoidance",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "modesty",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "sincerity",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "fairness",false)	; 5
	JsonUtil.StringListAdd(fileName,"facetnames", "panic",false)	; 6
	JsonUtil.StringListAdd(fileName,"facetnames", "fearfulness",false) ; 7 +fear modifier
	JsonUtil.StringListAdd(fileName,"facetnames", "sentimentality",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "reactivity",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "dependence",false)	; 10
	JsonUtil.StringListAdd(fileName,"facetnames", "anxiety",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "liveliness",false) ; 12 
	JsonUtil.StringListAdd(fileName,"facetnames", "self-esteem",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "composure",false)  ; 7 -shame modifier ; = "self-control" 
	JsonUtil.StringListAdd(fileName,"facetnames", "sociability",false)	; 15
	JsonUtil.StringListAdd(fileName,"facetnames", "social boldness",false)	; = "daring"
	JsonUtil.StringListAdd(fileName,"facetnames", "ingenuity",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "gentleness",false)	; 18
	JsonUtil.StringListAdd(fileName,"facetnames", "patience",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "flexibility",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "forgiveness",false) ; 21 +anger modifier
	JsonUtil.StringListAdd(fileName,"facetnames", "empathy",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "contentment",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "dutifulness",false)	; 24
	JsonUtil.StringListAdd(fileName,"facetnames", "diligence",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "ease",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "perfectionism",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "prudence",false)	; 28 +resignation modifier
	JsonUtil.StringListAdd(fileName,"facetnames", "organization",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "independance",false)	; 30
	JsonUtil.StringListAdd(fileName,"facetnames", "inquisitiveness",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "appreciation",false)	; = "hope"
	JsonUtil.StringListAdd(fileName,"facetnames", "discernment",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "creativity",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "originality",false) ; 35 -respect modifier
	JsonUtil.StringListAdd(fileName,"facetnames", "vaginal",false) ; 36 
	JsonUtil.StringListAdd(fileName,"facetnames", "intimidate",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "anal",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "oral",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "controller",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "pretender",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "orgasm",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "combat",false)	
	JsonUtil.StringListAdd(fileName,"facetnames", "addiction",false)	

	JsonUtil.StringListAdd(fileName,"facetinverse", "",true) ; 0
	JsonUtil.StringListAdd(fileName,"facetinverse", "insensitivity",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "greed",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "criminality",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true) ; 6	
	JsonUtil.StringListAdd(fileName,"facetinverse", "bravery",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "cool",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true) ; 12
	JsonUtil.StringListAdd(fileName,"facetinverse", "humbleness",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "naivety",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true) ; 18	
	JsonUtil.StringListAdd(fileName,"facetinverse", "impatience",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "resentment",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "defiance",true) ; 24	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "recklessness",true) ; 28	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "authority",true) ; 30	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "manipulation",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "discipline",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true) ; 36	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	
	JsonUtil.StringListAdd(fileName,"facetinverse", "",true)	

	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / Humility
	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / -Insensitivity = Mercy
	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / -Greed = Greed avoidance
	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / Modesty
	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / Sincerity
	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / Criminality = -Fairness
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Panic
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Fearfulness
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Sentimentality
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Reactivity
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Dependence
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Anxiety
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Liveliness
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Self-esteem
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / -Naivety = Composure
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Sociability
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Social boldness
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Ingenuity
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / Gentleness
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / -Impatience = Patience
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / Flexibility
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / Forgiveness
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / Empathy
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / -Resentment = Contentment
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Dutifulness
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Diligent
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Ease
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Perfectionism
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Prudence
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Organization
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / Authority = -Independance
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / Inquisitiveness
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / Appreciation
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / -Manipulation = Curiosity
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / Creativity
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / -Discipline = Originality

	JsonUtil.IntListAdd(fileName,"facetmod2",  7,true) ; Wilpower / Humility
	JsonUtil.IntListAdd(fileName,"facetmod2", -8,true) ; Toughness / -Insensitivity = Mercy
	JsonUtil.IntListAdd(fileName,"facetmod2", -9,true) ; Sensuality / -Greed = Greed avoidance
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submissivity / Modesty
	JsonUtil.IntListAdd(fileName,"facetmod2", 11,true) ; Boldness / Sincerity
	JsonUtil.IntListAdd(fileName,"facetmod2",-12,true) ; Smartness / Criminality = -Fairness
	JsonUtil.IntListAdd(fileName,"facetmod2", -7,true) ; Wilpower / Panic
	JsonUtil.IntListAdd(fileName,"facetmod2", -8,true) ; Toughness / Fearfulness
	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Sentimentality
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submissivity / Reactivity
	JsonUtil.IntListAdd(fileName,"facetmod2",-11,true) ; Boldness / Dependence
	JsonUtil.IntListAdd(fileName,"facetmod2", 12,true) ; Smartness / Anxiety	
	JsonUtil.IntListAdd(fileName,"facetmod2", -7,true) ; Wilpower / Liveliness
	JsonUtil.IntListAdd(fileName,"facetmod2",  8,true) ; Toughness / Self-esteem
	JsonUtil.IntListAdd(fileName,"facetmod2", -9,true) ; Sensuality / -Naivety = Composure
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submissivity / Sociability
	JsonUtil.IntListAdd(fileName,"facetmod2", 11,true) ; Boldness / Social boldness
	JsonUtil.IntListAdd(fileName,"facetmod2",-12,true) ; Smartness / Ingenuity
	JsonUtil.IntListAdd(fileName,"facetmod2", -7,true) ; Wilpower / Gentleness
	JsonUtil.IntListAdd(fileName,"facetmod2",  8,true) ; Toughness / -Impatience = Patience
	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Flexibility
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submissivity / Forgiveness
	JsonUtil.IntListAdd(fileName,"facetmod2", 11,true) ; Boldness / Empathy
	JsonUtil.IntListAdd(fileName,"facetmod2",-12,true) ; Smartness / -Resentment = Contentment
	JsonUtil.IntListAdd(fileName,"facetmod2", -7,true) ; Wilpower / Dutifulness
	JsonUtil.IntListAdd(fileName,"facetmod2",  8,true) ; Toughness / Diligent
	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Ease
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submissivity / Perfectionism
	JsonUtil.IntListAdd(fileName,"facetmod2",-11,true) ; Boldness / Prudence
	JsonUtil.IntListAdd(fileName,"facetmod2",-12,true) ; Smartness / Organization
	JsonUtil.IntListAdd(fileName,"facetmod2",  7,true) ; Wilpower / Authority = -Independance
	JsonUtil.IntListAdd(fileName,"facetmod2",  8,true) ; Toughness / Inquisitiveness
	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Appreciation
	JsonUtil.IntListAdd(fileName,"facetmod2",-10,true) ; Submissivity / -Manipulation = Curiosity
	JsonUtil.IntListAdd(fileName,"facetmod2", 11,true) ; Boldness / Creativity
	JsonUtil.IntListAdd(fileName,"facetmod2", 12,true) ; Smartness / -Discipline = Originality

	JsonUtil.IntListAdd(fileName,"facetmod3", 10,true) ; Submissivity / Humility
	JsonUtil.IntListAdd(fileName,"facetmod3", 12,true) ; Smartness / -Insensitivity = Mercy
	JsonUtil.IntListAdd(fileName,"facetmod3", 11,true) ; Boldness / -Greed = Greed avoidance
	JsonUtil.IntListAdd(fileName,"facetmod3", -9,true) ; Sensuality / Modesty
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Sincerity
	JsonUtil.IntListAdd(fileName,"facetmod3",  7,true) ; Wilpower / Criminality = -Fairness
	JsonUtil.IntListAdd(fileName,"facetmod3", 12,true) ; Smartness / Panic
	JsonUtil.IntListAdd(fileName,"facetmod3",-11,true) ; Boldness / Fearfulness
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Sentimentality
	JsonUtil.IntListAdd(fileName,"facetmod3",  9,true) ; Sensuality / Reactivity
	JsonUtil.IntListAdd(fileName,"facetmod3", -7,true) ; Wilpower / Dependence
	JsonUtil.IntListAdd(fileName,"facetmod3", 10,true) ; Submissivity / Anxiety
	JsonUtil.IntListAdd(fileName,"facetmod3",  9,true) ; Sensuality / Liveliness
	JsonUtil.IntListAdd(fileName,"facetmod3",-10,true) ; Submissivity / Self-esteem
	JsonUtil.IntListAdd(fileName,"facetmod3", 11,true) ; Boldness / -Naivety = Composure
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Sociability
	JsonUtil.IntListAdd(fileName,"facetmod3", 12,true) ; Smartness / Social boldness
	JsonUtil.IntListAdd(fileName,"facetmod3", -7,true) ; Wilpower / Ingenuity
	JsonUtil.IntListAdd(fileName,"facetmod3", 10,true) ; Submissivity / Gentleness
	JsonUtil.IntListAdd(fileName,"facetmod3",  7,true) ; Wilpower / -Impatience = Patience
	JsonUtil.IntListAdd(fileName,"facetmod3",-12,true) ; Smartness / Flexibility
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Forgiveness
	JsonUtil.IntListAdd(fileName,"facetmod3",  9,true) ; Sensuality / Empathy
	JsonUtil.IntListAdd(fileName,"facetmod3",-11,true) ; Boldness / -Resentment = Contentment
	JsonUtil.IntListAdd(fileName,"facetmod3",-12,true) ; Smartness / Dutifulness
	JsonUtil.IntListAdd(fileName,"facetmod3",-10,true) ; Submissivity / Diligent
	JsonUtil.IntListAdd(fileName,"facetmod3",-11,true) ; Boldness / Ease
	JsonUtil.IntListAdd(fileName,"facetmod3",  7,true) ; Wilpower / Perfectionism
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Prudence
	JsonUtil.IntListAdd(fileName,"facetmod3",  9,true) ; Sensuality / Organization	
	JsonUtil.IntListAdd(fileName,"facetmod3",  8,true) ; Toughness / Authority = -Independance
	JsonUtil.IntListAdd(fileName,"facetmod3",  7,true) ; Wilpower / Inquisitiveness
	JsonUtil.IntListAdd(fileName,"facetmod3", 11,true) ; Boldness / Appreciation
	JsonUtil.IntListAdd(fileName,"facetmod3", 12,true) ; Smartness / -Manipulation = Curiosity
	JsonUtil.IntListAdd(fileName,"facetmod3",  9,true) ; Sensuality / Creativity
	JsonUtil.IntListAdd(fileName,"facetmod3",-10,true) ; Submissivity / -Discipline = Originality

	JsonUtil.IntListAdd(fileName,"facetmod1",  1,true) ; Honesty / Vaginal
	JsonUtil.IntListAdd(fileName,"facetmod1",  2,true) ; Emotionality / Intimidate
	JsonUtil.IntListAdd(fileName,"facetmod1",  3,true) ; eXtraversion / Anal
	JsonUtil.IntListAdd(fileName,"facetmod1",  4,true) ; Agreeableness / Oral
	JsonUtil.IntListAdd(fileName,"facetmod1",  5,true) ; Conscientiousness / Controller
	JsonUtil.IntListAdd(fileName,"facetmod1",  6,true) ; Openness / Pretender
	JsonUtil.IntListAdd(fileName,"facetmod1",  9,true) ; Sensuality / Orgasm
	JsonUtil.IntListAdd(fileName,"facetmod1", 11,true) ; Boldness / Combat
	JsonUtil.IntListAdd(fileName,"facetmod1", -7,true) ; Wilpower / Addiction

	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Vaginal
	JsonUtil.IntListAdd(fileName,"facetmod2",  8,true) ; Toughness / Intimidate
	JsonUtil.IntListAdd(fileName,"facetmod2", 10,true) ; Submitivity / Anal
	JsonUtil.IntListAdd(fileName,"facetmod2",  9,true) ; Sensuality / Oral
	JsonUtil.IntListAdd(fileName,"facetmod2",-10,true) ; Submitivity / Controller
	JsonUtil.IntListAdd(fileName,"facetmod2", 12,true) ; Smartness / Pretender
	JsonUtil.IntListAdd(fileName,"facetmod2", 11,true) ; Boldness / Orgasm
	JsonUtil.IntListAdd(fileName,"facetmod2",  7,true) ; Wilpower / Combat
	JsonUtil.IntListAdd(fileName,"facetmod2", -5,true) ; Conscientiousness / Addiction

	JsonUtil.IntListAdd(fileName,"facetmod3",  4,true) ; Agreeableness / Vaginal
	JsonUtil.IntListAdd(fileName,"facetmod3", -1,true) ; Honesty / Intimidate
	JsonUtil.IntListAdd(fileName,"facetmod3", -6,true) ; Openness / Anal
	JsonUtil.IntListAdd(fileName,"facetmod3",  5,true) ; Conscientiousness / Oral
	JsonUtil.IntListAdd(fileName,"facetmod3", -1,true) ; Honesty / Controller
	JsonUtil.IntListAdd(fileName,"facetmod3", -1,true) ; Honesty / Pretender
	JsonUtil.IntListAdd(fileName,"facetmod3", 10,true) ; Submitivity / Orgasm
	JsonUtil.IntListAdd(fileName,"facetmod3", 12,true) ; Smartness / Combat
	JsonUtil.IntListAdd(fileName,"facetmod3", -8,true) ; Toughness / Addiction

	int i = 0
	while i < __raceDescs.length
		string raceName = __raceDescs[i]
		if raceName != ""
			if i == 0 ; Akavir
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; submissivity for 50% of population
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; dominance for the other 50% of population
			elseif i == 1 ; Argonian
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; submissivity for 50% of population
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; dominance for the other 50% of population
			elseif i == 2 ; Breton
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; dominance
			elseif i == 3 ; Daedra
				JsonUtil.FloatListAdd(fileName, raceName, -40.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,  30.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  40.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName, -30.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  30.0,true) ; dominance
			elseif i == 4 ; Dark Elf
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; dominance
			elseif i == 5 ; High Elf
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  15.0,true) ; dominance
			elseif i == 6 ; Imperial
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; dominance
			elseif i == 7 ; Khajiit
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; dominance
			elseif i == 8 ; Nord
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  15.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; dominance
			elseif i == 9 ; Orc
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; dominance
			elseif i == 10 ; Redguard
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; dominance
			elseif i == 11 ; Snow Elf
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; dominance
			elseif i == 12 ; Succubus
				JsonUtil.FloatListAdd(fileName, raceName, -30.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,  30.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,  40.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName, -40.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,  40.0,true) ; dominance
			elseif i == 13 ; Vampire
				JsonUtil.FloatListAdd(fileName, raceName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName, -15.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,  15.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; dominance
			elseif i == 14 ; Wood Elf
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, raceName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, raceName,  20.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, raceName, -10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, raceName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, raceName, -20.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile

	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Child",  30.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Child",  20.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Child",  10.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Child", -10.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Child", -30.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Child",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"YoungAdult", -20.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"YoungAdult",  20.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"YoungAdult",  20.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"YoungAdult", -20.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"YoungAdult", -20.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"YoungAdult",  10.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"YoungAdult", -20.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"YoungAdult",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"YoungAdult",  20.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"YoungAdult",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"YoungAdult", -20.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"YoungAdult",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"YoungAdult",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Elder", -10.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Elder",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Elder", -30.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Elder",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Elder",  10.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Elder",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Elder",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Animal",  10.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Animal",  10.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Animal",  10.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Animal",  10.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Animal", -20.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; submissivity for 50% of population
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Animal", -20.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Animal",   0.0,true) ; dominance for the other 50% of population

	JsonUtil.FloatListAdd(fileName,"Creature", -10.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Creature", -30.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Creature", -20.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Creature", -25.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Creature",  20.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Creature",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Creature",  10.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Undead", -20.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Undead", -20.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Undead", -25.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Undead", -20.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Undead",  -5.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Undead", -20.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Undead", -10.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Undead",  10.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Undead",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Undead",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Undead",  10.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Undead", -20.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Undead",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Female",  10.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Female",  10.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Female",   5.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Female",   5.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Female",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Male", -10.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Male", -10.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Male",  -5.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Male",  -5.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Male",   0.0,true) ; dominance

	JsonUtil.FloatListAdd(fileName,"Player",   0.0,true) ; honesty
	JsonUtil.FloatListAdd(fileName,"Player", -10.0,true) ; emotionality
	JsonUtil.FloatListAdd(fileName,"Player",  10.0,true) ; extraversion
	JsonUtil.FloatListAdd(fileName,"Player",   0.0,true) ; agreeableness
	JsonUtil.FloatListAdd(fileName,"Player",   0.0,true) ; conscientiousness
	JsonUtil.FloatListAdd(fileName,"Player",  10.0,true) ; openness
	JsonUtil.FloatListAdd(fileName,"Player",  10.0,true) ; wilpower
	JsonUtil.FloatListAdd(fileName,"Player",  10.0,true) ; toughness
	JsonUtil.FloatListAdd(fileName,"Player",   0.0,true) ; sensuality
	JsonUtil.FloatListAdd(fileName,"Player", -20.0,true) ; submissivity
	JsonUtil.FloatListAdd(fileName,"Player",  20.0,true) ; boldness
	JsonUtil.FloatListAdd(fileName,"Player",  10.0,true) ; smartness
	JsonUtil.FloatListAdd(fileName,"Player",  20.0,true) ; dominance

	i = 0
	while i < __placeDescs.length
		string placeName = __placeDescs[i]
		if placeName != ""
			if i == 0 ; Skyrim
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i > 0 && i < 4 ; East-March
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i < 10
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 10 ; "the Orc Strongholds"
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 11 ;
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 12 ;
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 13 ;
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 14 ;
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			elseif i == 15 ;
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName, placeName,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName, placeName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName, placeName,   0.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile
	
	i = 0
	while i < __jobDescs.length
		string jobName = __jobDescs[i]
		if jobName != "" && i > 0
			if i < 4 ; Nobility, just little adjustments for fun
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; dominance
			elseif i == 4 ; Bandit: small bonus to fighting value, malus to refinement 
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  15.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; dominance
			elseif i == 5 ; Forsworn: small bonus to fighting value, malus to refinement 
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,  15.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; dominance
			elseif i == 8 || i == 9 || i == 39 ; Criminals
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  20.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  20.0,true) ; dominance
			elseif i >= 6 && i <= 15 ; Fighters
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif  i >= 16 && i <= 25 ; Educated: Wizard, Priest, Bard,  bonus to refinement and intellect, malus to fighting
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  25.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  25.0,true) ; dominance
			elseif i >= 26 && i <= 30 ;  Merchant: small bonus to intellect, malus to fighting
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif i >= 31 && i <= 32 ; Artisan
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif i >= 33 && i <= 36 ; Physical labor farmer, miner ; Physical labor farmer, miner
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif i == 37 ; Guard
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,  15.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName, -15.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  15.0,true) ; dominance
			elseif i == 38 	; Beggar, malus for most traits
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName, -20.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif i == 40 || i == 41 ; Works in an inn, small bonus to refinement
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  15.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; dominance
			elseif i == 42 ; Housecarl
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; dominance
			elseif i >= 50 && i < 60 ; Wenches
				JsonUtil.FloatListAdd(fileName,jobName,  20.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,  20.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  20.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName, -20.0,true) ; dominance
			elseif i >= 50 && i < 66 ; Slaves
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; dominance
			elseif i == 66 ; Slavers
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,jobName,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,jobName,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,jobName, -10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,jobName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,jobName,  10.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile

	i = 0
	while i < __employerDescs.length
		string employerName = __employerDescs[i]
		if employerName != ""
			if i > 0 ; Works at court: bonus points for refinement
				JsonUtil.FloatListAdd(fileName,employerName,  10.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,employerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,employerName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,employerName,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,employerName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,employerName,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,employerName,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,employerName,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,employerName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,employerName,  10.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,employerName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,employerName,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,employerName,  10.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile

	i = 0
	while i < __trainerDescs.length
		string trainerName = __trainerDescs[i]
		if trainerName != "" && i > 0
			if i <= 7 ; Magic trainer 
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,trainerName,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,trainerName,  -5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; dominance
			elseif i == 8 ; Speechcraft trainer 
				JsonUtil.FloatListAdd(fileName,trainerName,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; dominance
			elseif i > 8 && i <= 13 ; Fighter trainer 
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,trainerName, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,trainerName,  15.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,trainerName,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,trainerName, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; dominance
			elseif i > 13 && i <= 15 ; Woodsman
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; dominance
			else ; Scout
				JsonUtil.FloatListAdd(fileName,trainerName, -20.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,trainerName,  10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,trainerName,   0.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile

	i = 0
	while i < __classDescs.length
		string className = __classDescs[i]
		if className != "" && i > 0
			if i <= 2 ; Archery class 
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className, -15.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 4 ; Fighter class 
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 6 ; Hero class 
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 8 ; Mage class 
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 10 ; Sorcerer class 
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 12 ; Warlock class 
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 14 ; Priest class
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 16 ; Shaman class
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i == 17 ; Bard class
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 19 ; Assassin class
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className, -15.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 21 ; Thief class
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; dominance
			elseif i == 22 ; Scout class
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i == 23 ; Ranger class
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 25 ; Blade class
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 28 ; Soldier class
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; dominance
			elseif i <= 30 ; Bandit class
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 34 ; Mage class 
				JsonUtil.FloatListAdd(fileName,className,  -5.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,  15.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 36 ; Animal class 
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className, -10.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className, -10.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   5.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className, -10.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			elseif i <= 39 ; Elemental class
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; honesty
				JsonUtil.FloatListAdd(fileName,className, -10.0,true) ; emotionality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; extraversion
				JsonUtil.FloatListAdd(fileName,className, -10.0,true) ; agreeableness
				JsonUtil.FloatListAdd(fileName,className,  10.0,true) ; conscientiousness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; openness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; wilpower
				JsonUtil.FloatListAdd(fileName,className,  10.0,true) ; toughness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; sensuality
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; submissivity
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; boldness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; smartness
				JsonUtil.FloatListAdd(fileName,className,   0.0,true) ; dominance
			endif
		endif
		i += 1
	endwhile

	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true) ; 0
	JsonUtil.FloatListAdd(fileName,"jobwealth", 10000.0,true) ; 1 - Jarl
	JsonUtil.FloatListAdd(fileName,"jobwealth", 2000.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 1000.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 45.0,true) ; Bandit
	JsonUtil.FloatListAdd(fileName,"jobwealth", 30.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true) ; Legion
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 400.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 125.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true) ; 10
	JsonUtil.FloatListAdd(fileName,"jobwealth", 100.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 150.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true) ; 20
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 200.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 500.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 220.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 600.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 600.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 600.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 500.0,true) ; Merchant
	JsonUtil.FloatListAdd(fileName,"jobwealth", 300.0,true) ; 30
	JsonUtil.FloatListAdd(fileName,"jobwealth", 250.0,true) ; Fletcher bows and arrows maker
	JsonUtil.FloatListAdd(fileName,"jobwealth", 250.0,true) ; Artisans ; factor of 2 between master and apprentice in the middle-ages
	JsonUtil.FloatListAdd(fileName,"jobwealth", 10.0,true) ; Farmer
	JsonUtil.FloatListAdd(fileName,"jobwealth", 10.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 10.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 10.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 40.0,true) ; Guard
	JsonUtil.FloatListAdd(fileName,"jobwealth", 1.0,true) ; Beggar - Unit!
	JsonUtil.FloatListAdd(fileName,"jobwealth", 250.0,true) ; Fence
	JsonUtil.FloatListAdd(fileName,"jobwealth", 140.0,true) ; 40 - Innkeeper
	JsonUtil.FloatListAdd(fileName,"jobwealth", 30.0,true) ; Inn maid
	JsonUtil.FloatListAdd(fileName,"jobwealth", 170.0,true) ; Housecarl
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 220.0,true) ; Hagraven
	JsonUtil.FloatListAdd(fileName,"jobwealth", 270.0,true) ; 50 - Travelling wench
	JsonUtil.FloatListAdd(fileName,"jobwealth", 30.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 180.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 20.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 0.0,true) ; 60 Thrall
	JsonUtil.FloatListAdd(fileName,"jobwealth", 0.0,true) ; Slaves
	JsonUtil.FloatListAdd(fileName,"jobwealth", 0.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 0.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 1.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 0.0,true)
	JsonUtil.FloatListAdd(fileName,"jobwealth", 800.0,true) ; 66 Slaver

	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.05,true) ; 0 Akavir
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.6,true) ; 1 Argonian
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.8,true) ; 2 Breton
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 2.0,true) ; 3 Daedra
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.9,true) ; 4 Dark Elf
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.6,true) ; 5 High Elf
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.15,true) ; 6 Imperial
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.8,true) ; 7 Khajiit
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.1,true) ; 8 Nord
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.2,true) ; 9 Orc
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.0,true) ; 10 Redguard
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.3,true) ; 11 Snow Elf
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.5,true) ; 12 Succubus
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 0.3,true) ; 13 Vampire
	JsonUtil.FloatListAdd(fileName,"racemalevalue", 1.2,true) ; 14 Wood Elf

	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.6,true) ; 0 Akavir
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 0.6,true) ; 1 Argonian
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.2,true) ; 2 Breton
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 2.0,true) ; 3 Daedra
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.1,true) ; 4 Dark Elf
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.4,true) ; 5 High Elf
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.15,true) ; 6 Imperial
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 0.8,true) ; 7 Khajiit
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.4,true) ; 8 Nord
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.2,true) ; 9 Orc
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.5,true) ; 10 Redguard
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.3,true) ; 11 Snow Elf
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.8,true) ; 12 Succubus
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 0.3,true) ; 13 Vampire
	JsonUtil.FloatListAdd(fileName,"racefemalevalue", 1.3,true) ; 14 Wood Elf

	JsonUtil.Save(fileName)
EndFunction


int Function GetNumberOfKinks(Actor akRef)
	if akRef.isChild()
		return 0
	endif
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	;Debug.Trace("Looking up number of kinks for "+akRef.GetDisplayName()+" race = "+raceString)

	int n = 0
	int m = __raceDescs.Length
	if raceString == ""
		n = RandomInt(0,4)
	else
		int i = 0
		while i < m
			string raceName = __raceDescs[i]
			if raceName != ""
				if(stringUtil.find(raceString,raceName)>=0)
					if i == 0 ; Akavir
						n = RandomInt(0,6)
						i = m
					elseif i == 1 ; Argonian 
						n = RandomInt(0,5)
						i = m
					elseif i == 2 ; Breton 
						n = RandomInt(1,6)
						i = m
					elseif i == 3 ; Daedra 
						n = RandomInt(4,7)
						i = m
					elseif i == 4 ; Dark Elf 
						n = RandomInt(2,5)
						i = m
					elseif i == 5 ; High Elf 
						n = RandomInt(3,6)
						i = m
					elseif i == 6 ; Imperial
						n = RandomInt(1,5)
						i = m
					elseif i == 7 ; Khajiit
						n = RandomInt(0,2)
						i = m
					elseif i == 8 ; Nord
						n = RandomInt(1,4)
						i = m
					elseif i == 9 ; Orc
						n = RandomInt(0,3)
						i = m
					elseif i == 10 ; Redguard
						n = RandomInt(1,4)
						i = m
					elseif i == 11 ; Snow Elf 
						n = RandomInt(2,7)
						i = m
					elseif i == 12 ; Succubus
						n = RandomInt(5,7)
						i = m
					;elseif i == 13 ; Vampire
					;	n = RandomInt(1,4)
					;	i = m
					elseif i == 14 ; Wood Elf 
						n = RandomInt(2,6)
						i = m
					endif
				endif
			endif
			i += 1
		endwhile
	endif
	; Special races
	if m > 13 && (stringUtil.find(raceString,__raceDescs[13])>=0)
		n += 1 ; Vampire
	endif
	m = __specialDescs.Length
	if m > 1 && (stringUtil.find(raceString,__specialDescs[1])>=0)
		return 0 ; Child
	endif
	if m > 3 && (stringUtil.find(raceString,__specialDescs[3])>=0)
		n -= 1 ; Elder - Kink was maybe experienced and became less intense
	endif
	if n <= 0
		return 0
	endif
	return n
EndFunction

string[] __trainingNames
string[] __virginNames
string[] __virginStatus
string[] __counterNames
string[] __traitNames
string[] __modifierNames
string[] __invmodNames
string[] __facetNames
string[] __facetInverse

string[] __behaviourStatus
string[] __moodStatus
string[] __trainingStatus
string[] __slaverStatus
string[] __specialDescs
string[] __raceDescs
string[] __moodDescs
string[] __feelingDescs
string[] __feelinvdescs
string[] __facetDescs
string[] __timeDescs
string[] __timediffDescs
string[] __trainingDescs
string[] __counterDescs
string[] __placeDescs
string[] __difficultyDescs
string[] __proficiencyDescs
string[] __personalityDescs
string[] __hudDescs
string[] __jobDescs
string[] __employerDescs
string[] __trainerDescs
string[] __classDescs
string[] __malerelation
string[] __femalerelation

Float[] __jobwealth
Float[] __racemalevalue
Float[] __racefemalevalue

Int[]    __trainingcolor
Int[]    __slavercolor
Int[]    __facetMod1
Int[]    __facetMod2
Int[]    __facetMod3
int      __raceObject = 0

string Function GetTraitNameByIndex(int index)
	if !__traitNames
		LogTrace("GetTraitNameByIndex ERROR: traitNames is undefined!")
		return "undefined"
	endif
	int n = __traitNames.length
	if index < 0 || index >= n
		LogTrace("GetTraitNameByIndex ERROR: index="+index+"/"+n)
		return "undefined"
	endif
	return __traitNames[index]
EndFunction

string Function GetModifierNameByIndex(int index)
	if !__modifierNames
		LogTrace("GetModifierNameByIndex ERROR: modifierNames is undefined!")
		return "undefined"
	endif
	int n = __modifierNames.length
	if index < 0 || index >= n
		LogTrace("GetModifierNameByIndex ERROR: index="+index+"/"+n)
		return "undefined"
	endif
	return __modifierNames[index]
EndFunction

string Function GetInverseModifierNameByIndex(int index)
	if !__invmodNames
		LogTrace("GetInverseModifierNameByIndex ERROR: invmodnames is undefined!")
		return "undefined"
	endif
	int n = __invmodNames.length
	if index < 0 || index >= n
		LogTrace("GetInverseModifierNameByIndex ERROR: index="+index+"/"+n)
		return "undefined"
	endif
	return __invmodNames[index]
EndFunction

string Function GetFacetNameByIndex(int index)
	if !__facetNames
		LogTrace("GetFacetNameByIndex ERROR: facetNames is undefined!")
		return "undefined"
	endif
	int n = __facetNames.length
	if index < 0 || index >= n
		LogTrace("GetFacetNameByIndex ERROR: index="+index+"/"+n)
		return "undefined"
	endif
	return __facetNames[index]
EndFunction

int Function GetFacetIndexByName(string the_facet)
	if !__facetNames
		LogTrace("GetFacetIndexByName ERROR: facetNames is undefined!")
		return -1
	endif
	if the_facet == "" || the_facet == "undefined"
		LogTrace("GetFacetIndexByName ERROR: facet="+the_facet+" is undefined!")
		return -1
	endif
	int n = __facetNames.length
	int i = 0
	while i < n
		if the_facet == __facetNames[i]
			return i
		endif
		i += 1
	endwhile
	LogTrace("GetFacetIndexByName ERROR: facet="+the_facet+" was not found!")
	return -1
EndFunction

string Function GetInverseFacetNameByIndex(int index)
	if !__facetInverse
		LogTrace("GetInverseFacetNameByIndex ERROR: facetInverse is undefined!")
		return "undefined"
	endif
	int n = __facetInverse.length
	if index < 0 || index >= n
		LogTrace("GetInverseFacetNameByIndex ERROR: index="+index+"/"+n)
		return "undefined"
	endif
	return __facetInverse[index]
EndFunction

int Function GetInverseFacetIndexByName(string the_facet)
	if !__facetInverse
		LogTrace("GetInverseFacetIndexByName ERROR: facetNames is undefined!")
		return -1
	endif
	if the_facet == "" || the_facet == "undefined"
		LogTrace("GetInverseFacetIndexByName ERROR: facet="+the_facet+" is undefined!")
		return -1
	endif
	int n = __facetInverse.length
	int i = 0
	while i < n
		if the_facet == __facetInverse[i]
			return i
		endif
		i += 1
	endwhile
	LogTrace("GetInverseFacetIndexByName ERROR: facet="+the_facet+" was not found!")
	return -1
EndFunction

Function ReadDescriptionsFile()
	string fileName = "Diary Of Mine/Descriptions.json"
	WriteDescriptionsFile(fileName)
	int n = JsonUtil.StringListCount(fileName,"trainingdescs")
	;LogTrace("ReadDescriptionsFile n="+__trainingDescs.length+"/"+n+" set up, file="+fileName)
	__behaviourStatus=  JsonUtil.StringListToArray(fileName, "behaviourstatus")
	__moodStatus    =  JsonUtil.StringListToArray(fileName, "moodstatus")
	__trainingcolor =  JsonUtil.IntListToArray(fileName, "trainingcolor")
	__trainingStatus=  JsonUtil.StringListToArray(fileName, "trainingstatus")
	__slavercolor   =  JsonUtil.IntListToArray(fileName, "slavercolor")
	__slaverStatus  =  JsonUtil.StringListToArray(fileName, "slaverstatus")
	__specialDescs  =  JsonUtil.StringListToArray(fileName, "specialdescs")
	__raceDescs     =  JsonUtil.StringListToArray(fileName, "racedescs")
	__classDescs    =  JsonUtil.StringListToArray(fileName, "classdescs")
	__trainerDescs  =  JsonUtil.StringListToArray(fileName, "trainerdescs")
	__employerDescs =  JsonUtil.StringListToArray(fileName, "employerdescs")
	__jobDescs      =  JsonUtil.StringListToArray(fileName, "jobdescs")
	__placeDescs    =  JsonUtil.StringListToArray(fileName, "placedescs")
	__difficultyDescs  =  JsonUtil.StringListToArray(fileName, "difficultydescs")
	__proficiencyDescs =  JsonUtil.StringListToArray(fileName, "proficiencydescs")
	__personalityDescs =  JsonUtil.StringListToArray(fileName, "personalitydescs")
	__hudDescs      =  JsonUtil.StringListToArray(fileName, "huddescs")
	__trainingDescs =  JsonUtil.StringListToArray(fileName, "trainingdescs")
	__counterDescs  =  JsonUtil.StringListToArray(fileName, "counterdescs")
	__moodDescs     =  JsonUtil.StringListToArray(fileName, "mooddescs")
	__feelingDescs  =  JsonUtil.StringListToArray(fileName, "feelingdescs")
	__feelinvdescs  =  JsonUtil.StringListToArray(fileName, "feelinvdescs")
	__facetDescs    =  JsonUtil.StringListToArray(fileName, "facetdescs")
	__timeDescs     =  JsonUtil.StringListToArray(fileName, "timedescs")
	__timediffDescs =  JsonUtil.StringListToArray(fileName, "timediffdescs")
	__malerelation  =  JsonUtil.StringListToArray(fileName, "malerelation")
	__femalerelation=  JsonUtil.StringListToArray(fileName, "femalerelation")
	DOM01.SetStrMessagesFromFile(fileName)
EndFunction

Function ReadTraitBonusFile()
	string fileName = "Diary Of Mine/PersonalityTraits.json"
	WriteTraitBonusFile(fileName)
	int n = JsonUtil.StringListCount(fileName,"trainingNames")
	;LogTrace("ReadTraitBonusFile n="+__trainingNames.length+"/"+n+" set up, file="+fileName)
	__trainingNames =  JsonUtil.StringListToArray(fileName, "trainingnames")
	__virginNames   =  JsonUtil.StringListToArray(fileName, "virginnames")
	__virginStatus  =  JsonUtil.StringListToArray(fileName, "virginstatus")
	__counterNames  =  JsonUtil.StringListToArray(fileName, "counternames")
	__traitNames    =  JsonUtil.StringListToArray(fileName, "traitnames")
	__modifierNames =  JsonUtil.StringListToArray(fileName, "modifiernames")
	__invmodNames   =  JsonUtil.StringListToArray(fileName, "invmodnames")
	__facetNames    =  JsonUtil.StringListToArray(fileName, "facetnames")
	__facetInverse  =  JsonUtil.StringListToArray(fileName, "facetinverse")
	__facetMod1     =  JsonUtil.IntListToArray(fileName, "facetmod1")
	__facetMod2     =  JsonUtil.IntListToArray(fileName, "facetmod2")
	__facetMod3     =  JsonUtil.IntListToArray(fileName, "facetmod3")
	__jobwealth     =  JsonUtil.FloatListToArray(fileName, "jobwealth")
	__racemalevalue =  JsonUtil.FloatListToArray(fileName, "racemalevalue")
	__racefemalevalue     =  JsonUtil.FloatListToArray(fileName, "racefemalevalue")
EndFunction

string Function GetBehaviourStatusByIndex(int idx)
	if idx >= __behaviourStatus.length
		idx = 0
	endif
	if idx >= 0
		return __behaviourStatus[idx]
	endif
	return "Unknown status"
EndFunction

string Function GetMoodStatusByIndex(int idx)
	;LogTrace("GetMoodStatusByIndex idx="+idx)
	if idx >= __moodStatus.length
		idx = 0
	endif
	if idx >= 0
		return __moodStatus[idx]
	endif
	return "unknown mood"
EndFunction

string Function GetMoodDescByIndex(int idx)
	;LogTrace("GetMoodDescByIndex idx="+idx)
	if idx >= __moodDescs.length
		idx = 0
	endif
	if idx >= 0
		return __moodDescs[idx]
	endif
	return "an unknown mood"
EndFunction

string Function GetEllapsedTimeStringByIndex(int idx)
	if idx >= __timeDescs.length
		idx = 0
	endif
	if idx >= 0
		return __timeDescs[idx]
	endif
	return "Ages ago"
EndFunction

string Function GetFriendshipString(Actor akRef, int idx)
	if idx < 0
		return ""
	endif
	bool is_female = (akRef.GetLeveledActorBase().GetSex()==1)
	if is_female
		if idx >= __femalerelation.length
			idx = __femalerelation.length - (1)
		endif
		return __femalerelation[idx]
	endif
	if idx >= __malerelation.length
		idx = __malerelation.length - (1)
	endif
	return __malerelation[idx]
EndFunction

string Function GetDifferenceTimeStringByIndex(int idx)
	if idx >= __timediffDescs.length
		idx = 0
	endif
	if idx >= 0
		return __timediffDescs[idx]
	endif
	return "After a certain amount of time"
EndFunction

int Function GetNumberTrainingStatus()
	return __trainingStatus.length
EndFunction

int Function GetNumberTrainingStatusColor()
	return __trainingcolor.length
EndFunction

Function SetTrainingStatusColorByIndex(int idx, int color)
	LogTrace("SetTrainingStatusColorByIndex: "+idx+"/"+__trainingcolor.length+" color="+color)
	if idx >= __trainingcolor.length
		return
	endif
	if idx >= 0
		__trainingcolor[idx] = color
		SetDescriptionsFileIntValue("trainingcolor", idx, color)
	endif
EndFunction

int Function GetTrainingStatusColorByIndex(int idx)
	if idx >= __trainingcolor.length
		idx = 0
	endif
	if idx >= 0
		return __trainingcolor[idx]
	endif
	return 19
EndFunction

string Function GetTrainingStatusNameByIndex(int idx)
	if idx >= __trainingStatus.length
		idx = 0
	endif
	if idx >= 0
		return __trainingStatus[idx]
	endif
	return "Unknown status"
EndFunction

int Function GetNumberSlaverStatus()
	return __slaverStatus.length
EndFunction

int Function GetNumberSlaverStatusColor()
	return __slavercolor.length
EndFunction

string Function GetSlaverStatusNameByIndex(int idx)
	if idx >= __slaverStatus.length
		idx = 0
	endif
	if idx >= 0
		return __slaverStatus[idx]
	endif
	return "Unknown status"
EndFunction

Function SetSlaverStatusColorByIndex(int idx, int color)
	LogTrace("SetSlaverStatusColorByIndex: "+idx+"/"+__slavercolor.length+" color="+color)
	if idx >= __slavercolor.length
		return
	endif
	if idx >= 0
		__slavercolor[idx] = color
		SetDescriptionsFileIntValue("slavercolor", idx, color)
	endif
EndFunction

int Function GetSlaverStatusColorByIndex(int idx)
	if idx >= __slavercolor.length
		idx = 0
	endif
	if idx >= 0
		return __slavercolor[idx]
	endif
	return 19
EndFunction

string Function GetClassNameByIndex(int idx)
	if idx > 0 && idx < __classDescs.length
		return __classDescs[idx]
	endif
	return ""
EndFunction

string Function GetTrainerNameByIndex(int idx)
	if idx > 0 && idx < __trainerDescs.length
		return __trainerDescs[idx]
	endif
	return ""
EndFunction

string Function GetEmployerNameByIndex(int idx)
	if idx > 0 && idx < __employerDescs.length
		return __employerDescs[idx]
	endif
	return ""
EndFunction

string Function GetJobNameByIndex(int idx)
	if __jobDescs.length < 100 && idx >= 100
		idx -= 40
	endif
	if idx > 0 && idx < __jobDescs.length
		return __jobDescs[idx]
	endif
	return ""
EndFunction

string Function GetDifficultyNameByIndex(int idx)
	if idx >= 0 && idx < __difficultyDescs.length
		return __difficultyDescs[idx]
	endif
	return "whatever"
EndFunction

string Function GetProficiencyNameByIndex(int idx)
	if idx >= 0 && idx < __proficiencyDescs.length
		return __proficiencyDescs[idx]
	endif
	return "unapologetic"
EndFunction

string Function GetPersonalityNameByIndex(int idx)
	;LogTrace("GetPersonalityNameByIndex index="+idx+" "+__personalityDescs.length)
	if idx >= 0 && idx < __personalityDescs.length
		return __personalityDescs[idx]
	endif
	return "uninterested"
EndFunction

string Function GetHudNameByIndex(int idx)
	;LogTrace("GetHudNameByIndex index="+__hudDescs+" "+__hudDescs.length)
	if idx >= 0 && idx < __hudDescs.length
		return __hudDescs[idx]
	endif
	return "Bloggers"
EndFunction

string Function GetPlaceNameByIndex(int idx)
	if idx >= 0 && idx < __placeDescs.length
		return __placeDescs[idx]
	endif
	return "unknown place"
EndFunction

string Function GetTrainingNameByIndex(int idx)
	;LogTrace("GetTrainingNameByIndex idx="+idx+"/"+__trainingDescs.length+" "+__trainingDescs[idx])
	if idx >= 0 && idx < __trainingDescs.length
		return __trainingDescs[idx]
	endif
	return "unknown training stat"
EndFunction

string Function GetFeelingNameByIndex(int idx)
	if idx >= 0 && idx < __feelingDescs.length
		return __feelingDescs[idx]
	endif
	return "unknown feeling stat"
EndFunction

string Function GetFeelinvNameByIndex(int idx)
	if idx >= 0 && idx < __feelinvdescs.length
		return __feelinvdescs[idx]
	endif
	return "unknown feeling inverse"
EndFunction

string Function GetCounterNameByIndex(int idx)
	if idx >= 0 && idx < __counterDescs.length
		return __counterDescs[idx]
	endif
	return "unknown training counter"
EndFunction

float[] Function GetTraitBonus(string bonusListName)
	string fileName = "Diary Of Mine/PersonalityTraits.json"
	return  JsonUtil.FloatListToArray(fileName, bonusListName)
EndFunction

float [] Function GetTraitBonusForActor(Actor akTarget)
	actorBase abTarget = akTarget.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	;LogTrace("Looking up bonus for "+akTarget.GetDisplayName()+" race = "+raceString)
	float[] BonusTraitsArray = new float[13]
	
	; Gender bonus
	; An examination of gender differences revealed that women scored higher than men on 
	; conscientiousness, emotional instability and agreeableness 
	; Study on student girls: +22H +49E -4X +12A +7C -3O
	; Additionnal HEXACO trait honesty, is negatively linked to the dark triads traits
	; dark triads = narcissism, psycho and machiavelism
	; those traits have much higher occurence in males
 	bool is_female     = (abTarget.GetSex() == 1)
	if is_female
		float[] gender_bonus = GetTraitBonus("Female")
		int i = 0
		while i < BonusTraitsArray.length && i < gender_bonus.length && i < __traitNames.length
			if gender_bonus[i] != 0.0
				BonusTraitsArray[i] = Random3GenderBonus(gender_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" Female "+__traitNames[i]+" "+gender_bonus[i])
				endif
			else
				BonusTraitsArray[i] = 0.0
			endif
			i += 1
		endwhile
	else
		float[] gender_bonus = GetTraitBonus("Male")
		int i = 0
		while i < BonusTraitsArray.length && i < gender_bonus.length && i < __traitNames.length
			if gender_bonus[i] != 0.0
				BonusTraitsArray[i] = Random3GenderBonus(gender_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" Male "+__traitNames[i]+" "+gender_bonus[i])
				endif
			else
				BonusTraitsArray[i] = 0.0
			endif
			i += 1
		endwhile
	endif

	; Type bonus
	if akTarget.HasKeywordString("ActorTypeAnimal")
		float[] type_bonus = GetTraitBonus("Animal")
		int i = 0
		while i < BonusTraitsArray.length && i < type_bonus.length && i < __traitNames.length
			if type_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3RaceBonus(type_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" Animal "+__traitNames[i]+" "+type_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif
	if akTarget.HasKeywordString("ActorTypeCreature")
		float[] type_bonus = GetTraitBonus("Creature")
		int i = 0
		while i < BonusTraitsArray.length && i < type_bonus.length && i < __traitNames.length
			if type_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3RaceBonus(type_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" Creature "+__traitNames[i]+" "+type_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif
	if akTarget.HasKeywordString("ActorTypeUndead")
		float[] type_bonus = GetTraitBonus("Undead")
		int i = 0
		while i < BonusTraitsArray.length && i < type_bonus.length && i < __traitNames.length
			if type_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3RaceBonus(type_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" Undead "+__traitNames[i]+" "+type_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	; Player Bonus
	if akTarget == PlayerRef
		float[] player_bonus = GetTraitBonus("Player")
		int i = 0
		while i < BonusTraitsArray.length && i < player_bonus.length && i < __traitNames.length
			if player_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3Bonus(player_bonus[i])
				if printActorBonusesToggle 
					LogTrace("GetTraitBonusForActor "+i+" Player "+__traitNames[i]+" "+player_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif
	
	; Age bonuses
	; Studies showed honesty going up with age after 14 yo
	; Emotionality goes down
	; Extraversion and Agreeableness goes down for middle-age than up for olders
	; Conscientiousness and Openness showed upward age trends	
	if IsElder(raceString)
		float[] age_bonus = GetTraitBonus("Elder")
		int i = 0
		while i < BonusTraitsArray.length && i < age_bonus.length && i < __traitNames.length
			if age_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3AgeBonus(age_bonus[i])
				if printActorBonusesToggle 
					LogTrace("GetTraitBonusForActor "+i+" Elder "+__traitNames[i]+" "+age_bonus[i])
				endif
			endif
			i += 1
		endwhile
	elseif IsYoungAdult(raceString)
		float[] age_bonus = GetTraitBonus("YoungAdult")
		int i = 0
		while i < BonusTraitsArray.length && i < age_bonus.length && i < __traitNames.length
			if age_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3AgeBonus(age_bonus[i])
				if printActorBonusesToggle 
					LogTrace("GetTraitBonusForActor "+i+" YoungAdult "+__traitNames[i]+" "+age_bonus[i])
				endif
			endif
			i += 1
		endwhile
	elseif IsChild(raceString)
		float[] age_bonus = GetTraitBonus("Child")
		int i = 0
		while i < BonusTraitsArray.length && i < age_bonus.length && i < __traitNames.length
			if age_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3AgeBonus(age_bonus[i])
				if printActorBonusesToggle 
					LogTrace("GetTraitBonusForActor "+i+" Child "+__traitNames[i]+" "+age_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif
	
	; Race bonus
	int j = 0
	;LogTrace("GetTraitBonusForActor race="+raceString)
	while j < __raceDescs.length
		string raceName = __raceDescs[j]
		if(stringUtil.find(raceString,raceName)>=0)
			float[] race_bonus = GetTraitBonus(raceName)
			int i = 0
			while i < BonusTraitsArray.length && i < race_bonus.length && i < __traitNames.length
				if race_bonus[i] != 0.0
					BonusTraitsArray[i] = BonusTraitsArray[i] + Random3RaceBonus(race_bonus[i])
					if printActorBonusesToggle
						LogTrace("GetTraitBonusForActor "+i+" race="+raceName+" "+__traitNames[i]+" "+race_bonus[i])
					endif
				endif
				i += 1
			endwhile
		endif
		j += 1
	endwhile
	
	; Place bonus
	int iplace = GetPlaceOfOriginIndex(akTarget) ; set faction rank if needed
	string placeName = DOM04.GetPlaceOfOriginName(akTarget)
	;LogTrace("GetTraitBonusForActor place="+placeName)
	if placeName != ""
		float[] place_bonus = GetTraitBonus(placeName)
		int i = 0
		while i < BonusTraitsArray.length && i < place_bonus.length && i < __traitNames.length
			if place_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3PlaceBonus(place_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" place="+placeName+" "+__traitNames[i]+" "+place_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	; Job bonus
	int ijob = GetJobOfOriginIndex(akTarget) ; set faction rank if needed
	string jobName = DOM04.GetJobOfOriginName(akTarget)
	;LogTrace("GetTraitBonusForActor job="+jobName)
	if jobName != ""
		float[] job_bonus = GetTraitBonus(jobName)
		int i = 0
		while i < BonusTraitsArray.length && i < job_bonus.length && i < __traitNames.length
			if job_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3JobBonus(job_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" job="+jobName+" "+__traitNames[i]+" "+job_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	; Employer bonus
	int iemployer = GetEmployerOfOriginIndex(akTarget) ; set faction rank if needed
	string employerName = DOM04.GetEmployerOfOriginName(akTarget)
	;LogTrace("GetTraitBonusForActor employer="+employerName)
	if employerName != ""
		float[] employer_bonus = GetTraitBonus(employerName)
		int i = 0
		while i < BonusTraitsArray.length && i < employer_bonus.length && i < __traitNames.length
			if employer_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3JobBonus(employer_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" employer="+employerName+" "+__traitNames[i]+" "+employer_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	; Trainer bonus
	int itrainer = GetTrainerOfOriginIndex(akTarget) ; set faction rank if needed
	string trainerName = DOM04.GetTrainerOfOriginName(akTarget)
	;LogTrace("GetTraitBonusForActor trainer="+trainerName)
	if trainerName != ""
		float[] trainer_bonus = GetTraitBonus(trainerName)
		int i = 0
		while i < BonusTraitsArray.length && i < trainer_bonus.length && i < __traitNames.length
			if trainer_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3ClassBonus(trainer_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" skill="+trainerName+" "+__traitNames[i]+" "+trainer_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	; Class bonus
	int iclass = GetClassOfOriginIndex(akTarget) ; set faction rank if needed
	string className = DOM04.GetClassOfOriginName(akTarget)
	;LogTrace("GetTraitBonusForActor class="+className)
	if className != ""
		float[] class_bonus = GetTraitBonus(className)
		int i = 0
		while i < BonusTraitsArray.length && i < class_bonus.length && i < __traitNames.length
			if class_bonus[i] != 0.0
				BonusTraitsArray[i] = BonusTraitsArray[i] + Random3ClassBonus(class_bonus[i])
				if printActorBonusesToggle
					LogTrace("GetTraitBonusForActor "+i+" class="+className+" "+__traitNames[i]+" "+class_bonus[i])
				endif
			endif
			i += 1
		endwhile
	endif

	;PrintTraits("GetTraitBonusForActor "+akTarget.GetDisplaYname()+" Bonus",BonusTraitsArray)
	return BonusTraitsArray
EndFunction

float Function Random3GenderBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_gender_bonus;
EndFunction

float Function Random3RaceBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_race_bonus;
EndFunction

float Function Random3AgeBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_age_bonus;
EndFunction

float Function Random3JobBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_job_bonus;
EndFunction

float Function Random3ClassBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_class_bonus;
EndFunction

float Function Random3PlaceBonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r*DOM01.trait_place_bonus;
EndFunction

float Function Random3Bonus(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r;
EndFunction

; Local seed for Random Functions

int seed = 0

; Random generator using fixed seed

float Function RandomTriangle()
	float r = 50.0*(RandomUniform()+RandomUniform())
	return r;
EndFunction

float Function Random3N() ; -1 to 101
	float r
	if DOM01.RandomFlat
		r = 102.0*(RandomUniform())-(1.0)
	else
		r = 34.0*(RandomUniform()+RandomUniform()+RandomUniform())-(1.0)
	endif
	return r;
EndFunction

float Function Random3P(float x) ; 0 to 2 times x
	float r = (RandomUniform()+RandomUniform()+RandomUniform())/3.0*2.0*x
	return r;
EndFunction

float Function RandomGaussianApprox()
	float r = 25.0*(RandomUniform()+RandomUniform()+RandomUniform()+RandomUniform())
	return r;
EndFunction

float Function RandomFlat()
	float r = RandomUniform()
	return r;
EndFunction

float Function RandomUniform()
  ;seed = (1103515245 * seed + 12345) % 2147483648 ;
  seed = (0x41C64E6D * seed + 12345) % 0x80000000 ;
  float r = math.abs((seed as float)/ 2147483648.0 );
  return r;
EndFunction

; Traits and feelings generation using local seed

float[] Function GetNPCTraits(Actor akTarget)
	float[] TraitsArray
	if akTarget == NONE
		return TraitsArray
	endif
	; If traits are saved in factions return ranks
	; else generate traits and save in factions
	if akTarget.isInFaction(DOMHasPersonality)
		int rank = akTarget.GetFactionRank(DOMHasPersonality)
		if rank == 0 ; being generated
			int i = 0
			while i < 10 && rank == 0 ; try to wait up to 10 seconds
				Wait(1.0)
				rank = akTarget.GetFactionRank(DOMHasPersonality)
				i += 1
			endwhile 
			if i >= 10 ; if more than 10 seconds, forget it
				akTarget.setFactionRank(DOMHasPersonality,1)
			endif
		endif
		return GetTraitsFromFactions(akTarget)
	endif
	akTarget.SetFactionRank(DOMHasPersonality,0)
	;LogTrace("GetNPCTraits: START "+akTarget.getDisplayName()+" "+akTarget+" HasPersonality="+akTarget.GetFactionRank(DOMHasPersonality))
	bool is_unique = akTarget.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		TraitsArray = GetPersonalityFromFactionOrGenerated(akTarget)
	elseif !is_unique && !readJSONForSpawned
		TraitsArray = GetPersonalityFromFactionOrGenerated(akTarget)
	else
		TraitsArray = GetPersonalityFromFactionOrReadOrGenerated(akTarget)
		; includes SetNPCTraits
	endif
	;LogTrace("GetNPCTraits: DONE "+akTarget.getDisplayName()+" "+akTarget+" hasDOMHasPersonality="+akTarget.GetFactionRank(DOMHasPersonality))
	CheckPotentialSlaverFaction(akTarget, TraitsArray)	
	return TraitsArray
EndFunction

Function SetNPCTraits(Actor akTarget, float[] TraitsArray)
	;LogTrace("SetNPCTraits "+akTarget.GetDisplayName())
	
	DOM_Actor akActor = DOM01.GetActor(akTarget)
	if akActor != None
		akActor.mind.SetHEXACOValues(TraitsArray)
		return
	endif

	; first check boundaries
	int n = TraitsArray.length
	int i = 0
	while i < n
		if TraitsArray[i] < 0.0
			TraitsArray[i] = 0.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
		i += 1
	endwhile
	
	if DiaryOfMineFramework.GeneratorMode() > 0
		if DiaryOfMineFramework.GenSetTraitFactions(self, akTarget, TraitsArray)
			return
		endif
	endif
	int m = DOMListHEXACOFactions.GetSize()
	i = 0
	while i < n && i < m
		akTarget.setFactionRank(DOMListHEXACOFactions.GetAt(i) as Faction, TraitsArray[i] as int)
		i += 1
	endwhile
EndFunction

Function CheckPotentialSlaverFaction(Actor akTarget, float [] TraitsArray)
	if akTarget.getFactionRank(DOMPotentialSlaverFaction) == 1 && !akTarget.IsInFaction(DOM01.DOMActorFaction)
		return ; already Set
	endif
	; Check for potential Slaver faction
	; As a general rules low honest personalities make the best henchman
	; Personalities siding with bullies:  -honest -open
	;LogTrace("CheckPotentialSlaverFaction: "+akTarget.GetDisplayName()+" honesty="+TraitsArray[0]+" openness="+TraitsArray[5])
	Actor akPlayer = Game.GetPlayer()
	if akTarget.GetRelationshipRank(akPlayer) >= 4
		akTarget.setFactionRank(DOMPotentialSlaverFaction, 1)
	elseif akTarget.IsInFaction(DOMMoodInLove) || akTarget.IsInFaction(DOMMoodLoyal)
		if akTarget.getFactionRank(DOMTrainSubmission) > 70 && akTarget.getFactionRank(DOMTrainRespect) > 70 && akTarget.getFactionRank(DOMTrainResignation) > 70
			akTarget.setFactionRank(DOMPotentialSlaverFaction, 1)
		else
			akTarget.removeFromFaction(DOMPotentialSlaverFaction)
		endif
	elseif (TraitsArray[0] < 34.0 && TraitsArray[5] < 50.0)
		float mod_ins = GetFacetValueByName(akTarget,"insensitivity")
		float rank = (150.0-TraitsArray[0]*2.0-TraitsArray[5]+(mod_ins-(1.0))*100.0)/2.0 ; max is 275.0
		float MODEnforcer = DOM01.GetEnforcerModifier(PlayerRef)
		if MODEnforcer > 0.1
			rank = rank / MODEnforcer
		else
			rank = rank * 10.0
		endif
		;LogTrace("CheckPotentialSlaverFaction: "+akTarget.GetDisplayName()+" honesty="+TraitsArray[0]+" openness="+TraitsArray[5]+" insensitivity="+mod_ins+" rank="+rank)
		if rank > 127.0
			rank = 127.0
		elseif rank < 1.0
			akTarget.removeFromFaction(DOMPotentialSlaverFaction)
		else
			akTarget.setFactionRank(DOMPotentialSlaverFaction, (rank as int))
		endif
	elseif akTarget.IsInFaction(DOMPotentialSlaverFaction)
		akTarget.removeFromFaction(DOMPotentialSlaverFaction)
	endif
	;LogTrace("Checking Slaver potential for "+akTarget.getDisplayName()+" honest="+TraitsArray[0]+" open="+TraitsArray[5]+" rank="+akTarget.getFactionRank(DOMPotentialSlaverFaction))
EndFunction

Function SetNPCDefaultStat(Actor akTarget, Faction akFaction)
	if !akTarget.IsInFaction(akFaction)
		akTarget.SetFactionRank(akFaction,0)
	endif
EndFunction

Function SetNPCDefaultTraining(Actor akTarget)
	SetNPCDefaultStat(akTarget,DOMTrainSubmission)
	SetNPCDefaultStat(akTarget,DOMTrainHumiliation)
	SetNPCDefaultStat(akTarget,DOMTrainResignation)
	SetNPCDefaultStat(akTarget,DOMTrainFear)
	SetNPCDefaultStat(akTarget,DOMTrainAnger)
	SetNPCDefaultStat(akTarget,DOMTrainRespect)
	
	SetNPCDefaultStat(akTarget,DOMTrainPose) 
	SetNPCDefaultStat(akTarget,DOMTrainOral)
	SetNPCDefaultStat(akTarget,DOMTrainVaginal)
	SetNPCDefaultStat(akTarget,DOMTrainAnal)
	SetNPCDefaultStat(akTarget,DOMTrainCombat)
	SetNPCDefaultStat(akTarget,DOMTrainHouse)
	SetNPCDefaultStat(akTarget,DOMTrainWorking)
	SetNPCDefaultStat(akTarget,DOMTraumaInDays)
	SetNPCDefaultStat(akTarget,DOMTraumaInMonths)
	SetNPCDefaultStat(akTarget,DOMTraumaInYears)
	SetNPCDefaultStat(akTarget,DOMEnslavedInDays)
	SetNPCDefaultStat(akTarget,DOMEnslavedInMonths)
	SetNPCDefaultStat(akTarget,DOMEnslavedInYears)
EndFunction

Function PrintTraining(Actor akTarget)
	if DOM01.verboseMode == false
		return
	endif
	
	LogTrace(akTarget.getDisplayName()+" Training stats")
	LogTrace(akTarget.getDisplayName()+"   submission   = "+akTarget.GetFactionRank(DOMTrainSubmission))
	LogTrace(akTarget.getDisplayName()+"   fear         = "+akTarget.GetFactionRank(DOMTrainFear))
	LogTrace(akTarget.getDisplayName()+"   humiliation  = "+akTarget.GetFactionRank(DOMTrainHumiliation))
	LogTrace(akTarget.getDisplayName()+"   anger        = "+akTarget.GetFactionRank(DOMTrainAnger))
	LogTrace(akTarget.getDisplayName()+"   resignation  = "+akTarget.GetFactionRank(DOMTrainResignation))
	LogTrace(akTarget.getDisplayName()+"   respect      = "+akTarget.GetFactionRank(DOMTrainRespect))
	
	LogTrace(akTarget.getDisplayName()+"   combat       = "+GetFactionRankFloat(akTarget,DOMTrainCombat))
	LogTrace(akTarget.getDisplayName()+"   pose         = "+akTarget.GetFactionRank(DOMTrainPose))
	LogTrace(akTarget.getDisplayName()+"   house        = "+akTarget.GetFactionRank(DOMTrainHouse))
	LogTrace(akTarget.getDisplayName()+"   work         = "+akTarget.GetFactionRank(DOMTrainWorking))
	LogTrace(akTarget.getDisplayName()+"   trauma     d = "+akTarget.GetFactionRank(DOMTraumaInDays))
	LogTrace(akTarget.getDisplayName()+"   trauma     m = "+akTarget.GetFactionRank(DOMTraumaInMonths))
	LogTrace(akTarget.getDisplayName()+"   trauma     y = "+akTarget.GetFactionRank(DOMTraumaInYears))
	LogTrace(akTarget.getDisplayName()+"   enslaved   d = "+akTarget.GetFactionRank(DOMEnslavedInDays))
	LogTrace(akTarget.getDisplayName()+"   enslaved   m = "+akTarget.GetFactionRank(DOMEnslavedInMonths))
	LogTrace(akTarget.getDisplayName()+"   enslaved   y = "+akTarget.GetFactionRank(DOMEnslavedInYears))
	LogTrace(akTarget.getDisplayName()+"   vaginal      = "+akTarget.GetFactionRank(DOMTrainVaginal))
	LogTrace(akTarget.getDisplayName()+"   oral         = "+akTarget.GetFactionRank(DOMTrainOral))
	LogTrace(akTarget.getDisplayName()+"   anal         = "+akTarget.GetFactionRank(DOMTrainAnal))
	LogTrace(akTarget.getDisplayName()+"   sex (total)  = "+akTarget.GetFactionRank(DOMTrainSex))

	LogTrace(akTarget.getDisplayName()+"   enforcer     = "+akTarget.GetFactionRank(DOMSkillEnforcer))
	LogTrace(akTarget.getDisplayName()+"   persuader    = "+akTarget.GetFactionRank(DOMSkillPersuader))
	LogTrace(akTarget.getDisplayName()+"   depraver     = "+akTarget.GetFactionRank(DOMSkillDepraver))
	LogTrace(akTarget.getDisplayName()+"   predator     = "+akTarget.GetFactionRank(DOMSkillPredator))
	LogTrace(akTarget.getDisplayName()+"   slaver       = "+akTarget.GetFactionRank(DOMSkillSlaver))
	LogTrace(akTarget.getDisplayName()+"   deceiver     = "+akTarget.GetFactionRank(DOMSkillDeceiver))
EndFunction

float Function GetFacetValueByName(Actor akRef, string mod_name)
	int mod_index = GetFacetIndexByName(mod_name)
	if mod_index >= 0
		float[] TraitsArray = GetNPCTraits(akRef)
		float x = GetFacetByIndex(mod_index, TraitsArray)
		;LogTrace("GetFacetValueByName: "+akRef.GetDisplayName()+" FACET "+mod_name+"="+x)
		return x
	endif
	mod_index = GetInverseFacetIndexByName(mod_name)
	if mod_index >= 0
		float[] TraitsArray = GetNPCTraits(akRef)
		float x = GetInverseFacetByIndex(mod_index, TraitsArray)
		;LogTrace("GetFacetValueByName: "+akRef.GetDisplayName()+" INVERSE FACET "+mod_name+"="+x)
		return x
	endif
	;LogInfo("GetFacetValueByName: "+akRef.GetDisplayName()+" WARNING NOT FOUND! "+mod_name+"="+0.5)
	return 0.5
EndFunction

float Function GetFacetValueByIndex(Actor akRef, int ifacet)
	; ifacet = facet index + 1, can be negative if to take the inverse facet
	float[] TraitsArray = GetNPCTraits(akRef)
	if ifacet > 0
		int idx = ifacet - 1
		return GetFacetByIndex(idx, TraitsArray)
	else
		int idx = -ifacet+1
		return GetInverseFacetByIndex(idx, TraitsArray)
	endif
	;LogInfo("GetFacetValueByIndex: "+akRef.GetDisplayName()+" WARNING NOT FOUND! facet["+ifacet+"]="+0.5)
	return 0.5
EndFunction

string Function OpenActorJSON(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0 ; Diary of Mine Framework: the names in one native call
		string[] names = DiaryOfMineFramework.ActorJsonNames(akRef, PlayerRef)
		if names.Length == 4
			int k = 0
			while k < 4
				if names[k] != "" && JsonUtil.JsonExists(names[k])
					return names[k]
				endif
				k += 1
			endwhile
			return ""
		endif
	endif
	actorBase abTarget = akRef.GetLeveledActorBase()
	string nameString = akRef.GetDisplayName()
	if nameString == ""
		nameString = abTarget.GetName()
	endif
	int formID = Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
	String IDstr = DOM_Util.ConvertIDToHex(formID)
	String fileName = ""
	string playerName = PlayerRef.GetDisplayName()
	if playerName != ""
		fileName = "Diary Of Mine/" + playerName + "/" + IDstr + "_"+ nameString + ".json"
		if JsonUtil.JsonExists(fileName)
			;LogTrace("OpenActorJSON: Found JSON file: "+fileName)
			return fileName
		endif
		fileName = "Diary Of Mine/" + playerName + "/" + IDstr +".json"
		if JsonUtil.JsonExists(fileName)
			;LogTrace("OpenActorJSON: Found JSON file: "+fileName)
			return fileName
		endif
	endif
	fileName = "Diary Of Mine/" + IDstr + "_"+ nameString + ".json"
	if JsonUtil.JsonExists(fileName)
		;LogTrace("OpenActorJSON: Found JSON file: "+fileName)
		return fileName
	endif
	fileName = "Diary Of Mine/" + IDstr +".json"
	if JsonUtil.JsonExists(fileName)
		;LogTrace("OpenActorJSON: Found JSON file: "+fileName)
		return fileName
	endif
	;LogTrace("OpenActorJSON: JSON file NOT FOUND: "+fileName)
	return ""
EndFunction

float[] Function GetPersonalityFromFactionOrGenerated(Actor akTarget)
	;LogTrace("GetPersonalityFromFactionOrGenerated "+akTarget.GetDisplayName())
	; Get default traits from factions or generate (in this order) ignore file
	float[] TraitsArray = GetTraitsFromFactionOrGenerated(akTarget)	
	SetNPCTraits(akTarget, TraitsArray)
	akTarget.SetFactionRank(DOMHasPersonality,1)

	; Force factions or generate
	int[] vstatus = GetVirginStatusGenerated(akTarget)	
	SetVirginStatus(akTarget, vstatus)
	
	; Recover PAH training
	DOMPAH.CheckTrainingFactions(akTarget)	
	
	; Recover Kinks
	; GetActorKinks(akTarget) ; nothing to do as already in factions

	return TraitsArray
EndFunction

float[] Function GetPersonalityFromFactionOrReadOrGenerated(Actor akTarget)
	;LogTrace("GetPersonalityFromFactionOrReadOrGenerated "+akTarget.GetDisplayName())
	; Check if file exists
	string fileName = OpenActorJSON(akTarget)
	; Fixed values from JSON files for choosen NPC
	if fileName == "" || !JsonUtil.JsonExists(fileName)
		; file doesn't exist revert to not reading file
		return GetPersonalityFromFactionOrGenerated(akTarget)
	endif
	
	; Get default traits from faction or file or generate (in this order) 
	float[] TraitsArray = GetTraitsFromFactionOrReadOrGenerated(akTarget)	
	SetNPCTraits(akTarget, TraitsArray)
	akTarget.SetFactionRank(DOMHasPersonality,1)

	; Force reading or generate
	int[] vstatus = GetVirginStatusReadOrGenerated(akTarget)	
	SetVirginStatus(akTarget, vstatus)
	
	; Recover Training first from faction then from file
	GetTrainingStatsFromFactionsOrRead(akTarget)
	
	; Recover Kink
	GetActorKinksRead(akTarget)

	return TraitsArray
EndFunction

float[] Function GetPersonalityGenerated(Actor akTarget)
	;LogTrace("GetPersonalityGenerated "+akTarget.GetDisplayName())

	; Get default traits generated (in this order) ignore factions and file
	float[] TraitsArray = GetTraitsGenerated(akTarget)	
	SetNPCTraits(akTarget, TraitsArray)
	akTarget.SetFactionRank(DOMHasPersonality,1)

	; Force reading or generate
	int[] vstatus = GetVirginStatusGenerated(akTarget)	
	SetVirginStatus(akTarget, vstatus)
	
	; Recover PAH training
	DOMPAH.CheckTrainingFactions(akTarget)	
	
	; Recover Kinks
	;GetActorKinks(akTarget)

	return TraitsArray
EndFunction

float[] Function GetPersonalityReadOrGenerated(Actor akTarget)
	;LogTrace("GetPersonalityReadOrGenerated "+akTarget.GetDisplayName())
	; Check if file exists
	string fileName = OpenActorJSON(akTarget)
	; Fixed values from JSON files for choosen NPC
	if fileName == "" || !JsonUtil.JsonExists(fileName)
		return GetPersonalityGenerated(akTarget)
	endif

	; Get default traits from file or generate (in this order) ignore factions
	float[] TraitsArray = GetTraitsReadOrGenerated(akTarget)	
	SetNPCTraits(akTarget, TraitsArray)
	akTarget.SetFactionRank(DOMHasPersonality,1)

	; Force reading or generate
	int[] vstatus = GetVirginStatusReadOrGenerated(akTarget)	
	SetVirginStatus(akTarget, vstatus)
	
	; Recover Training
	GetTrainingStatsRead(akTarget)
	
	; Recover Kinks
	GetActorKinksRead(akTarget)

	return TraitsArray
EndFunction

float[] Function GetTraitsReadOrGenerated(Actor akRef) ; Get traits from file or generate
	; Generate traits from seed
	;LogTrace("GetTraitsReadOrGenerated: "+akRef.getDisplayName()+" "+akRef)
	float[] TraitsArray
	; Personnality traits ; Message looks for 1 sigma deviation from 50 to define someone as having the trait
	; Flat distribution would be in line with the flat assumption
	; Studies have shown distributions are almost Gaussian
	string fileName
	if readJSONTraitsWarning
		fileName = OpenActorJSON(akRef)
		if fileName != ""
			int iset = DOMPersonalityReadModeMessage.Show()
			if iset == 0
				readJSONTraitsToggle = true
			elseif iset == 1
				readJSONTraitsToggle = true
				readJSONTraitsWarning = false
			elseif iset == 3
				fileName = ""
				readJSONTraitsToggle = false
			else
				fileName = ""
				readJSONTraitsToggle = false
				readJSONTraitsWarning = false
			endif
		endif
	elseif !readJSONTraitsToggle
		fileName = ""
	else
		fileName = OpenActorJSON(akRef)
	endif
	
	; Fixed values from JSON files for choosen NPC
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		LogTrace("GetTraitsReadOrGenerated: Found json file for NPC "+nameJSON+" "+fileName)
		float xh = JsonUtil.GetFloatValue(fileName, __traitNames[0], 50.0)
		float xe = JsonUtil.GetFloatValue(fileName, "emmotionality", -1.0)
		if xe < 0.0
			xe = JsonUtil.GetFloatValue(fileName, "emotionality", -1.0)
		endif
		if xe < 0.0
			xe = JsonUtil.GetFloatValue(fileName, "calmness", 50.0)
			xe = 100.0-xe
		endif
		float xx = JsonUtil.GetFloatValue(fileName, "extraversion", 50.0)
		float xa = JsonUtil.GetFloatValue(fileName, "agreeableness", 50.0)
		float xc = JsonUtil.GetFloatValue(fileName, "conscientiousness", 50.0)
		float xo = JsonUtil.GetFloatValue(fileName, "openness", 50.0)

		float yh = JsonUtil.GetFloatValue(fileName, "wilpower", 50.0)
		float ye = JsonUtil.GetFloatValue(fileName, "toughness", 50.0)
		float yx = JsonUtil.GetFloatValue(fileName, "sensuality", 50.0)
		float ya = JsonUtil.GetFloatValue(fileName, "submissivity", -1.0)
		if ya < 0.0
			ya = JsonUtil.GetFloatValue(fileName, "submitivity", 50.0)
		endif
		float yc = JsonUtil.GetFloatValue(fileName, "boldness", 50.0)
		float yo = JsonUtil.GetFloatValue(fileName, "smartness", 50.0)

		TraitsArray = new float[12]
		TraitsArray[0]  = xh
		TraitsArray[1]  = xe
		TraitsArray[2]  = xx
		TraitsArray[3]  = xa
		TraitsArray[4]  = xc
		TraitsArray[5]  = xo

		TraitsArray[6]  = yh
		TraitsArray[7]  = ye
		TraitsArray[8]  = yx
		TraitsArray[9]  = ya
		TraitsArray[10] = yc
		TraitsArray[11] = yo
	Else
		;LogTrace("Traits: json file does not exist: "+fileName)
		;LogTrace("Traits: Generating traits for "+akRef.GetDisplayName())
		return GetTraitsGenerated(akRef)
	endif
	
    ;PrintTraits(akRef.GetDisplayName()+" Read or Generated",TraitsArray)
	; Check boundaries
	int i = TraitsArray.length
    while i > 0
        i -= 1
        if TraitsArray[i] < 0.0
			TraitsArray[i] = 0.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
    endwhile
    ;PrintTraits(akRef.GetDisplayName()+" GetTraitsReadOrGenerated ",TraitsArray)
	
	return TraitsArray
EndFunction

float[] Function GetTraitsFromFactionOrReadOrGenerated(Actor akRef) ; Get traits from faction or from file or generate
	; Generate traits from seed
	;LogTrace("GetTraitsFromFactionOrReadOrGenerated: "+akRef.getDisplayName()+" "+akRef)
	float[] TraitsArray
	; Personnality traits ; Message looks for 1 sigma deviation from 50 to define someone as having the trait
	; Flat distribution would be in line with the flat assumption
	; Studies have shown distributions are almost Gaussian
	string fileName
	if readJSONTraitsWarning
		fileName = OpenActorJSON(akRef)
		if fileName != ""
			int iset = DOMPersonalityReadModeMessage.Show()
			if iset == 0
				readJSONTraitsToggle = true
			elseif iset == 1
				readJSONTraitsToggle = true
				readJSONTraitsWarning = false
			elseif iset == 3
				fileName = ""
				readJSONTraitsToggle = false
			else
				fileName = ""
				readJSONTraitsToggle = false
				readJSONTraitsWarning = false
			endif
		endif
	elseif !readJSONTraitsToggle
		fileName = ""
	else
		fileName = OpenActorJSON(akRef)
	endif
	
	; Fixed values from JSON files for choosen NPC
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		LogTrace("GetTraitsFromFactionOrReadOrGenerated: Found json file for NPC "+nameJSON+" "+fileName)
		float[] fast
		if DiaryOfMineFramework.GeneratorMode() > 0 ; the file's values, then one native call keeps the faction ranks
			float[] fromFile = new float[12]
			fromFile[0] = JsonUtil.GetFloatValue(fileName, __traitNames[0], 50.0)
			float je = JsonUtil.GetFloatValue(fileName, "emmotionality", -1.0)
			if je < 0.0
				je = JsonUtil.GetFloatValue(fileName, "emotionality", -1.0)
			endif
			if je < 0.0
				je = JsonUtil.GetFloatValue(fileName, "calmness", 50.0)
				je = 100.0-je
			endif
			fromFile[1] = je
			fromFile[2] = JsonUtil.GetFloatValue(fileName, "extraversion", 50.0)
			fromFile[3] = JsonUtil.GetFloatValue(fileName, "agreeableness", 50.0)
			fromFile[4] = JsonUtil.GetFloatValue(fileName, "conscientiousness", 50.0)
			fromFile[5] = JsonUtil.GetFloatValue(fileName, "openness", 50.0)
			fromFile[6] = JsonUtil.GetFloatValue(fileName, "wilpower", 50.0)
			fromFile[7] = JsonUtil.GetFloatValue(fileName, "toughness", 50.0)
			fromFile[8] = JsonUtil.GetFloatValue(fileName, "sensuality", 50.0)
			float ja = JsonUtil.GetFloatValue(fileName, "submissivity", -1.0)
			if ja < 0.0
				ja = JsonUtil.GetFloatValue(fileName, "submitivity", 50.0)
			endif
			fromFile[9] = ja
			fromFile[10] = JsonUtil.GetFloatValue(fileName, "boldness", 50.0)
			fromFile[11] = JsonUtil.GetFloatValue(fileName, "smartness", 50.0)
			fast = DiaryOfMineFramework.GenTraitsFromFactionsOr(self, akRef, fromFile)
		endif
		if fast.Length == 12
			TraitsArray = fast
		else
		float xh
		if akRef.IsInFaction(DOMTraitHonesty)
			xh = akRef.GetFactionRank(DOMTraitHonesty)
		else
			xh = JsonUtil.GetFloatValue(fileName, __traitNames[0], 50.0)
		endif
		float xe
		if akRef.IsInFaction(DOMTraitEmotionality)
			xe = akRef.GetFactionRank(DOMTraitEmotionality)
		else
			xe = JsonUtil.GetFloatValue(fileName, "emmotionality", -1.0)
			if xe < 0.0
				xe = JsonUtil.GetFloatValue(fileName, "emotionality", -1.0)
			endif
			if xe < 0.0
				xe = JsonUtil.GetFloatValue(fileName, "calmness", 50.0)
				xe = 100.0-xe
			endif
		endif
		float xx
		if akRef.IsInFaction(DOMTraitExtraversion)
			xx = akRef.GetFactionRank(DOMTraitExtraversion)
		else
			xx = JsonUtil.GetFloatValue(fileName, "extraversion", 50.0)
		endif
		float xa
		if akRef.IsInFaction(DOMTraitAgreeableness)
			xa = akRef.GetFactionRank(DOMTraitAgreeableness)
		else
			xa = JsonUtil.GetFloatValue(fileName, "agreeableness", 50.0)
		endif
		float xc
		if akRef.IsInFaction(DOMTraitConscientiousness)
			xc = akRef.GetFactionRank(DOMTraitConscientiousness)
		else
			xc = JsonUtil.GetFloatValue(fileName, "conscientiousness", 50.0)
		endif
		float xo
		if akRef.IsInFaction(DOMTraitOpenness)
			xo = akRef.GetFactionRank(DOMTraitOpenness)
		else
			xo = JsonUtil.GetFloatValue(fileName, "openness", 50.0)
		endif

		float yh
		if akRef.IsInFaction(DOMFacetWilfulness)
			yh = akRef.GetFactionRank(DOMFacetWilfulness)
		else
			yh = JsonUtil.GetFloatValue(fileName, "wilpower", 50.0)
		endif
		float ye
		if akRef.IsInFaction(DOMFacetToughness)
			ye = akRef.GetFactionRank(DOMFacetToughness)
		else
			ye = JsonUtil.GetFloatValue(fileName, "toughness", 50.0)
		endif
		float yx
		if akRef.IsInFaction(DOMFacetSensuality)
			yx = akRef.GetFactionRank(DOMFacetSensuality)
		else
			yx = JsonUtil.GetFloatValue(fileName, "sensuality", 50.0)
		endif
		float ya
		if akRef.IsInFaction(DOMFacetSubmissivity)
			ya = akRef.GetFactionRank(DOMFacetSubmissivity)
		else
			ya = JsonUtil.GetFloatValue(fileName, "submissivity", -1.0)
			if ya < 0.0
				ya = JsonUtil.GetFloatValue(fileName, "submitivity", 50.0)
			endif
		endif
		float yc
		if akRef.IsInFaction(DOMFacetBoldness)
			yc = akRef.GetFactionRank(DOMFacetBoldness)
		else
			yc = JsonUtil.GetFloatValue(fileName, "boldness", 50.0)
		endif
		float yo
		if akRef.IsInFaction(DOMFacetSmartness)
			yo = akRef.GetFactionRank(DOMFacetSmartness)
		else
			yo = JsonUtil.GetFloatValue(fileName, "smartness", 50.0)
		endif

		TraitsArray = new float[12]
		TraitsArray[0]  = xh
		TraitsArray[1]  = xe
		TraitsArray[2]  = xx
		TraitsArray[3]  = xa
		TraitsArray[4]  = xc
		TraitsArray[5]  = xo

		TraitsArray[6]  = yh
		TraitsArray[7]  = ye
		TraitsArray[8]  = yx
		TraitsArray[9]  = ya
		TraitsArray[10] = yc
		TraitsArray[11] = yo
		endif
	Else
		;LogTrace("Traits: json file does not exist: "+fileName)
		LogTrace("Traits: Generating traits for "+akRef.GetDisplayName())
		return GetTraitsFromFactionOrGenerated(akRef)
	endif
	
    ;PrintTraits(akRef.GetDisplayName()+" Read or Generated",TraitsArray)
	; Check boundaries
	int i = TraitsArray.length
    while i > 0
        i -= 1
        if TraitsArray[i] < 0.0
			TraitsArray[i] = 0.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
    endwhile
    ;PrintTraits(akRef.GetDisplayName()+" GetTraitsFromFactionOrReadOrGenerated",TraitsArray)
	
	return TraitsArray
EndFunction

float[] Function GetTraitsFromFactions(Actor akTarget)
	;LogTrace("GetTraitsFromFactions: "+akTarget.getDisplayName()+" "+akTarget)
	if DiaryOfMineFramework.GeneratorMode() > 0
		float[] fast = DiaryOfMineFramework.GenTraitsFromFactions(self, akTarget)
		if fast.Length == 12
			return fast
		endif
	endif
	float[] TraitsArray = new float[12]
	
	TraitsArray[0] = akTarget.GetFactionRank(DOMTraitHonesty)
	TraitsArray[1] = akTarget.GetFactionRank(DOMTraitEmotionality)
	TraitsArray[2] = akTarget.GetFactionRank(DOMTraitExtraversion)
	TraitsArray[3] = akTarget.GetFactionRank(DOMTraitAgreeableness)
	TraitsArray[4] = akTarget.GetFactionRank(DOMTraitConscientiousness)
	TraitsArray[5] = akTarget.GetFactionRank(DOMTraitOpenness)

	TraitsArray[6] = akTarget.GetFactionRank(DOMFacetWilfulness)
	TraitsArray[7] = akTarget.GetFactionRank(DOMFacetToughness)
	TraitsArray[8] = akTarget.GetFactionRank(DOMFacetSensuality)
	TraitsArray[9] = akTarget.GetFactionRank(DOMFacetSubmissivity)
	TraitsArray[10] = akTarget.GetFactionRank(DOMFacetBoldness)
	TraitsArray[11] = akTarget.GetFactionRank(DOMFacetSmartness)
	
	;;LogTrace("GetTraitsFromFactions end: "+akTarget.getDisplayName())
    ;PrintTraits(akTarget.GetDisplayName()+" GetTraitsFromFactions",TraitsArray)

	return TraitsArray
EndFunction

float[] Function GetTraitsFromFactionOrGenerated(Actor akTarget)
	;LogTrace("GetTraitsFromFactionOrGenerated: "+akTarget.getDisplayName()+" "+akTarget)
	float[] TraitsArray = GetTraitsGenerated(akTarget)
	float[] fast
	if DiaryOfMineFramework.GeneratorMode() > 0
		fast = DiaryOfMineFramework.GenTraitsFromFactionsOr(self, akTarget, TraitsArray)
	endif
	if fast.Length == 12
		TraitsArray = fast
	else
	if akTarget.isInFaction(DOMTraitHonesty)
		TraitsArray[0] = akTarget.GetFactionRank(DOMTraitHonesty)
	endif
	if akTarget.isInFaction(DOMTraitEmotionality)
		TraitsArray[1] = akTarget.GetFactionRank(DOMTraitEmotionality)
	endif
	if akTarget.isInFaction(DOMTraitExtraversion)
		TraitsArray[2] = akTarget.GetFactionRank(DOMTraitExtraversion)
	endif
	if akTarget.isInFaction(DOMTraitAgreeableness)
		TraitsArray[3] = akTarget.GetFactionRank(DOMTraitAgreeableness)
	endif
	if akTarget.isInFaction(DOMTraitConscientiousness)
		TraitsArray[4] = akTarget.GetFactionRank(DOMTraitConscientiousness)
	endif
	if akTarget.isInFaction(DOMTraitOpenness)
		TraitsArray[5] = akTarget.GetFactionRank(DOMTraitOpenness)
	endif

	if akTarget.isInFaction(DOMFacetWilfulness)
		TraitsArray[6] = akTarget.GetFactionRank(DOMFacetWilfulness)
	endif
	if akTarget.isInFaction(DOMFacetToughness)
		TraitsArray[7]= akTarget.GetFactionRank(DOMFacetToughness)
	endif
	if akTarget.isInFaction(DOMFacetSensuality)
		TraitsArray[8] = akTarget.GetFactionRank(DOMFacetSensuality)
	endif
	if akTarget.isInFaction(DOMFacetSubmissivity)
		TraitsArray[9]= akTarget.GetFactionRank(DOMFacetSubmissivity)
	endif
	if akTarget.isInFaction(DOMFacetBoldness)
		TraitsArray[10] = akTarget.GetFactionRank(DOMFacetBoldness)
	endif
	if akTarget.isInFaction(DOMFacetSmartness)
		TraitsArray[11] = akTarget.GetFactionRank(DOMFacetSmartness)
	endif
	endif

	; Check boundaries
	int i = TraitsArray.length
    while i > 0
        i -= 1
        if TraitsArray[i] < 0.0
			TraitsArray[i] = 0.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
    endwhile
    ;PrintTraits(akTarget.GetDisplayName()+" GetTraitsFromFactionOrGenerated",TraitsArray)

	return TraitsArray
EndFunction

float[] Function GetTraitsGenerated(Actor akTarget)
	int mode = DiaryOfMineFramework.GeneratorMode()
	if mode > 0 ; Diary of Mine Framework: the same seeded generation in one native call
		float[] fast = DiaryOfMineFramework.GenTraitsGenerated(self, akTarget)
		if fast.Length == 12
			if mode > 1
				int seedNative = seed
				float[] check = GetTraitsGeneratedPapyrus(akTarget)
				DiaryOfMineFramework.VerifyFloats("GetTraitsGenerated", akTarget, fast, check, seedNative, seed)
			endif
			return fast
		endif
	endif
	return GetTraitsGeneratedPapyrus(akTarget)
EndFunction

float[] Function GetTraitsGeneratedPapyrus(Actor akTarget)
	float[] TraitsArray = new float[12]
	actorBase abTarget = akTarget.GetLeveledActorBase()
	string nameString = akTarget.GetDisplayName()
	if nameString == ""
		nameString = abTarget.GetName()
	endif
	;LogTrace("GetTraitsGenerated "+nameString+" GetTraitsGenerated()")

	; Base actor values
	;float xh = akTarget.getAV("Health") -(100.0)           ; Level 1 value is 100 for all races
	float xs = akTarget.getAV("Stamina")-(200.0)            ; Level 1 value is 100 for all races
	float xm = akTarget.getAV("Magicka")/10.0-(100.0)       ; Between 0 and 1000 depending on race and level
	float xx = PO3_SKSEFunctions.GetActorSoulSize(akTarget) ; Between 1 and 5 depending on level

	int formID
	if !(abTarget.IsUnique()) || DOM01.seedUniques
		;if !(abTarget.IsUnique())
		;	LogTrace("GetTraitsGenerated "+nameString+" is not unique using Random seed") ; , faction "+DOMRandomSeed)
		;else
		;	LogTrace("GetTraitsGenerated "+nameString+" is unique but using Random seed anyhow") ; , faction "+DOMRandomSeed)
		;endif
		;LogTrace("GetTraitsGenerated "+nameString+" Is in faction? "+akTarget.isInFaction(DOMRandomSeed)+" rank "+akTarget.getFactionRank(DOMRandomSeed))
		if akTarget.isInFaction(DOMRandomSeed)
			seed = akTarget.getFactionRank(DOMRandomSeed)
			;LogTrace("GetTraitsGenerated "+nameString+" Old value restored DOMRandomSeed = "+seed)	
			formID = seed+Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
			;LogTrace("GetTraitsGenerated "+nameString+" Old seed value used = "+seed)
		else
			seed  = (((RandomFloat()*256.0) as int) % 256 ) - (128)
			akTarget.setFactionRank(DOMRandomSeed, seed)
			;LogTrace("GetTraitsGenerated "+nameString+" New value stored DOMRandomSeed = "+seed)
			formID = seed+Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
			;LogTrace("GetTraitsGenerated "+nameString+" New seed value used = "+seed)
		endif
	else
		;LogTrace(nameString+" is unique, use fixed seed!")
		formID = Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
	endif
	;seed = (4527 * (formID+(68))+1013904223) % 2147483648;
	seed =  (0x10A1 * (formID+0x44)+0x3C6EF35F) % 0x80000000; 
	;LogTrace("GetTraitsGenerated "+nameString+" uses ID = "+abTarget+" and seed = "+seed)

	TraitsArray[0]  = Random3N() ; Sly/Honest     Hexaco: Honesty-Humility 
	TraitsArray[1]  = Random3N() ; Calm/Anxious   Hexaco: Emotionality 
	TraitsArray[2]  = Random3N() ; Shy/Lively     Hexaco: eXtraversion 
	TraitsArray[3]  = Random3N() ; Grumpy/Gentle  Hexaco: Agreeableness
	TraitsArray[4]  = Random3N() ; Lazy/Thorough  Hexaco: Conscientiousness 
	TraitsArray[5]  = Random3N() ; Shallow/Open   Hexaco: Openness to Experience

	; Mind & Physical power              ; HEXACO Facets
	TraitsArray[6] = Random3N()+xx*2.0   ; WTSUBM: 1 Wilfulness: Weak/Wilful somehow related to soul size or level
	TraitsArray[7] = Random3N()+xs/20.0  ; WTSUBM: 2 Toughness: Delicate/Tough somehow related to stamina
	TraitsArray[8] = Random3N()          ; WTSUBM: 3 Sensuality: Frigid/Sensual
	TraitsArray[9] = Random3N()          ; WTSUBM: 4 sUbmissivity: sadistic/masochistic = perversion orientation (not a judgement or a graduation of perversion)
	TraitsArray[10]  = Random3N()          ; WTSUBM: 5 Boldness: Needy/Bold  
	TraitsArray[11]  = Random3N()+xm/10.0  ; WTSUBM: 6 sMartness: Stupid/Smart somehow related to magicka

	;PrintTraits("GetTraitsGenerated "+nameString+" Generation",TraitsArray)
	
	bool is_female     = (abTarget.GetSex() == 1)
	float [] BonusTraitsArray = GetTraitBonusForActor(akTarget)
	int i = 0
	while i < BonusTraitsArray.length
		if i == 9 ; submissive/dominant bonuses
			if RandomUniform() > 0.5 ; 50% submissive bonus
				TraitsArray[i] = TraitsArray[i] + BonusTraitsArray[i]
				;LogTrace("GetTraitsGenerated "+__traitNames[i]+"="+TraitsArray[i]+" ("+BonusTraitsArray[i]+")")
			else                     ; 50% dominant bonus
				TraitsArray[i] = TraitsArray[i] - BonusTraitsArray[BonusTraitsArray.length-(1)]
				;LogTrace("GetTraitsGenerated "+__traitNames[i]+"="+TraitsArray[i]+" (-"+BonusTraitsArray[i+1]+")")
			endif
		elseif i < 12
			TraitsArray[i] = TraitsArray[i] + BonusTraitsArray[i]
			;LogTrace("GetTraitsGenerated "+__traitNames[i]+"="+TraitsArray[i]+" ("+BonusTraitsArray[i]+")")
		endif
		i += 1
	endwhile

	;PrintTraits("GetTraitsGenerated "+nameString+" After bonuses",TraitsArray)

	; Morality effect on honesty
	float x = akTarget.GetAV("Morality")
	;LogTrace("Special bonus for "+nameString+" morality = "+x)
	If x < 1
		TraitsArray[0]  = TraitsArray[0] -Random3PlaceBonus(25)  ; Honest
	ElseIf x < 2
		TraitsArray[0]  = TraitsArray[0] -Random3PlaceBonus(10)  ; Honest
	ElseIf x < 3
		TraitsArray[0]  = TraitsArray[0] +Random3PlaceBonus(10)  ; Honest
	Else
		TraitsArray[0]  = TraitsArray[0] +Random3PlaceBonus(25)  ; Honest
	endif
	; Confidence effect on boldness
	x = akTarget.GetAV("Confidence")
	;LogTrace("Special bonus for "+nameString+" confidence = "+x)
	If x < 1
		TraitsArray[10]  = TraitsArray[10] -Random3PlaceBonus(25)  ; Bold
	ElseIf x < 2
		TraitsArray[10]  = TraitsArray[10] -Random3PlaceBonus(10)  ; Bold
	ElseIf x < 3
		TraitsArray[10]  = TraitsArray[10] +Random3PlaceBonus(10)  ; Bold
	Else
		TraitsArray[10]  = TraitsArray[10] +Random3PlaceBonus(25)  ; Bold
	endif
	; Assistance effect on Agreeableness
	x = akTarget.GetAV("Assistance")
	;LogTrace("Special bonus for "+nameString+" assistance = "+x)
	If x < 1
		TraitsArray[3]  = TraitsArray[3] -Random3PlaceBonus(15)  ; Grumpy
	ElseIf x > 1
		TraitsArray[3]  = TraitsArray[3] +Random3PlaceBonus(15)  ; Agreeable
	endif

	; Check boundaries
	i = TraitsArray.length
    while i > 0
        i -= 1
        if TraitsArray[i] < 0.0
			TraitsArray[i] = 0.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
    endwhile

	;LogTrace("Actor "+nameString+" Morality="+akTarget.GetAV("Morality")+" Confidence="+akTarget.GetAV("Confidence")+" Assistance="+akTarget.GetAV("Assistance"))
	;PrintTraits(nameString+" Values",TraitsArray)
    ;PrintTraits(akTarget.GetDisplayName()+" GetTraitsGenerated",TraitsArray)

	return TraitsArray
EndFunction

float[] Function ReadBaseTraits(Actor akRef)
	; Generate traits from seed
	;LogTrace("ReadBaseTraits: "+akRef.getDisplayName()+" "+akRef)
	float[] TraitsArray = new float[12]
	;LogTrace("ReadBaseTraits: n="+__traitNames.Length+" m="+TraitsArray.Length)
	; Personnality traits ; Message looks for 1 sigma deviation from 50 to define someone as having the trait
	; Flat distribution would be in line with the flat assumption
	; Studies have shown distributions are almost Gaussian
	string fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		;LogTrace("ReadBaseTraits: Found json file for NPC "+nameJSON+" "+fileName)

		int n = __traitNames.Length
		int m = TraitsArray.Length
		int i = 0
		while i < n && i < m
			TraitsArray[i] = JsonUtil.GetFloatValue(fileName, "base_"+__traitNames[i], -1.0)
			;LogTrace("ReadBaseTraits HEXACO: "+__traitNames[i]+" value "+ TraitsArray[i])
			i += 1
		endwhile
	Else
		int n = __traitNames.Length
		int m = TraitsArray.Length
		int i = 0
		while i < n && i < m
			TraitsArray[i] = -1.0
			;LogTrace("ReadBaseTraits HEXACO DEFAULT=-1: "+__traitNames[i]+" value "+ TraitsArray[i])
			i += 1
		endwhile
	endif
	
    ;PrintTraits(akRef.GetDisplayName()+" Generated",TraitsArray)
	; Check boundaries
	int i = TraitsArray.length
    while i > 0
        i -= 1
        if TraitsArray[i] < 0.0
			TraitsArray[i] = -1.0
		elseif TraitsArray[i] > 100.0
			TraitsArray[i] = 100.0
		endif
    endwhile
    ;PrintTraits(akRef.GetDisplayName()+" Final",TraitsArray)
	
	return TraitsArray
EndFunction

Function SetJSONDateValueFromFaction(Actor akTarget, string fileName, string keyName, Faction the_days, Faction the_months, Faction the_years)
	if !akTarget.IsInFaction(the_days)
		return
	endif
	int ndays = akTarget.GetFactionRank(the_days)
	if akTarget.IsInFaction(the_months)
		ndays += akTarget.GetFactionRank(the_months)
	endif
	if akTarget.IsInFaction(the_years)
		ndays += akTarget.GetFactionRank(the_years)
	endif
	JsonUtil.SetFloatValue(fileName, keyName, ndays)
EndFunction

Function SetJSONFloatValueFromFaction(Actor akTarget, string fileName, string keyName, Faction the_faction)
	if akTarget.IsInFaction(the_faction)
		JsonUtil.SetFloatValue(fileName, keyName, akTarget.GetFactionRank(the_faction))
	endif
EndFunction

Function SetJSONIntValueFromFaction(Actor akTarget, string fileName, string keyName, Faction the_faction)
	if akTarget.IsInFaction(the_faction)
		JsonUtil.SetIntValue(fileName, keyName, akTarget.GetFactionRank(the_faction))
	endif
EndFunction

Function WriteActorJSON(Actor akTarget)
	LogTrace("WriteActorJSON "+akTarget.GetDisplayName())
	DOM_Actor akActor = DOM01.GetActor(akTarget)
	if akActor != NONE
		WriteJSON(akActor)
		return
	endif
	if akTarget == None
		LogTrace("WriteActorJSON: Actor is NONE ")
		;DOM01.HudNotification("Write JSON failed: invalid actor")
		return
	endif

	string playerName = PlayerRef.GetDisplayName()
	LogTrace("WriteActorJSON: "+akTarget.getDisplayName()+" "+akTarget+" player="+playerName)
	actorBase abTarget = akTarget.GetLeveledActorBase()
	string nameString = akTarget.GetDisplayName()
	if nameString == ""
		nameString = abTarget.GetName()
	endif
	int formID = Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
	string IDstr = DOM_Util.ConvertIDToHex(formID)
	string fileName
	if playerName != ""
		fileName = "Diary Of Mine/" + playerName + "/" + IDstr + "_"+ nameString + ".json"
	else
		fileName = "Diary Of Mine/" +  IDstr + "_"+ nameString + ".json"
	endif
	if JsonUtil.JsonExists(fileName)
		LogTrace("WriteActorJSON: json file will be overwritten: "+fileName)
	endif
	LogTrace("Creating json file for DOM Actor "+fileName)
	
	JsonUtil.SetStringValue(fileName,"fullname",          nameString)
	JsonUtil.SetStringValue(fileName,"basename",          abTarget.GetName())
	JsonUtil.SetStringValue(fileName,"id",                "0x"+IDstr)
	
	float[] traits = GetNPCTraits(akTarget)
	int n = DOMListHEXACOFactions.GetSize()
	int m = __traitNames.Length
	int p = traits.Length
	int i = 0
	while i < n && i < m && i < p
		LogTrace("WriteActorJSON HEXACO: "+__traitNames[i]+" value "+traits[i]+" faction "+DOMListHEXACOFactions.GetAt(i).GetName())
		JsonUtil.SetFloatValue(fileName, __traitNames[i], traits[i])
		i += 1
	endwhile
		
	; Relationship to player
	JsonUtil.SetIntValue(fileName, "playerrelationship",   akTarget.GetRelationshipRank(PlayerRef))

	; Training stats
	n = DOMListTrainingFactions.GetSize()
	m = __trainingNames.Length - 2
	i = 0
	while i < n && i < m
		LogTrace("WriteActorJSON Training: "+__trainingNames[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
		SetJSONFloatValueFromFaction(akTarget,fileName, __trainingNames[i], DOMListTrainingFactions.GetAt(i) as Faction)
		i += 1
	endwhile

	SetJSONDateValueFromFaction( akTarGet,fileName, "trauma",            DOMTraumaInDays, DOMTraumaInMonths, DOMTraumaInYears)
	SetJSONDateValueFromFaction( akTarGet,fileName, "enslaved",          DOMEnslavedInDays,DOMEnslavedInMonths,DOMEnslavedInYears)

	int[] vstatus = GetVirginStatus(akTarget)
	n = DOMListVirginFactions.GetSize()
	m = __virginNames.Length
	p = vstatus.Length
	i = 0
	while i < n && i < m && i < p
		LogTrace("WriteActorJSON Virginity: "+__virginNames[i]+" value "+vstatus[i]+" faction "+DOMListVirginFactions.GetAt(i).GetName())
		if vstatus[i] == 4
			JsonUtil.SetIntValue(fileName, __virginNames[i], 0)
		else
			JsonUtil.SetIntValue(fileName, __virginNames[i], 1)
		endif
		JsonUtil.SetIntValue(fileName, __virginStatus[i], vstatus[i])
		i += 1
	endwhile

	n = DOMListCounterFactions.GetSize()
	m = __counterNames.Length
	i = 0
	while i < n && i < m
		LogTrace("WriteActorJSON Counters: "+__counterNames[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		SetJSONIntValueFromFaction(akTarGet,fileName, __counterNames[i], DOMListCounterFactions.GetAt(i) as Faction)
		i += 1
	endwhile

	JsonUtil.Save(fileName)
	;DOM01.HudNotification("Write JSON success: "+akTarget.GetDisplayName())
EndFunction

Function ReadActorJSON(Actor akTarget)
	LogTrace("ReadActorJSON "+akTarget.GetDisplayName())
	DOM_Actor akActor = DOM01.GetActor(akTarget)
	if akActor != NONE
		ReadJSON(akActor)
		return
	endif
	if akTarget == None
		LogTrace("ReadActorJSON: Actor is NONE ")
		;DOM01.HudNotification("Read JSON failed: invalid actor "+akTarget.GetDisplayName())
		LogTrace("Read JSON failed: invalid actor "+akTarget.GetDisplayName())
		return
	endif

	; Get default traits from file
	float[] TraitsArray = GetPersonalityReadOrGenerated(akTarget)	

	;DOM01.HudNotification("Read JSON success: "+akTarget.GetDisplayName())
EndFunction

Function WriteJSON(DOM_Actor akActor)
	if akActor == None
		LogTrace("WriteJSON: Actor is NONE")
		;DOM01.HudNotification("Write DOM JSON failed: invalid actor")
		return
	endif
	Actor akTarget = akActor.akRef
	if akTarget == None
		LogTrace("WriteJSON: Actor Ref is NONE "+akActor.getName())
		;DOM01.HudNotification("Write DOM JSON failed: invalid actor")
		return
	endif
	DOM_Mind akMind = akActor.mind
	if akMind == None
		LogTrace("WriteJSON: Actor Mind is NONE "+akActor.getName())
		;DOM01.HudNotification("Write DOM JSON failed: invalid actor")
		return
	endif	
	string playerName = PlayerRef.GetDisplayName()
	;LogTrace("WriteJSON: "+akTarget.getDisplayName()+" "+akTarget+" player="+playerName)
	actorBase abTarget = akTarget.GetLeveledActorBase()
	string nameString = akTarget.GetDisplayName()
	if nameString == ""
		nameString = abTarget.GetName()
	endif
	int formID = Math.LogicalAnd(abTarget.GetFormID(), 0x00FFFFFF)
	String IDstr = DOM_Util.ConvertIDToHex(formID)
	string fileName
	if playerName != ""
		fileName = "Diary Of Mine/" + playerName + "/" + IDstr + "_"+ nameString + ".json"
	else
		fileName = "Diary Of Mine/" +  IDstr + "_"+ nameString + ".json"
	endif
	if JsonUtil.JsonExists(fileName)
		LogTrace("WriteJSON: json file will be overwritten: "+fileName)
	endif
	LogTrace("Creating json file for DOM Actor "+fileName)
	JsonUtil.SetStringValue(fileName,"fullname",          akActor.GetName())
	JsonUtil.SetStringValue(fileName,"fulltitle",         akActor.GetTitle())
	JsonUtil.SetStringValue(fileName,"fullgender",        akActor.GetGenderByString())

	int n = __traitNames.Length
	int m = akMind.HEXACO_Traits.Length
	int i = 0
	while i < n && i < m
		;LogTrace("WriteJSON HEXACO: "+__traitNames[i]+" value "+ akMind.HEXACO_Traits[i])
		JsonUtil.SetFloatValue(fileName, __traitNames[i], akMind.HEXACO_Traits[i])
		i += 1
	endwhile

	i = 0
	while i < n && i < m
		;LogTrace("WriteJSON HEXACO BASE: base_"+__traitNames[i]+" value "+ akMind.HEXACO_Base[i])
		JsonUtil.SetFloatValue(fileName, "base_"+__traitNames[i], akMind.HEXACO_Base[i])
		i += 1
	endwhile
	
	i = 0
	n = akMind.hidden_kinks_slot.length
	while i < n
		int ikink = akMind.hidden_kinks_slot[i]
		if ikink > 0
			string kink_str = "hiddenkink"+i
			;LogTrace("WriteJSON "+akActor.GetName()+" "+kink_str+" ik="+ikink+" kink="+ DOM01.GetJSONKinkReasonNameByIndex(ikink,akActor.actorSex))
			JsonUtil.SetStringValue(fileName, kink_str, DOM01.GetJSONKinkReasonNameByIndex(ikink,akActor.actorSex))
		endif
		i +=1
	endwhile
	i = 0
	n = akMind.known_kinks_slot.length
	while i < n
		int ikink = akMind.known_kinks_slot[i]
		if ikink > 0
			string kink_str = "knownkink"+i
			JsonUtil.SetStringValue(fileName, kink_str, DOM01.GetJSONKinkReasonNameByIndex(ikink,akActor.actorSex))
		endif
		i +=1
	endwhile
	
	; Relationship to player
	JsonUtil.SetIntValue(fileName, "playerrelationship",   akTarget.GetRelationshipRank(PlayerRef))

	; Training stats & skills
	n = akMind.TRAINING_Stats.Length
	m = __trainingNames.Length - 2
	i = 0
	while i < n && i < m
		;LogTrace("WriteJSON Training: "+__trainingNames[i]+" value "+akMind.TRAINING_Stats[i])
		JsonUtil.SetFloatValue(fileName, __trainingNames[i],    akMind.TRAINING_Stats[i])
		i += 1
	endwhile

	JsonUtil.SetFloatValue(fileName, "trauma",            akMind.timer_for_broken)
	JsonUtil.SetFloatValue(fileName, "enslaved",          akMind.timer_for_enslaved)
	
	; Virginity
	n = __virginNames.Length
	m = akMind.TRAINING_Virginity.Length
	i = 0
	while i < n && i < m
		;LogTrace("WriteJSON Virginity: "+__virginNames[i]+" value "+ akMind.TRAINING_Virginity[i])
		if akMind.TRAINING_Virginity[i] == 4
			JsonUtil.SetIntValue(fileName, __virginNames[i], 0)
		else
			JsonUtil.SetIntValue(fileName, __virginNames[i], 1)
		endif
		JsonUtil.SetIntValue(fileName, __virginStatus[i], akMind.TRAINING_Virginity[i])
		i += 1
	endwhile

	; Counters
	n = __counterNames.Length
	m = akMind.TRAINING_Counter.Length
	i = 0
	while i < n && i < m
		;LogTrace("WriteJSON Counters: "+__counterNames[i]+" value "+ akMind.TRAINING_Counter[i])
		JsonUtil.SetIntValue(fileName, __counterNames[i], akMind.TRAINING_Counter[i])
		i += 1
	endwhile

	JsonUtil.SetStringValue(fileName,"memory_origin_txt", akMind.memory_origin_txt)
	JsonUtil.SetFloatValue(fileName, "memory_capture_time", akMind.memory_capture_time)
	JsonUtil.SetIntValue(fileName, "memory_capture_mood", akMind.memory_capture_mood)
	JsonUtil.SetIntValue(fileName, "memory_capture_ntimes", akMind.memory_capture_ntimes)
	JsonUtil.SetIntValue(fileName, "memory_capture_rtimes", akMind.memory_capture_rtimes)
	JsonUtil.SetIntValue(fileName, "memory_capture_ftimes", akMind.memory_capture_ftimes)
	JsonUtil.SetStringValue(fileName,"memory_capture_location", akMind.memory_capture_location)
	JsonUtil.SetStringValue(fileName,"memory_capture_occupation", akMind.memory_capture_occupation)
	JsonUtil.SetStringValue(fileName,"memory_capture_origin", akMind.memory_capture_origin)
	JsonUtil.SetStringValue(fileName,"memory_capture_type", akMind.memory_capture_type)
	JsonUtil.SetStringValue(fileName,"memory_capture_txt", akMind.memory_capture_txt)

	i = 0
	n = akMind.memory_entries
	while i < n
		JsonUtil.SetFloatValue(fileName, "memory_abuse_time"+i, akMind.memory_abuse_time[i])
		JsonUtil.SetIntValue(fileName, "memory_abuse_category"+i, akMind.memory_abuse_category[i])
		JsonUtil.SetIntValue(fileName, "memory_abuse_mood"+i, akMind.memory_abuse_mood[i])
		JsonUtil.SetIntValue(fileName, "memory_abuse_level"+i, akMind.memory_abuse_level[i])
		JsonUtil.SetIntValue(fileName, "memory_abuse_ntimes"+i, akMind.memory_abuse_ntimes[i])
		JsonUtil.SetIntValue(fileName, "memory_abuse_respectful"+i, akMind.memory_abuse_respectful[i] as Int)
		JsonUtil.SetIntValue(fileName, "memory_abuse_flag"+i, akMind.memory_abuse_flag[i] as Int)
		JsonUtil.SetStringValue(fileName,"memory_abuse_location"+i, akMind.memory_abuse_location[i])
		JsonUtil.SetStringValue(fileName,"memory_abuse_type"+i, akMind.memory_abuse_type[i])
		JsonUtil.SetStringValue(fileName,"memory_abuse_reason"+i, akMind.memory_abuse_reason[i])
		JsonUtil.SetStringValue(fileName,"memory_abuse_txt"+i, akMind.memory_abuse_txt[i])
		i +=1
	endwhile

	JsonUtil.Save(fileName)
	;DOM01.HudNotification("Write DOM JSON success: "+akTarget.GetDisplayName())
EndFunction

Function ReadJSON(DOM_Actor akActor)
	if akActor == None
		;DOM01.HudNotification("Read DOM JSON failed: invalid actor")
		return
	endif
	Actor akTarget = akActor.akRef
	if akTarget == None
		;DOM01.HudNotification("Read DOM JSON failed: invalid actor")
		return
	endif
	DOM_Mind akMind = akActor.mind
	if akMind == None
		;DOM01.HudNotification("Read DOM JSON failed: invalid actor")
		return
	endif	
	akMind.RestorePersonality()
	GetTrainingStatsForcedRead(akActor)
	akMind.RestoreVirginity()
	akMind.RestoreHiddenKinks()
	SetMemories(akMind)
	akMind.CheckMood()
	akMind.CheckFactions()
	;DOM01.HudNotification("Read DOM JSON success: "+akTarget.GetDisplayName())
EndFunction

Function SetMemories(DOM_Mind akMind)
	if !ReadJSONMemoriesToggle
		return
	endif
	if akMind == NONE
		return
	endif
	Actor akRef = akMind.akRef
	bool is_unique = akRef.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		return
	elseif is_unique && !readJSONForSpawned
		return
	endif

	;LogTrace("SetMemories "+akMind.GetName())
	string fileName = OpenActorJSON(akRef)
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		;LogTrace("SetMemories: json file does not exist: "+fileName)
		return
	endif
	LogTrace("SetMemories: Found json file for NPC "+akRef.GetDisplayName()+": "+fileName)
	
	float time = JsonUtil.GetFloatValue(fileName, "memory_capture_time", 0.0)
	int mood
	if time != 0.0
		akMind.memory_capture_time = time
		akMind.memory_capture_mood = JsonUtil.GetIntValue(fileName, "memory_capture_mood", 0)
		akMind.memory_capture_ntimes = JsonUtil.GetIntValue(fileName, "memory_capture_ntimes", 1)
		akMind.memory_capture_rtimes = JsonUtil.GetIntValue(fileName, "memory_capture_rtimes", 0)
		akMind.memory_capture_ftimes = JsonUtil.GetIntValue(fileName, "memory_capture_ftimes", 0)
		akMind.memory_capture_location = JsonUtil.GetStringValue(fileName,"memory_capture_location", "")
		akMind.memory_capture_occupation =  JsonUtil.GetStringValue(fileName,"memory_capture_occupation", "")
		akMind.memory_capture_origin = JsonUtil.GetStringValue(fileName,"memory_capture_origin", "")
		akMind.memory_capture_type = JsonUtil.GetStringValue(fileName,"memory_capture_type", "")
		akMind.memory_capture_txt = JsonUtil.GetStringValue(fileName,"memory_capture_txt","")
		akMind.memory_origin_txt = JsonUtil.GetStringValue(fileName,"memory_origin_txt","")
	endif

	int kmax = akMind.memory_abuse_time.length
	int i = 0
	int ktot = 0
	while i < kmax
		time   = JsonUtil.GetFloatValue(fileName, "memory_abuse_time"+i,0.0)
		if time != 0.0
			akMind.memory_abuse_time[ktot] = time
			akMind.memory_abuse_category[ktot] = JsonUtil.GetIntValue(fileName, "memory_abuse_category"+i, 1)
			akMind.memory_abuse_mood[ktot] = JsonUtil.GetIntValue(fileName, "memory_abuse_mood"+i, 0)
			akMind.memory_abuse_level[ktot] = JsonUtil.GetIntValue(fileName, "memory_abuse_level"+i, 0)
			akMind.memory_abuse_ntimes[ktot] = JsonUtil.GetIntValue(fileName, "memory_abuse_ntimes"+i, 1)
			int respectful = JsonUtil.GetIntValue(fileName, "memory_abuse_respectful"+i, 0)
			if respectful > 0
				akMind.memory_abuse_respectful[ktot] = true
			else
				akMind.memory_abuse_respectful[ktot] = false
			endif
			int flag = JsonUtil.GetIntValue(fileName, "memory_abuse_flag"+i, 0)
			if flag > 0
				akMind.memory_abuse_flag[ktot] = true
			else
				akMind.memory_abuse_flag[ktot] = false
			endif
			akMind.memory_abuse_type[ktot] = JsonUtil.GetStringValue(fileName,"memory_abuse_type"+i, "")
			akMind.memory_abuse_reason[ktot] = JsonUtil.GetStringValue(fileName,"memory_abuse_reason"+i, "")
			akMind.memory_abuse_txt[ktot] = JsonUtil.GetStringValue(fileName,"memory_abuse_txt"+i, "")
			ktot += 1
		endif
		i += 1
	endwhile
	if ktot > 0
		akMind.memory_entries = ktot
	endif
EndFunction

Function PrintTraits(string title, Float[] TraitsArray)
	int i = 0
	int n = TraitsArray.length
	if n > __traitNames.length
		n = __traitNames.length
	endif
    while i < n
  		LogTrace(title+" "+__traitNames[i]+"="+TraitsArray[i])
		i += 1
   endwhile
EndFunction

Function GetActorKinksRead(Actor akTarget)
	if !ReadJSONKinksToggle
		return
	endif
	int kmax = 8
	ActorBase abTarget = akTarget.GetLeveledActorBase()
	int actorSex = abTarget.GetSex()
	int k = GetHiddenKinksNumber(akTarget,actorSex,kmax)
	int i = 0
	while i < k
		int ikink = GetHiddenKink(akTarget,actorSex,i)
		if ikink > 0
			if i == 0
				akTarget.SetFactionRank(DOMHiddenKink0,ikink)
			elseif i == 1
				akTarget.SetFactionRank(DOMHiddenKink1,ikink)
			elseif i == 2
				akTarget.SetFactionRank(DOMHiddenKink2,ikink)
			elseif i == 3
				akTarget.SetFactionRank(DOMHiddenKink3,ikink)
			elseif i == 4
				akTarget.SetFactionRank(DOMHiddenKink4,ikink)
			elseif i == 5
				akTarget.SetFactionRank(DOMHiddenKink5,ikink)
			elseif i == 6
				akTarget.SetFactionRank(DOMHiddenKink6,ikink)
			elseif i == 7
				akTarget.SetFactionRank(DOMHiddenKink7,ikink)
			endif
		endif
		i += 1
	endwhile
EndFunction

float Function GetSubmissionTraining(string fileName, Actor akRef)
	if DOMPAH.hasSubmissionTraining(akRef)
		float rank1 = DOMPAH.GetSubmissionFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[0], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[0], 0.0)
EndFunction

float Function GetFearTraining(string fileName, Actor akRef)
	;LogTrace("GetFearTraining "+fileName+" "+akRef.GetDisplayName())
	if DOMPAH.hasFearTraining(akRef)
		float rank1 = DOMPAH.GetFearFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[1], rank1)
		;LogTrace("GetFearTraining "+akRef.GetDisplayName()+" "+rank1+"/"+rank2)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	;LogTrace("GetFearTraining "+akRef.GetDisplayName()+" "+JsonUtil.GetFloatValue(fileName, "xfeartraining", 0.0))
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[1], 0.0)
EndFunction

float Function GetHumiliationTraining(string fileName, Actor akRef)
	if DOMPAH.hasHumiliationTraining(akRef)
		float rank1 = DOMPAH.GetHumiliationFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[2], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[2], 0.0)
EndFunction

float Function GetAngerTraining(string fileName, Actor akRef)
	if DOMPAH.hasAngerTraining(akRef)
		float rank1 = DOMPAH.GetAngerFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[3], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[3], 0.0)
EndFunction

float Function GetResignationTraining(string fileName, Actor akRef)
	if DOMPAH.hasResignationTraining(akRef)
		float rank1 = DOMPAH.GetResignationFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[4], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[4], 0.0)
EndFunction

float Function GetRespectTraining(string fileName, Actor akRef)
	if DOMPAH.hasRespectTraining(akRef)
		float rank1 = DOMPAH.GetRespectFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[5], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[5], 0.0)
EndFunction

float Function GetVaginalTraining(string fileName, Actor akRef)
	;LogTrace("GetVaginalTraining "+DOMPAH.hasVaginalTraining(akRef))
	if DOMPAH.hasVaginalTraining(akRef)
		float rank1 = DOMPAH.GetVaginalFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[18], rank1)
		;LogTrace("GetVaginalTraining rank1="+rank1+" rank2="+rank2)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[18], 0.0)
EndFunction

float Function GetAnalTraining(string fileName, Actor akRef)
	if DOMPAH.hasAnalTraining(akRef)
		float rank1 = DOMPAH.GetAnalFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[20], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[20], 0.0)
EndFunction

float Function GetOralTraining(string fileName, Actor akRef)
	;LogTrace("GetOralTraining "+akRef.GetDisplayName()+" fileName="+fileName)
	if DOMPAH.hasOralTraining(akRef)
		float rank1 = DOMPAH.GetOralFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[21], rank1)
		if rank2 > rank1
			;LogTrace("GetOralTraining "+akRef.GetDisplayName()+" fileName="+fileName+" file>rank oral="+rank2)
			return rank2
		endif
		;LogTrace("GetOralTraining "+akRef.GetDisplayName()+" fileName="+fileName+" rank>file oral="+rank1)
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	float x = JsonUtil.GetFloatValue(fileName, __trainingNames[21], 0.0)
	;LogTrace("GetOralTraining "+akRef.GetDisplayName()+" fileName="+fileName+" file oral="+x)
	return x
EndFunction

float Function GetPoseTraining(string fileName, Actor akRef)
	if DOMPAH.hasRespectTraining(akRef)
		float rank1 = DOMPAH.GetPoseFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[22], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[22], 0.0)
EndFunction

float Function GetHouseTraining(string fileName, Actor akRef)
	if DOMPAH.hasHouseTraining(akRef)
		float rank1 = DOMPAH.GetHouseFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[23], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[23], 0.0)
EndFunction

float Function GetWorkTraining(string fileName, Actor akRef)
	if DOMPAH.hasWorkTraining(akRef)
		float rank1 = DOMPAH.GetWorkFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[24], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[24], 0.0)
EndFunction

float Function GetCombatTraining(string fileName, Actor akRef)
	if DOMPAH.hasCombatTraining(akRef)
		float rank1 = DOMPAH.GetCombatFromFaction(akRef)
		float rank2 = JsonUtil.GetFloatValue(fileName, __trainingNames[25], rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, __trainingNames[25], 0.0)
EndFunction

float Function GetTrainingDate(string fileName, Actor akRef, string keyName, Faction the_days, Faction the_months, Faction the_years)
	;LogTrace("GetTrainingFloat "+fileName+" "+akRef.GetDisplaYName()+" "+keyName+" "+the_faction.GetName())
	if the_days != None && akRef.IsInFaction(the_days)
		float ndays = akRef.GetFactionRank(the_days)
		if akRef.IsInFaction(the_months)
			ndays += akRef.GetFactionRank(the_months)*30.0
		endif
		if akRef.IsInFaction(the_years)
			ndays += akRef.GetFactionRank(the_years)*30.0*12.0
		endif
		float rank2 = JsonUtil.GetFloatValue(fileName, keyName, ndays)
		if rank2 > ndays
			return rank2
		endif
		return ndays
	endif
	;LogTrace("GetTrainingFloat "+fileName+" "+akRef.GetDisplaYName()+" "+keyName+" ="+JsonUtil.GetFloatValue(fileName, keyName, 0.0))
	return JsonUtil.GetFloatValue(fileName, keyName, 0.0)
EndFunction

float Function GetTrainingFloat(string fileName, Actor akRef, string keyName, Faction the_faction)
	;LogTrace("GetTrainingFloat "+fileName+" "+akRef.GetDisplaYName()+" "+keyName+" "+the_faction.GetName())
	if the_faction != None && akRef.IsInFaction(the_faction)
		float rank1 = akRef.GetFactionRank(the_faction)
		float rank2 = JsonUtil.GetFloatValue(fileName, keyName, rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0.0
	endif
	return JsonUtil.GetFloatValue(fileName, keyName, 0.0)
EndFunction

int Function GetTrainingInt(string fileName, Actor akRef, string keyName, Faction the_faction)
	if the_faction != None && akRef.IsInFaction(the_faction)
		int rank1 = akRef.GetFactionRank(the_faction)
		int rank2 = JsonUtil.GetIntValue(fileName, keyName, rank1)
		if rank2 > rank1
			return rank2
		endif
		return rank1
	endif
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		return 0
	endif
	return JsonUtil.GetIntValue(fileName, keyName, 0)
EndFunction

int Function GetNumberOfTrainingStats()
	return __trainingnames.Length
EndFunction

Function GetTrainingStatsRead(Actor akTarget)	
	if !ReadJSONTrainingToggle && !ReadJSONRelationshipToggle
		return
	endif
	bool is_unique = akTarget.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		return
	elseif is_unique && !readJSONForSpawned
		return
	endif
	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akTarget)
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		;LogTrace("GetTrainingStatsRead: json file does not exist: "+fileName)
		return
	endif
	
	string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akTarget.GetDisplayName())
	LogTrace("GetTrainingStatsRead: Found json file for NPC "+nameJSON+" "+fileName)
		
	; Relationship to Player
	if ReadJSONRelationshipToggle
		akTarget.SetRelationShipRank(PlayerRef,JsonUtil.GetIntValue(fileName, "playerrelationship", akTarget.GetRelationshipRank(PlayerRef)))
	endif
	
	if !ReadJSONTrainingToggle
		return
	endif

	; Training stats
	int n = DOMListTrainingFactions.GetSize()
	int m = __trainingNames.Length - 2
	int i = 0
	while i < n && i < m
		LogTrace("GetTrainingStatsRead Training: "+__trainingNames[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
		GetFactionFromJSONFloatValue(filename, akTarget, __trainingNames[i], DOMListTrainingFactions.GetAt(i) as Faction)
		i += 1
	endwhile

	GetFactionFromJSONDateValue( filename, akTarget, "trauma",        DOMTraumaInDays, DOMTraumaInMonths, DOMTraumaInYears)
	GetFactionFromJSONDateValue( filename, akTarget, "enslaved",      DOMEnslavedInDays, DOMEnslavedInMonths, DOMEnslavedInYears)

	; Counters
	n = DOMListCounterFactions.GetSize()
	m = __counterNames.Length
	i = 0
	while i < n && i < m
		LogTrace("GetTrainingStatsRead Counters: "+__counterNames[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		GetFactionFromJSONIntValue(filename, akTarget, __counterNames[i], DOMListCounterFactions.GetAt(i) as Faction)
		i += 1
	endwhile
		
	int number_of_sex  = aktarget.GetFactionRank(DOMNbSex)
	int number_of_rape = aktarget.GetFactionRank(DOMNbRape)
	if number_of_sex < number_of_rape 
		aktarget.SetFactionRank(DOMNbSex,number_of_rape)
	endif
EndFunction

; Get JSON value
Function GetFactionFromJSONDateValue(string filename, Actor akTarget, string the_key, Faction the_days, Faction the_months, Faction the_years)
	int value = (JsonUtil.GetFloatValue(fileName, the_key, 0.0)) as int
	if value < 1
		akTarget.RemoveFromFaction(the_days)
		akTarget.RemoveFromFaction(the_months)
		akTarget.RemoveFromFaction(the_years)
		return
	endif
	int ndays = value
	if ndays < 31
		akTarget.SetFactionRank(the_days,   ndays)
		akTarget.SetFactionRank(the_months, 0)
		akTarget.SetFactionRank(the_years,  0)
	else
		int nmonths = ndays / 30
		ndays       = ndays - nmonths*30
		if nmonths <= 12
			akTarget.SetFactionRank(the_days,   ndays)
			akTarget.SetFactionRank(the_months, nmonths)
			akTarget.SetFactionRank(the_years,  0)
		else
			int nyears = nmonths / 12
			if nyears > 127
				nyears = 127
			endif
			nmonths    = nmonths - nyears * 12
			if nmonths > 127
				nmonths = 127
			endif
			ndays = ndays - nmonths*30 - nyears*12*30
			if ndays > 127
				ndays = 127
			endif
			akTarget.SetFactionRank(the_days,   ndays)
			akTarget.SetFactionRank(the_months, nmonths)
			akTarget.SetFactionRank(the_years,  nyears)
		endif
	endif
EndFunction

; Set faction rank to value
Function GetFactionFromJSONFloatValue(string filename, Actor akTarget, string the_key, Faction the_faction)
	int value = (JsonUtil.GetFloatValue(fileName, the_key, 0.0)) as int
	if value > 0
		akTarget.SetFactionRank(the_faction, value)
	else
		akTarget.RemoveFromFaction(the_faction)
	endif
EndFunction

; Get value from faction or JSON whichever is highest
Function GetFactionOrJSONDateValue(string filename, Actor akTarget, string the_key, Faction the_days, Faction the_months, Faction the_years)
	float value = GetTrainingDate(fileName,akTarget,the_key,the_days,the_months,the_years)
	int ndays = value as int
	if ndays < 31
		akTarget.SetFactionRank(the_days,   ndays)
		akTarget.SetFactionRank(the_months, 0)
		akTarget.SetFactionRank(the_years,  0)
	else
		int nmonths = ndays / 30
		ndays       = ndays - nmonths*30
		if nmonths <= 12
			akTarget.SetFactionRank(the_days,   ndays)
			akTarget.SetFactionRank(the_months, nmonths)
			akTarget.SetFactionRank(the_years,  0)
		else
			int nyears = nmonths / 12
			if nyears > 127
				nyears = 127
			endif
			nmonths    = nmonths - nyears * 12
			if nmonths > 127
				nmonths = 127
			endif
			ndays = ndays - nmonths*30 - nyears*12*30
			if ndays > 127
				ndays = 127
			endif
			akTarget.SetFactionRank(the_days,   ndays)
			akTarget.SetFactionRank(the_months, nmonths)
			akTarget.SetFactionRank(the_years,  nyears)
		endif
	endif
EndFunction

float Function GetTrainingByIndex(Actor akRef, int index)
	Faction the_faction
	if index >= 0 && index < DOMListTrainingFactions.GetSize()
		the_faction = DOMListTrainingFactions.GetAt(index) as Faction
	endif
	string keyName = GetTrainingNameByIndex(index)
	string fileName = OpenActorJSON(akRef)
	LogTrace(akRef.GetDisplayName()+" GetTrainingByIndex name="+KeyName+" filename="+fileName+" faction="+the_faction)
	return GetFactionOrJSONFloatValue(fileName, akRef, keyName, the_faction)
EndFunction

; Set faction rank, if rank is 0 or lower remove from faction
Function SetFactionOrJSONFloatValue(string filename, Actor akTarget, string the_key, Faction the_faction)
	float value = GetTrainingFloat(fileName,akTarget,the_key,the_faction)
	SetFactionRank(akTarget, the_faction, value as int)
EndFunction

float Function GetFactionOrJSONFloatValue(string filename, Actor akTarget, string the_key, Faction the_faction)
	float value = GetTrainingFloat(fileName,akTarget,the_key,the_faction)
	SetFactionRank(akTarget, the_faction, value as int)
	return value
EndFunction

Function GetFactionFromJSONIntValue(string filename, Actor akTarget, string the_key, Faction the_faction)
	int value = JsonUtil.GetIntValue(fileName, the_key, 0)
	if value > 0
		akTarget.SetFactionRank(the_faction, value)
	else
		akTarget.RemoveFromFaction(the_faction)
	endif
EndFunction

Function GetFactionOrJSONIntValue(string filename, Actor akTarget, string the_key, Faction the_faction)
	int value = GetTrainingInt(fileName,akTarget,the_key,the_faction)
	SetFactionRank(akTarget, the_faction, value)
EndFunction

Function GetTrainingStatsFromFactionsOrRead(Actor akTarget)
	; Fixed values from JSON files for choosen NPC
	if !ReadJSONTrainingToggle && !ReadJSONRelationshipToggle
		;LogTrace("GetTrainingStatsFromFactionsOrRead: json file reading turned off for training stats and player's relationship")
		return
	endif
	string fileName = OpenActorJSON(akTarget)
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		;LogTrace("GetTrainingStatsFromFactionsOrRead: json file does not exist: "+fileName)
		return
	endif
	
	string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akTarget.GetDisplayName())
	;LogTrace("GetTrainingStatsFromFactionsOrRead: Found json file for NPC "+nameJSON+" "+fileName)

	; Recover PAH factions
	DOMPAH.CheckTrainingFactions(akTarget)	

	; Relationship to Player
	if ReadJSONRelationshipToggle
		int rank1 = akTarget.GetRelationshipRank(PlayerRef)
		int rank2 = JsonUtil.GetIntValue(fileName, "playerrelationship", rank1)
		;LogTrace("GetTrainingStatsFromFactionsOrRead PlayerRelationship="+rank1+"/"+rank2)
		if rank2 > rank1
			akTarget.SetRelationShipRank(PlayerRef,rank2)
		endif
	endif
	if !ReadJSONTrainingToggle
		;LogTrace("GetTrainingStatsFromFactionsOrRead: json file reading turned off for training stats")
		return
	endif

	if DiaryOfMineFramework.GeneratorMode() > 0 ; the file's values here, every faction read/write in one native call
		float[] jt = new float[32]
		int nt = __trainingNames.Length
		int k = 0
		while k < nt && k < 32
			jt[k] = JsonUtil.GetFloatValue(fileName, __trainingNames[k], -987654.0)
			k += 1
		endwhile
		float[] jd = new float[2]
		jd[0] = JsonUtil.GetFloatValue(fileName, "trauma", -987654.0)
		jd[1] = JsonUtil.GetFloatValue(fileName, "enslaved", -987654.0)
		int[] jc = new int[64]
		int nc = __counterNames.Length
		k = 0
		while k < nc && k < 64
			jc[k] = JsonUtil.GetIntValue(fileName, __counterNames[k], -987654)
			k += 1
		endwhile
		if DiaryOfMineFramework.GenTrainingFromJson(self, akTarget, jt, jd, jc)
			return
		endif
	endif

	; Training stats
	int n = DOMListTrainingFactions.GetSize()
	int m = __trainingNames.Length - 2
	int i = 6
	while i < n && i < m
		if i < 18 || i > 25
			;LogTrace("GetTrainingStatsFromFactionsOrRead Training: "+__trainingNames[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
			SetFactionOrJSONFloatValue(fileName,akTarget,__trainingNames[i],DOMListTrainingFactions.GetAt(i) as Faction)
		endif
		i += 1
	endwhile

	GetFactionOrJSONDateValue(fileName,akTarget,"trauma", DOMTraumaInDays, DOMTraumaInMonths, DOMTraumaInYears)
	GetFactionOrJSONDateValue(fileName,akTarget,"enslaved", DOMEnslavedInDays, DOMEnslavedInMonths, DOMEnslavedInYears )

	; Training stats with PAH Compatibility
	SetFactionRank(akTarget,DOMTrainSubmission,GetSubmissionTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainFear,GetFearTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainHumiliation,GetHumiliationTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainAnger,GetAngerTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainResignation,GetResignationTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainRespect, GetRespectTraining(fileName,akTarget) as int)
	

	SetFactionRank(akTarget,DOMTrainpose, GetPoseTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainoral, GetOralTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainvaginal, GetVaginalTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainanal, GetAnalTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTraincombat, GetCombatTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainHouse, GetHouseTraining(fileName,akTarget) as int)
	SetFactionRank(akTarget,DOMTrainWorking, GetWorkTraining(fileName,akTarget) as int)
			
	; Counters
	n = DOMListCounterFactions.GetSize()
	m = __counterNames.Length
	i = 0
	while i < n && i < m
		;LogTrace("GetTrainingStatsFromFactionsOrRead Counters: "+__counterNames[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		GetFactionOrJSONIntValue(fileName,akTarget, __counterNames[i], DOMListCounterFactions.GetAt(i) as Faction)
		i += 1
	endwhile
		
	int number_of_sex  = aktarget.GetFactionRank(DOMNbSex)
	int number_of_rape = aktarget.GetFactionRank(DOMNbRape)
	if number_of_sex < number_of_rape 
		aktarget.SetFactionRank(DOMNbSex,number_of_rape)
	endif
EndFunction

Function GetTrainingStatsForcedRead(DOM_Actor akActor)
	if !ReadJSONTrainingToggle && !ReadJSONRelationshipToggle
		return
	endif
	Actor akRef = akActor.akRef

	DOM_Mind akMind = akActor.mind
	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akRef)
	If fileName == "" || !JsonUtil.JsonExists(fileName)
		;LogTrace("GetTrainingStatsForcedRead: json file does not exist: "+fileName)
		return
	endif
	
	string nameJSON   = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
	string titleJSON  = JsonUtil.GetStringValue(fileName, "fulltitle", "")
	string genderJSON = JsonUtil.GetStringValue(fileName, "fullgender", "")
	LogTrace("GetTrainingStatsForcedRead: Found json file for NPC "+titleJSON+" "+nameJSON+" "+fileName)
		
	; Relationship to Player
	if ReadJSONRelationshipToggle
		akRef.SetRelationShipRank(PlayerRef,JsonUtil.GetIntValue(fileName, "playerrelationship", akRef.GetRelationshipRank(PlayerRef)))
	endif
	if !ReadJSONTrainingToggle
		return
	endif
	
	akActor.SetDisplayName(nameJSON)
	akMind.SetDisplayName(nameJSON)
	akActor.SetTitle(titleJSON)
	akMind.SetTitle(titleJSON)
	akActor.SetGenderByString(genderJSON)
	akMind.SetGenderByString(genderJSON)

	; Training stats
	int n = DOMListTrainingFactions.GetSize()
	int m = __trainingNames.Length - 2
	int i = 6
	while i < n && i < m
		if i < 18 || i > 25
			LogTrace("GetTrainingStatsForcedRead Training: "+__trainingNames[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
			akMind.TRAINING_Stats[i] = GetTrainingFloat(fileName,akRef,__trainingNames[i], DOMListTrainingFactions.GetAt(i) as Faction)
		endif
		i += 1
	endwhile
	
	akMind.timer_for_broken = GetTrainingDate(fileName,akRef,"trauma", DOMTraumaInDays, DOMTraumaInMonths, DOMTraumaInYears)
	akMind.timer_for_enslaved = GetTrainingDate(fileName,akRef,"enslaved", DOMEnslavedInDays, DOMEnslavedInMonths, DOMEnslavedInYears)

	; Training stats with PAH Compatibility
	akMind.submission       = GetSubmissionTraining(fileName,akRef)
	akMind.fear_training    = GetFearTraining(fileName,akRef)
	akMind.humiliation      = GetHumiliationTraining(fileName,akRef)
	akMind.anger_training   = GetAngerTraining(fileName,akRef)
	akMind.resignation      = GetResignationTraining(fileName,akRef)
	akMind.respect_training = GetRespectTraining(fileName,akRef)

	akMind.vaginal_training = GetVaginalTraining(fileName,akRef)
	akMind.anal_training    = GetAnalTraining(fileName,akRef)
	akMind.oral_training    = GetOralTraining(fileName,akRef)

	akMind.pose_training    = GetPoseTraining(fileName,akRef)
	akMind.house_training   = GetHouseTraining(fileName,akRef)
	akMind.work_training    = GetWorkTraining(fileName,akRef)
	akMind.combat_training  = GetCombatTraining(fileName,akRef)
		
	; Counters
	n = DOMListCounterFactions.GetSize()
	m = __counterNames.Length
	int p = akMind.TRAINING_Counter.Length
	i = 0
	while i < n && i < m && i < p
		LogTrace("GetTrainingStatsForcedRead Counters: "+__counterNames[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		akMind.TRAINING_Counter[i] = GetTrainingInt(fileName,akRef, __counterNames[i], DOMListCounterFactions.GetAt(i) as Faction)
		i += 1
	endwhile
			
	if akMind.number_of_sex < akMind.number_of_rape 
		akMind.number_of_sex = akMind.number_of_rape
	endif
	
	; Clean PAH factions to avoid weird update
	DOMPAH.ClearTrainingFactions(akRef,akMind.is_slave)
EndFunction

Function GetTrainingStatsFromFactions(DOM_Mind akMind)
	Actor akRef = akMind.akRef
	if DiaryOfMineFramework.GeneratorMode() > 0 ; every faction read in one native call, assigned in the original order
		float[] ts = akMind.TRAINING_Stats
		int[] tc = akMind.TRAINING_Counter
		int ps = ts.Length
		float[] v = DiaryOfMineFramework.GenTrainingFromFactions(self, akRef, ps, tc.Length)
		if v.Length >= ps + 15
			int ns = DOMListTrainingFactions.GetSize()
			int ms = __trainingNames.Length - 2
			int k = 6
			while k < ns && k < ms && k < ps
				if k < 18 || k > 25
					ts[k] = v[k]
				endif
				k += 1
			endwhile
			akMind.timer_for_broken   = v[ps]
			akMind.timer_for_enslaved = v[ps + 1]
			akMind.submission       = v[ps + 2]
			akMind.fear_training    = v[ps + 3]
			akMind.humiliation      = v[ps + 4]
			akMind.anger_training   = v[ps + 5]
			akMind.resignation      = v[ps + 6]
			akMind.respect_training = v[ps + 7]
			akMind.pose_training    = v[ps + 8]
			akMind.oral_training    = v[ps + 9]
			akMind.vaginal_training = v[ps + 10]
			akMind.anal_training    = v[ps + 11]
			akMind.combat_training  = v[ps + 12]
			akMind.house_training   = v[ps + 13]
			akMind.work_training    = v[ps + 14]
			int cbase = ps + 15
			k = 0
			while cbase + k < v.Length && k < tc.Length
				int rank = v[cbase + k] as int
				if rank > akMind.TRAINING_Counter[k]
					akMind.TRAINING_Counter[k] = rank
				endif
				k += 1
			endwhile
			if akMind.number_of_sex < akMind.number_of_rape
				akMind.number_of_sex = akMind.number_of_rape
			endif
			return
		endif
	endif
		
	; Training stats
	int n = DOMListTrainingFactions.GetSize()
	int m = __trainingNames.Length - 2 ; -2 because timers are set differently
	int p = akMind.TRAINING_Stats.Length
	int i = 6
	while i < n && i < m && i < p
		if i < 18 || i > 25
			akMind.TRAINING_Stats[i] = GetFactionRankFloat(akRef,DOMListTrainingFactions.GetAt(i) as Faction)
			;LogTrace("GetTrainingStatsFromFactions Training: "+__trainingNames[i]+" value="+akMind.TRAINING_Stats[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
		endif
		i += 1
	endwhile

	akMind.timer_for_broken   = GetFactionRankDate(akRef, DOMTraumaInDays, DOMTraumaInMonths, DOMTraumaInYears)
	akMind.timer_for_enslaved = GetFactionRankDate(akRef, DOMEnslavedInDays, DOMEnslavedInMonths, DOMEnslavedInYears)

	; Training stats with PAH Compatibility
	akMind.submission       = DOMPAH.GetSubmissionFromFaction(akRef)
	akMind.fear_training    = DOMPAH.GetFearFromFaction(akRef)
	akMind.humiliation      = DOMPAH.GetHumiliationFromFaction(akRef)
	akMind.anger_training   = DOMPAH.GetAngerFromFaction(akRef)
	akMind.resignation      = DOMPAH.GetResignationFromFaction(akRef)
	akMind.respect_training = DOMPAH.GetRespectFromFaction(akRef)

	akMind.pose_training    = DOMPAH.GetPoseFromFaction(akRef)
	akMind.oral_training    = DOMPAH.GetOralFromFaction(akRef)
	akMind.vaginal_training = DOMPAH.GetVaginalFromFaction(akRef)
	akMind.anal_training    = DOMPAH.GetAnalFromFaction(akRef)
	akMind.combat_training  = DOMPAH.GetCombatFromFaction(akRef)
	akMind.house_training   = GetFactionRankFloat(akRef,DOMTrainHouse)
	akMind.work_training    = GetFactionRankFloat(akRef, DOMTrainWorking)

	m = __trainingNames.Length
	i = 0
	while i < m && i < p
		;LogTrace("GetTrainingStatsFromFactions Training: "+__trainingNames[i]+" value="+akMind.TRAINING_Stats[i])
		i += 1
	endwhile
	
	; Counters
	n = DOMListCounterFactions.GetSize()
	m = __counterNames.Length
	p = akMind.TRAINING_Counter.Length
	i = 0
	while i < n && i < m && i < p
		int rank = GetFactionRankInt(akRef, DOMListCounterFactions.GetAt(i) as Faction)
		if rank > akMind.TRAINING_Counter[i]
			akMind.TRAINING_Counter[i] = rank
		endif
		;LogTrace("GetTrainingStatsFromFactions Counter "+i+": "+__counterNames[i]+" value="+akMind.TRAINING_Counter[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		i += 1
	endwhile
		
	if akMind.number_of_sex < akMind.number_of_rape 
		akMind.number_of_sex = akMind.number_of_rape
	endif
EndFunction

Function RemoveExtraFactions(Actor akRef, bool do_all=false)
	RemoveFromFaction(akRef,IsGuardFaction)	     ; guards reaction
	RemoveFromFaction(akRef,GuardDialogueFaction) ; guards dialogue
	if do_all
		RemoveFromFaction(akRef,BanditFaction)	
		RemoveFromFaction(akRef,ForswornFaction)	
		RemoveFromFaction(akRef,HagravenFaction)	
		RemoveFromFaction(akRef,NecromancerFaction)	
		RemoveFromFaction(akRef,WarlockFaction)	
		RemoveFromFaction(akRef,VampireFaction)	
	endif
EndFunction

Function SetStatsTrainingFactions(Actor akRef, float[] values)
	int n = DOMListTrainingFactions.GetSize()
	int m = __trainingNames.Length - 2 ; -2 because timers are set differently
	int p = values.Length
	int i = 1
	; Ensure submission is always filled
	int rank0 = values[0] as int
	if rank0 < 0
		rank0 = 0
	elseif rank0 > 127
		rank0 = 127
	endif
	akRef.SetFactionRank(DOMListTrainingFactions.GetAt(0) as Faction, rank0)
	while i < n && i < m && i < p
		;LogTrace("SetStatsTrainingFactions Training "+i+": "+__trainingNames[i]+" value="+values[i]+" faction "+DOMListTrainingFactions.GetAt(i).GetName())
		if values[i] > 0
			SetFactionRank(akRef,DOMListTrainingFactions.GetAt(i) as Faction, values[i] as int)
		endif
		i += 1
	endwhile

	; timers are set differently
	;LogTrace("SetStatsTrainingFactions Training "+i+": "+__trainingNames[i]+" value="+values[i])
	DOM01.SetFactionsTraumaInDays(akRef,values[i])
	i += 1
	;LogTrace("SetStatsTrainingFactions Training "+i+": "+__trainingNames[i]+" value="+values[i])
	DOM01.SetFactionsEnslavedInDays(akRef,values[i])
EndFunction

float[] Function GetNPCTrainingStats(Actor akTarget)
	DOM_Actor akActor = DOM01.GetActor(akTarget)
	if akActor != None
		DOM_Mind akMind = akActor.mind
		if akMind != None
			return akMind.TRAINING_Stats
		endif
	endif
	if !akTarget.IsInFaction(DOMTrainSubmission)
		GetTrainingStatsFromFactionsOrRead(akTarget)
	endif
	return GetStatsTrainingFactions(akTarget)
EndFunction

float[] Function GetStatsTrainingFactions(Actor akTarget)
	;LogTrace("GetStatsTrainingFactions: "+akTarget.getDisplayName()+" "+akTarget)
	float[] StatsArray = new float[28]
	int n = DOMListTrainingFactions.GetSize()
	int m = StatsArray.Length
	int i = 0
	while i < n && i < m
		int rank = akTarget.GetFactionRank(DOMListTrainingFactions.GetAt(i) as Faction)
		if rank < 0
			rank = 0
		endif
		StatsArray[i] = rank
		i += 1
	endwhile

	return StatsArray
EndFunction

int[] Function GetNPCTrainingCounters(Actor akTarget)
	DOM_Actor akActor = DOM01.GetActor(akTarget)
	if akActor != None
		DOM_Mind akMind = akActor.mind
		if akMind != None
			return akMind.TRAINING_Counter
		endif
	endif
	if !akTarget.IsInFaction(DOMTrainSubmission)
		GetTrainingStatsFromFactionsOrRead(akTarget)
	endif
	return GetCounterTrainingFactions(akTarget)
EndFunction

int[] Function GetCounterTrainingFactions(Actor akTarget)
	;LogTrace("GetCounterTrainingFactions: "+akTarget.getDisplayName()+" "+akTarget)
	int[] CountersArray = new int[34]
	int n = DOMListCounterFactions.GetSize()
	int m = CountersArray.Length
	int i = 0
	while i < n && i < m
		int rank = akTarget.GetFactionRank(DOMListCounterFactions.GetAt(i) as Faction)
		if rank < 0
			rank = 0
		endif
		CountersArray[i] = rank
		i += 1
	endwhile

	return CountersArray
EndFunction

Function SetCounterTrainingFactions(Actor akRef, int[] values)
	int n = DOMListCounterFactions.GetSize()
	int m = __counterNames.Length
	int p = values.Length
	int i = 0
	while i < n && i < m && i < p
		;LogTrace("SetCounterTrainingFactions Counter "+i+": "+__counterNames[i]+" value="+values[i]+" faction "+DOMListCounterFactions.GetAt(i).GetName())
		if values[i] > 0
			SetFactionRank(akRef,DOMListCounterFactions.GetAt(i) as Faction, values[i])
		endif
		i += 1
	endwhile
EndFunction

Function SetVirginStatusFactions(Actor akRef, int[] values)
	if DiaryOfMineFramework.GeneratorMode() > 0
		if DiaryOfMineFramework.GenSetVirginFactions(self, akRef, values)
			return
		endif
	endif
	int n = DOMListVirginFactions.GetSize()
	int p = values.Length
	int i = 0
	while i < n && i < p
		if values[i] >= 0
			SetFactionRank(akRef,DOMListVirginFactions.GetAt(i) as Faction, values[i])
		endif
		i += 1
	endwhile
EndFunction

int Function GetHiddenKinksNumber(Actor akRef, int actorSex, int kmax)
	if !ReadJSONKinksToggle
		return 0
	endif
	bool is_unique = akRef.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		return 0
	elseif !is_unique && !readJSONForSpawned
		return 0
	endif

	int idx = 0
	int nkinks = 0
	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		while idx < kmax
			string kink_str = "hiddenkink"+idx
			string kink_name = ""
			int kink = JsonUtil.GetIntValue(fileName, kink_str, -1)
			if kink > 0
				kink_name = DOM01.GetJSONKinkReasonNameByIndex(kink,actorSex)
			else
				kink_name = JsonUtil.GetStringValue(fileName, kink_str, "")
				kink = DOM01.GetJSONKinkReasonIndexByName(kink_name)
			endif
			if kink > 0 ; || kink_name != ""
				nkinks = idx+1
				;LogTrace("GetHiddenKinksNumber check: "+nameJSON+" Found "+kink_str+" idx="+kink+" "+kink_name)
			endif
			idx += 1
		endwhile
		;LogTrace("GetHiddenKinksNumber check: "+nameJSON+" Found json file with "+nkinks+"/"+kmax+" kinks for NPC "+nameJSON+" "+fileName)
	;Else
	;	LogTrace("GetHiddenKinksNumber check: json file does not exist: "+fileName)
	endif
	return nkinks
EndFunction

int Function GetKnownKinksNumber(Actor akRef, int actorSex, int kmax)
	if !ReadJSONKinksToggle
		return 0
	endif
	bool is_unique = akRef.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		return 0
	elseif !is_unique && !readJSONForSpawned
		return 0
	endif

	int idx = 0
	int nkinks = 0
	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		while idx < kmax
			string kink_str = "knownkink"+idx
			string kink_name = ""
			int kink = JsonUtil.GetIntValue(fileName, kink_str, -1)
			if kink > 0
				kink_name = DOM01.GetJSONKinkReasonNameByIndex(kink,actorSex)
			else
				kink_name = JsonUtil.GetStringValue(fileName, kink_str, "")
				kink = DOM01.GetJSONKinkReasonIndexByName(kink_name)
			endif
			if kink > 0 ; || kink_name != ""
				nkinks = idx+1
				;LogTrace("GetKnownKinksNumber check: "+nameJSON+" Found "+kink_str+" idx="+kink+" "+kink_name)
			endif
			idx += 1
		endwhile
		;LogTrace("GetKnownKinksNumber check: "+nameJSON+" Found json file with "+nkinks+"/"+kmax+" kinks for NPC "+nameJSON+" "+fileName)
	;Else
	;	LogTrace("GetKnownKinksNumber check: json file does not exist: "+fileName)
	endif
	return nkinks
EndFunction

int Function GetHiddenKink(Actor akRef, int actorSex, int idx)
	if !ReadJSONKinksToggle
		return 0
	endif
	if idx < 0
		return 0
	endif
	
	; See kink numbers and names in DOM_Util
	string kink_str = "hiddenkink"+idx
	int kink = 0
	int kink_check
	string kink_name

	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		;LogTrace("GetHiddenKink: Found json file for NPC "+nameJSON+" "+fileName)
		kink = JsonUtil.GetIntValue(fileName, kink_str, -1)
		if kink > 0
			kink_name = DOM01.GetJSONKinkReasonNameByIndex(kink,actorSex)
			kink_check = DOM01.GetJSONKinkReasonIndexByName(kink_name)
			if kink_check != kink
				kink = 0
			endif
		endif
		if kink <= 0
			kink_name = JsonUtil.GetStringValue(fileName, kink_str, "no kink")
			kink = DOM01.GetJSONKinkReasonIndexByName(kink_name)
		endif
		if kink > 0 && kink < 127
			LogTrace("GetHiddenKink Found json file for NPC "+nameJSON+" "+kink_str+" idx="+kink+" name="+kink_name)
			return kink
		endif
	;else
	;	LogTrace("GetHiddenKink: json file does not exist: "+fileName)
	endif
	return 0
EndFunction

int Function GetKnownKink(Actor akRef, int actorSex, int idx)
	if !ReadJSONKinksToggle
		return 0
	endif
	if idx < 0 ; || idx >= 6
		return 0
	endif
	
	; See kink numbers and names in DOM_Util
	string kink_str = "knownkink"+idx
	int kink = 0
	int kink_check
	string kink_name

	; Fixed values from JSON files for choosen NPC
	string fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		;LogTrace("GetHiddenKink: Found json file for NPC "+nameJSON+" "+fileName)
		kink = JsonUtil.GetIntValue(fileName, kink_str, -1)
		if kink > 0
			kink_name = DOM01.GetJSONKinkReasonNameByIndex(kink,actorSex)
			kink_check = DOM01.GetJSONKinkReasonIndexByName(kink_name)
			if kink_check != kink
				kink = 0
			endif
		endif
		if kink <= 0
			kink_name = JsonUtil.GetStringValue(fileName, kink_str, "no kink")
			kink = DOM01.GetJSONKinkReasonIndexByName(kink_name)
		endif
		if kink > 0 && kink < 127
			LogTrace("GetKnownKink Found json file for NPC "+nameJSON+" "+kink_str+" idx="+kink+" name="+kink_name)
			return kink
		endif
	;else
	;	LogTrace("GetKnownKink: json file does not exist: "+fileName)
	endif
	return 0
EndFunction

bool Function IsYoungAdult(string racestring)
	if StringUtil.Find(raceString, "Teen")>=0 || StringUtil.Find(raceString, "Teeen")>=0 || StringUtil.Find(raceString, "YoungAdult")>=0
		return true
	endif
	return false
EndFunction

bool Function IsChild(string racestring)
	if StringUtil.Find(raceString, "Child")>=0
		LogInfo("WARNING! IsChild actor is a child")
		return true
	endif
	if StringUtil.Find(raceString, "Kid")>=0
		LogInfo("WARNING! IsChild actor is a kid")
		return true
	endif
	return false
EndFunction

bool Function IsElder(string racestring)
	if StringUtil.Find(raceString, "Old")>=0 || StringUtil.Find(raceString, "Elder")>=0
		return true
	endif
	return false
EndFunction

; DOM_Mind virgin status 
; 0 = Virgin
; 1 = Soon not a virgin anymore
; 2 = Player took virginity
; 3 = Someone else took virginity
; 4 = Not a virgin since a long time ago
; JSON file virgin status
; 1 = Virgin
; 0 = Not a virgin since a long time ago

int[] Function GetVirginStatusReadOrGenerated(Actor akRef)
	int mode = DiaryOfMineFramework.GeneratorMode()
	if mode > 0 ; Diary of Mine Framework: the file's values here, defaults and seed in one native call
		string jsonFile = ""
		if ReadJSONVirginityToggle
			jsonFile = OpenActorJSON(akRef)
		endif
		int[] st = new int[5]
		int[] nm = new int[5]
		int count = 5
		bool hasFile = jsonFile != "" && JsonUtil.JsonExists(jsonFile)
		if hasFile
			count = DOMListVirginFactions.GetSize()
			if count > __virginNames.Length
				count = __virginNames.Length
			endif
		endif
		int k = 0
		while k < 5
			if k >= count
				st[k] = -99 ; outside the original loop: stays 0
				nm[k] = -99
			elseif hasFile
				st[k] = JsonUtil.GetIntValue(jsonFile, __virginStatus[k], -1)
				nm[k] = JsonUtil.GetIntValue(jsonFile, __virginNames[k], -1)
			else
				st[k] = -1
				nm[k] = -1
			endif
			k += 1
		endwhile
		int seedBefore = seed
		int[] fast = DiaryOfMineFramework.GenVirginReadOrGenerated(self, akRef, st, nm)
		if fast.Length == 5
			if mode > 1
				int seedNative = seed
				seed = seedBefore
				int[] check = GetVirginStatusReadOrGeneratedPapyrus(akRef)
				DiaryOfMineFramework.VerifyInts("GetVirginStatusReadOrGenerated", akRef, fast, check, seedNative, seed)
			endif
			if hasFile && DOM01.verboseMode
				LogTrace("GetVirginStatusReadOrGenerated "+akRef.GetDisplayName()+" from "+jsonFile+": "+fast[0]+" "+fast[1]+" "+fast[2]+" "+fast[3]+" "+fast[4])
			endif
			return fast
		endif
	endif
	return GetVirginStatusReadOrGeneratedPapyrus(akRef)
EndFunction

int[] Function GetVirginStatusReadOrGeneratedPapyrus(Actor akRef)
	; 0  = a virgin
	; 1  = lost virginity during current sexlab event
	; 2  = not a virgin anymore by player
	; 3  = not a virgin anymore by trainer
	; 4  = not a virgin historically
	int[] vstatus = new int[5]
	
	; Fixed values from JSON files for choosen NPC
	string fileName
	if !ReadJSONVirginityToggle
		fileName = ""
	else
		fileName = OpenActorJSON(akRef)
	endif
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		
		int n = DOMListVirginFactions.GetSize()
		int m = __virginNames.Length
		int p = vstatus.Length
		int i = 0
		while i < n && i < m && i < p
			int v = JsonUtil.GetIntValue(fileName, __virginStatus[i], -1)
			if v >= 0
				vstatus[i] = v
			else
				v = JsonUtil.GetIntValue(fileName, __virginNames[i], -1)
				if v == 1
					vstatus[i] = 0 ; 0=is a virgin
				elseif v == 0
					vstatus[i] = 4 ; 4=historically not a virgin
				elseif i == 0
					vstatus[i] = GetVaginalVirginDefaultStatus(akRef)
				elseif i == 1
					vstatus[i] = GetGangVirginDefaultStatus(akRef)
				elseif i == 2
					vstatus[i] = GetAnalVirginDefaultStatus(akRef)
				elseif i == 3
					vstatus[i] = GetOralVirginDefaultStatus(akRef)
				elseif i == 4
					vstatus[i] = GetSameVirginDefaultStatus(akRef)
				endif
			endif
			LogTrace("GetVirginStatusReadOrGenerated Virginity: "+__virginNames[i]+" value "+v+" faction "+DOMListVirginFactions.GetAt(i).GetName())
			i += 1
		endwhile
	else
		;LogTrace("Virgin status: json file does not exist: "+akRef.GetDisplayName()+" fileName="+fileName)
		vstatus[0] = GetVaginalVirginDefaultStatus(akRef)
		vstatus[1] = GetGangVirginDefaultStatus(akRef)
		vstatus[2] = GetAnalVirginDefaultStatus(akRef)
		vstatus[3] = GetOralVirginDefaultStatus(akRef)
		vstatus[4] = GetSameVirginDefaultStatus(akRef)
	endif
	return vstatus
EndFunction

int[] Function GetVirginStatusGenerated(Actor akRef)
	int mode = DiaryOfMineFramework.GeneratorMode()
	if mode > 0
		int seedBefore = seed
		int[] fast = DiaryOfMineFramework.GenVirginGenerated(self, akRef)
		if fast.Length == 5
			if mode > 1
				int seedNative = seed
				seed = seedBefore
				int[] check = GetVirginStatusGeneratedPapyrus(akRef)
				DiaryOfMineFramework.VerifyInts("GetVirginStatusGenerated", akRef, fast, check, seedNative, seed)
			endif
			return fast
		endif
	endif
	return GetVirginStatusGeneratedPapyrus(akRef)
EndFunction

int[] Function GetVirginStatusGeneratedPapyrus(Actor akRef)
	; 0  = a virgin
	; 1  = lost virginity during current sexlab event
	; 2  = not a virgin anymore by player
	; 3  = not a virgin anymore by trainer or NPC
	; 4  = not a virgin historically
	int[] vstatus = new int[5]
	vstatus[0] = GetVaginalVirginDefaultStatus(akRef)
	vstatus[1] = GetOralVirginDefaultStatus(akRef)
	vstatus[2] = GetAnalVirginDefaultStatus(akRef)
	vstatus[3] = GetSameVirginDefaultStatus(akRef)
	vstatus[4] = GetGangVirginDefaultStatus(akRef)

	;LogTrace("Virgin status: force generated: "+akRef.GetDisplayName())
	return vstatus
EndFunction

int Function GetVaginalVirginDefaultStatus(Actor akRef)
	if akRef.IsInFaction(DOMVirginVaginal)
		return akRef.GetFactionRank(DOMVirginVaginal)
	endif
	
	if !DOM01.virginVToggle
		return 4
	endif
	
	bool HasSpouse = DOM01.HasSpouse(akRef)
	bool HasLover = DOM01.HasLover(akRef)

	if HasSpouse || HasLover
		return 4		
	elseif akRef.GetFactionRank(DOMTrainVaginal) >= 1
		return 3		
	endif

	float chance = 0.6 ; Chance to not be a virgin
	; Races, some should not be in here anyhow
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	if IsElder(raceString)
		chance += 0.3
	elseif IsYoungAdult(raceString) || IsChild(raceString)
		return 0
	endif

	; get previous employers and jobs
	int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
	int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 

	if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
		jobs = GetJobOfOriginIndex(akRef)
		emps = GetEmployerOfOriginIndex(akRef)
	endif

	; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
	if emps > 0 ; Works at court
		chance += 0.1
	endif
	if jobs < 4 ; Nobility
		chance += 0.2
	elseif jobs == 4 ; Bandit
		chance += 0.3
	elseif jobs == 9 ; Thief
		chance += 0.2
	elseif jobs == 25 ; Bards
		chance += 0.3
	elseif jobs == 40 || jobs == 41 ; Works at an inn
		chance += 0.3
	endif
	
	if RandomUniform() < chance
		return 4
	endif
	return 0
EndFunction

int Function GetAnalVirginDefaultStatus(Actor akRef)
	if akRef.IsInFaction(DOMVirginAnal)
		return akRef.GetFactionRank(DOMVirginAnal)
	endif

	if !DOM01.virginAToggle
		return 4
	endif

	float chance = 0.2 ; Chance to not be a virgin
	; Races, some should not be in here anyhow
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	if IsElder(raceString)
		chance += 0.3
	elseif IsYoungAdult(raceString) || IsChild(raceString)
		return 0
	endif

	if DOM01.HasSpouse(akRef)
		chance += 0.2
	elseif DOM01.HasLover(akRef)
		chance += 0.1
	endif

	; get previous employers and jobs
	int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
	int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 

	if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
		jobs = GetJobOfOriginIndex(akRef)
		emps = GetEmployerOfOriginIndex(akRef)
	endif

	; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
	if emps > 0 ; Works at court
		chance += 0.2
	endif
	if jobs < 4 ; Nobility
		chance += 0.2
	elseif jobs == 4 ; Bandit
		chance += 0.2
	elseif jobs == 9 ; Thief
		chance += 0.2
	elseif jobs == 25 ; Bards
		chance += 0.3
	elseif jobs == 30 || jobs == 31 ; Merchant
		chance += 0.1
	elseif jobs == 40 || jobs == 41 ; Works at an inn
		chance += 0.3
	endif
	
	if RandomUniform() < chance
		return 4
	endif
	return 0
EndFunction

int Function GetOralVirginDefaultStatus(Actor akRef)
	if akRef.IsInFaction(DOMVirginOral)
		return akRef.GetFactionRank(DOMVirginOral)
	endif

	if !DOM01.virginOToggle
		return 4
	endif

	float chance = 0.4 ; Chance to not be a virgin
	; Races, some should not be in here anyhow
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	if IsElder(raceString)
		chance += 0.3
	elseif IsYoungAdult(raceString) || IsChild(raceString)
		return 0
	endif

	; get previous employers and jobs
	int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
	int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 

	if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
		jobs = GetJobOfOriginIndex(akRef)
		emps = GetEmployerOfOriginIndex(akRef)
	endif

	; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
	if emps > 0 ; Works at court
		chance += 0.3
	endif
	if jobs < 4 ; Nobility
		chance += 0.2
	elseif jobs == 4 ; Bandit
		chance += 0.1
	elseif jobs == 9 ; Thief
		chance += 0.1
	elseif jobs == 25 ; Bards
		chance += 0.3
	elseif jobs == 30 || jobs == 31 ; Merchant
		chance += 0.1
	elseif jobs == 40 || jobs == 41 ; Works at an inn
		chance += 0.3
	endif
	
	if RandomUniform() < chance
		return 4
	endif
	return 0
EndFunction

int Function GetSameVirginDefaultStatus(Actor akRef)
	if akRef.IsInFaction(DOMVirginSame)
		return akRef.GetFactionRank(DOMVirginSame)
	endif

	if !DOM01.virginSToggle
		return 4
	endif

	;return 0
	float chance = 0.05 ; Chance to not be a virgin
	; Races, some should not be in here anyhow
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	if IsYoungAdult(raceString) || IsChild(raceString)
		return 0
	endif

	; get previous employers and jobs
	int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
	int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 

	if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
		jobs = GetJobOfOriginIndex(akRef)
		emps = GetEmployerOfOriginIndex(akRef)
	endif

	; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
	if emps > 0 ; Works at court
		chance += 0.02
	endif
	if jobs < 4 ; Nobility
		chance += 0.02
	elseif jobs == 4 ; Bandit
		chance += 0.01
	elseif jobs >= 6 && jobs <= 15 ; Trained fighter: Legion, Stormcloaks, Blades, Companions, Vigilant, Guards, thieves, DB
		chance += 0.01
	elseif jobs == 25 ; Bards
		chance += 0.01
	elseif jobs == 40 || jobs == 41 ; Works at an inn
		chance += 0.02
	endif

	if RandomUniform() < chance
		return 4
	endif
	return 0
EndFunction

int Function GetGangVirginDefaultStatus(Actor akRef)
	if akRef.IsInFaction(DOMVirginGangbang)
		return akRef.GetFactionRank(DOMVirginGangbang)
	endif

	if !DOM01.virginGToggle
		return 4
	endif

	float chance = 0.05 ; Chance to not be a virgin
	; Races, some should not be in here anyhow
	actorBase abTarget = akRef.GetLeveledActorBase()
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	if IsElder(raceString)
		chance += 0.3
	elseif IsYoungAdult(raceString) || IsChild(raceString)
		return 0
	endif

	; get previous employers and jobs
	int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
	int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 

	if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
		jobs = GetJobOfOriginIndex(akRef)
		emps = GetEmployerOfOriginIndex(akRef)
	endif

	; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
	if emps > 0 ; Works at court
		chance += 0.02
	endif
	if jobs < 4 ; Nobility
		chance += 0.02
	elseif jobs == 4 ; Bandit
		chance += 0.01
	elseif jobs >= 6 && jobs <= 15 ; Trained fighter: Legion, Stormcloaks, Blades, Companions, Vigilant, Guards
		chance += 0.01
	elseif jobs == 25 ; Bards
		chance += 0.01
	elseif jobs == 40 || jobs == 41 ; Works at an inn
		chance += 0.02
	endif
		
	if RandomUniform() < chance
		return 4
	endif
	return 0
EndFunction

int[] Function GetVirginStatus(Actor akRef)
	int[] vstatus
	bool is_unique = akRef.GetLeveledActorBase().IsUnique()
	if is_unique && !readJSONForUniques
		vstatus = GetVirginStatusGenerated(akRef)
	elseif !is_unique && !readJSONForSpawned
		vstatus = GetVirginStatusGenerated(akRef)
	elseif !ReadJSONVirginityToggle
		vstatus = GetVirginStatusGenerated(akRef)
	else
		vstatus = GetVirginStatusReadOrGenerated(akRef)
	endif

	if DiaryOfMineFramework.GeneratorMode() > 0
		int[] fast = DiaryOfMineFramework.GenVirginFromFactions(self, akRef, vstatus)
		if fast.Length == vstatus.Length && fast.Length > 0
			return fast
		endif
	endif
	int n = DOMListVirginFactions.GetSize()
	int p = vstatus.Length
	int i = 0
	while i < n && i < p
		Faction the_faction = DOMListVirginFactions.GetAt(i) as Faction
		if akRef.IsInFaction(the_faction)
			vstatus[i] = akRef.GetFactionRank(the_faction)
		endif
		i += 1
	endwhile
	return vstatus
EndFunction

Function SetVirginStatus(Actor akRef, int[] vstatus)
	SetVirginStatusFactions(akRef, vstatus)
EndFunction

float[] Function GetNPCFeelings(Actor akTarget)
	actorBase abTarget = akTarget.GetLeveledActorBase()
	string nameString = akTarget.GetName()
	if nameString == ""
		nameString = abTarget.GetName()
	endif
	; unless actor is or was a slave
	float[] FeelsArray = new float[6]                                                           
	float[] TraitsArray = GetNPCTraits(akTarget) ; No need for modifiers a they will be computed individually
	
	; Get feelings from faction ranks for slaves or once a slave
	;;LogTrace(nameString+" faction rank "+akTarget.GetFactionRank(DOMTrainSubmission))
	int n = FeelsArray.Length
	int i = 0
	while i < n
		FeelsArray[i] = GetFlatModifier(i,TraitsArray)
		i += 1
	endwhile

	return FeelsArray
EndFunction

float Function GetFlatModifier(int index, float[] HEXACO_Traits)
	int imod = index*7
	float mod
	if index == 2 || index == 5  ; inverse for naivety and discipline
		mod = GetInverseFacetByIndex(imod, HEXACO_Traits)
	else
		mod = GetFacetByIndex(imod, HEXACO_Traits)
	endif
	; Correct extra high values from modifier
	mod = ModifierToFacet(mod)
	return mod
EndFunction

float[] Function GetModifiers(Actor akRef, Float[] TraitsArray)
	DOM_Actor akActor = DOM01.GetActor(akRef)
	if akActor != None 
		DOM_Mind akMind = akActor.mind
		if akMind != None
			return akMind.HEXACO_Facets
		endif
	endif
	Float [] mods = new Float[45]
	int n = mods.Length
	int i = 0
	while i < n
		mods[i] = GetFacetByIndex(i, TraitsArray)
		i += 1
	endwhile
	return mods
EndFunction

float[] Function GetInverseModifiers(Actor akRef, Float[] TraitsArray)
	DOM_Actor akActor = DOM01.GetActor(akRef)
	if akActor != None 
		DOM_Mind akMind = akActor.mind
		if akMind != None
			return akMind.HEXACO_Facets
		endif
	endif
	Float [] mods = new Float[45]
	int n = mods.Length
	int i = 0
	while i < n
		mods[i] = GetInverseFacetByIndex(i, TraitsArray)
		i += 1
	endwhile
	return mods
EndFunction

; Delta training
float Function DTrainer(Actor akTarget)
	int rank = akTarget.GetFactionRank(DOMSkillEnforcer)
	if rank <= 0
		return 0.5
	endif
	return 0.5+(rank as float)/100.0
EndFunction

Float Function DMaster(Actor akTarget)
	int rank = akTarget.GetFactionRank(DOMSkillDeceiver)
	if rank <= 0
		return 0.5
	endif
	return 0.5+(rank as float)/100.0
EndFunction

Float Function DSubmission(Float submission, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(submission/100)))
	Float modifier = GetFacetValueByName(akTarget,"humility") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DFear(Float fear_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(fear_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"fearfulness") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DHumiliation(Float humiliation, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(humiliation/100)))
	Float modifier = GetFacetValueByName(akTarget,"naivety") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DAnger(Float anger_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(anger_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"forgiveness") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DResignation(Float resignation, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(resignation/100)))
	Float modifier = GetFacetValueByName(akTarget,"prudent") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DRespect(Float respect_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(respect_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"discipline") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DOralSex(Float sex_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(sex_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"oral") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DVaginalSex(Float sex_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(sex_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"vaginal") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DAnalSex(Float sex_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(sex_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"anal") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DCombat(Float combat_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(combat_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"combat") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DPose(Float pose_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(pose_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"flexibility") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

Float Function DHouse(Float house_training, Float base_amount, Actor akTarget)
	Float multiplier = 0.1 + (0.9*(1-(house_training/100)))
	Float modifier = GetFacetValueByName(akTarget,"perfectionism") * base_amount
	Float x = multiplier*modifier
	if x < 1.0
		return 1.0
	endif
	return x
EndFunction

; Interface to Sexlab, AYGAS, HSH

float Function GetReactionChance(float facet, float training, float strength)
	; chance to react to an order and rebel
	; all numbers in %, but facet can go up to 500%
	; usually strength = 1.0 (100%) for slaves
	float reaction = facet * (1.0 - training) * strength
	;LogTrace("GetReactionChance facet="+facet+" 1-training="+(1.0 - training)+" strength="+strength+" chance="+chance)
	return reaction
EndFunction

bool Function WillObey(Actor akTarget, int ifacet, int itraining, float strength=1.0)
	; ifacet = facet index + 1, can be negative if to take the inverse facet
	int rank = akTarget.GetRelationshipRank(PlayerRef)
	if rank >= 4
		return true
	endif
	if rank >= 3
		strength *= 0.5
	elseif rank >= 2
		strength *= 0.8
	endif
	LogTrace(akTarget.GetDisplayname()+" WillObey facet="+ifacet+" training="+itraining+" strength="+strength)
	Float facet = GetFacetValueByIndex(akTarget,-ifacet) ; reaction chance uses inverse facet, because opposite of obeying
	Float training = GetTrainingByIndex(akTarget,itraining)
	Float chance = GetReactionChance(facet,training,strength)
	Float x
	if DOM01.randomReactionToggle
		x = RandomFloat()
	else
		x = DOM01.abuseReactionThreshold
	endif
	LogTrace(akTarget.GetDisplayname()+" WillObey facet value="+facet+" training value="+training+" chance"+chance+" rnd="+x)
	if x > chance ; doesn't react
		LogTrace(akTarget.GetDisplayname()+" WillObey PERSONALITY+TRAINED")
		return false
	endif
	return true
EndFunction

int Function IsWillingToHaveSexWith(Actor akTarget, DOM_Actor akActor)
	if aktarget == None
		Debug.Notification("ERROR: Could not find NPC to join Sexlab scene")
		return 0
	endif
	; Slave and submission checks
	;LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" in PAH faction="+aktarget.IsInFaction(PAHPlayerSlaveFaction)+" "+PAHPlayerSlaveFaction)
	if DOMPAH.isPAHPlayerSlave(akTarget)
		if aktarget.GetFactionRank(DOMTrainSubmission) > 70
			Debug.Notification(akTarget.GetDisplayName()+" obeys like a good slave")
			return 2
		else
			Debug.Notification(akTarget.GetDisplayName()+" doesn't really have a choice")
			return 1
		endif
	endif
	LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" in DOM faction="+aktarget.IsInFaction(DOMPlayerSlaveFaction)+" "+DOMPlayerSlaveFaction)
	if aktarget.IsInFaction(DOMPlayerSlaveFaction)
		if aktarget.GetFactionRank(DOMTrainSubmission) > 70
			Debug.Notification(akTarget.GetDisplayName()+" obeys like a good slave")
			return 2
		else
			Debug.Notification(akTarget.GetDisplayName()+" doesn't really have a choice")
			return 1
		endif
	endif
	LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" love desire="+aktarget.IsInFaction(DOMLoveDesire)+" "+DOMLoveDesire)
	if aktarget.IsInFaction(DOMLoveDesire)
		if aktarget.GetFactionRank(DOMLoveDesire) > 0
			Debug.Notification(akTarget.GetDisplayName()+" obeys submissively")
			return 2
		endif
	endif
	LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" submission="+aktarget.IsInFaction(DOMTrainSubmission)+" "+DOMTrainSubmission)
	if aktarget.IsInFaction(DOMTrainSubmission)
		if aktarget.GetFactionRank(DOMTrainSubmission) > 70
			Debug.Notification(akTarget.GetDisplayName()+" obeys like a good slave")
			return 1
		endif
	endif
	LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" in DOM potential faction="+aktarget.IsInFaction(DOMPotentialSlaverFaction)+" "+DOMPotentialSlaverFaction)
	if aktarget.IsInFaction(DOMPotentialSlaverFaction)
		if akTarget.GetLeveledActorBase().GetSex() == 0
			Debug.Notification(akTarget.GetDisplayName()+" accepts with a malicious grin on his face")
		else
			Debug.Notification(akTarget.GetDisplayName()+" accepts with a malicious grin on her face")
		endif
		return 2
	endif
	LogTrace("IsWillingToHaveSexWith "+akTarget.GetDisplayName()+" in DOM slaver faction="+aktarget.IsInFaction(DOMPlayerSlaverFaction)+" "+DOMPlayerSlaverFaction)
	if aktarget.IsInFaction(DOMPlayerSlaverFaction)
		if akTarget.GetLeveledActorBase().GetSex() == 0
			Debug.Notification(akTarget.GetDisplayName()+" accepts with an evil grin on his face")
		else
			Debug.Notification(akTarget.GetDisplayName()+" accepts with an evil grin on her face")
		endif
		return 2
	endif
	; Relationship checks
	float[] TraitsArray = GetNPCTraits(akTarget)
	if TraitsArray[0] >  RandomFloat()*10.0 ; Honest
		if TraitsArray[5] < RandomFloat()*1000.0 ; Close minded
			if DOM01.IsSpouse(akTarget,akActor.akRef)
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" wants you to free his spouse first")
				else
					Debug.Notification(akTarget.GetDisplayName()+" wants you to free her spouse first")
				endif
				return 0			
			elseif akTarget.HasFamilyRelationship(akActor.akRef)
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" will not do it with his "+GetFriendshipString(akActor.akRef,DOM01.GetFriendshipType(akTarget,akActor.akRef)))
				else
					Debug.Notification(akTarget.GetDisplayName()+" will not do it with her "+GetFriendshipString(akActor.akRef,DOM01.GetFriendshipType(akTarget,akActor.akRef)))
				endif
				return 0
			endif
		endif
	endif
	if TraitsArray[0] <  RandomFloat()*10.0 ; Dishonest
		if TraitsArray[5] > RandomFloat()*100.0 ; Open minded
			if DOM01.IsSpouse(akTarget,akActor.akRef)
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" will gladly do it with his spouse")
				else
					Debug.Notification(akTarget.GetDisplayName()+" will gladly do it with her spouse")
				endif
				return 0			
			elseif akTarget.HasFamilyRelationship(akActor.akRef)
				Debug.Notification(akTarget.GetDisplayName()+" seems very excited to do it with a family member")
				return 0
			endif
		endif
	endif
	if DOM01.IsCourting(akTarget,akActor.akRef)
		if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape his love interest")
			else
				Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape her love interest")
			endif
			return 2
		endif
		if RandomFloat()*100.0 > TraitsArray[8] ; ; Sensual
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with his love interest")
			else
				Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with her love interest")
			endif
			return 1
		endif
	endif
	if !DOM01.IsSpouse(akTarget,akActor.akRef)
		if akTarget.HasFamilyRelationship(akActor.akRef)
			Debug.Notification(akTarget.GetDisplayName()+" seems hesitant to do it with a family member")
			return 0
		endif
	else
		if RandomFloat()*50.0 < TraitsArray[0] ; Honesty
			if RandomFloat()*50.0 < TraitsArray[6] ; Wilful
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" won't do it with his spouse in public")
				else
					Debug.Notification(akTarget.GetDisplayName()+" won't do it with her spouse in public")
				endif
				return 0
			endif
		endif
		if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape his spouse in public")
			else
				Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape her spouse in public")
			endif
			return 2
		endif
		if RandomFloat()*100.0 > TraitsArray[8] ; ; Sensual
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with his spouse in public")
			else
				Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with her spouse in public")
			endif
			return 1
		endif
		if akTarget.GetLeveledActorBase().GetSex() == 0
			Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with his spouse in public")
		else
			Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with her spouse in public")
		endif
		return 1
	endif
	if akTarget.HasFamilyRelationship(akActor.akRef) 
		if akTarget.GetRelationshipRank(akActor.akRef) > 3
			if RandomFloat()*66.0 < TraitsArray[0] ; Honesty
				if RandomFloat()*66.0 < TraitsArray[6] ; Wilful
					if akTarget.GetLeveledActorBase().GetSex() == 0
						Debug.Notification(akTarget.GetDisplayName()+" won't do it with the love of his life in public")
					else
						Debug.Notification(akTarget.GetDisplayName()+" won't do it with the love of her life in public")
					endif
					return 0
				endif
			endif
			if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape the love of his life in public")
				else
					Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape the love of her life in public")
				endif
				return 2
			endif
			if RandomFloat()*100.0 > TraitsArray[8] ; ; Sensual
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with the love of his life in public")
				else
					Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with the love of her life in public")
				endif
				return 1
			endif
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with the love of his life in public")
			else
				Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with the love of her life in public")
			endif
			return 1
		elseif akTarget.GetRelationshipRank(akActor.akRef) > 1
			if RandomFloat()*200.0 < TraitsArray[0] ; Honesty
				if RandomFloat()*200.0 < TraitsArray[6] ; Wilful
					if akTarget.GetLeveledActorBase().GetSex() == 0
						Debug.Notification(akTarget.GetDisplayName()+" won't do it with his friend in public")
					else
						Debug.Notification(akTarget.GetDisplayName()+" won't do it with her friend in public")
					endif
					return 0
				endif
			endif
			if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape his friend in public")
				else
					Debug.Notification(akTarget.GetDisplayName()+" appears excited to rape her friend in public")
				endif
				return 2
			endif
			if RandomFloat()*100.0 > TraitsArray[8] ; ; Sensual
				if akTarget.GetLeveledActorBase().GetSex() == 0
					Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with his friend in public")
				else
					Debug.Notification(akTarget.GetDisplayName()+" is excited to have sex with her friend in public")
				endif
				return 1
			endif
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with his friend in public")
			else
				Debug.Notification(akTarget.GetDisplayName()+" reluctantly accepts to have sex with her friend in public")
			endif
			return 1
		endif
	endif
	; Personality checks
	if RandomFloat()*100.0 < TraitsArray[0] ; Honesty
		if RandomFloat()*100.0 < TraitsArray[6] ; Wilful
			Debug.Notification(akTarget.GetDisplayName()+" is really too honest for that kind of stuff")
			return 0
		endif
		if RandomFloat()*100.0 < TraitsArray[5] ; Open-minded
			if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
				Debug.Notification(akTarget.GetDisplayName()+" will make an exception this time")
				return 2
			endif
			if RandomFloat()*100.0 < TraitsArray[8] ; Sensual
				Debug.Notification(akTarget.GetDisplayName()+" is too excited to refuse")
				return 1
			endif
		endif
		Debug.Notification(akTarget.GetDisplayName()+" is too honest for that kind of stuff")
		return 0
	endif
	if RandomFloat()*100.0 < TraitsArray[5] ; Open-minded
		if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
			if akTarget.GetLeveledActorBase().GetSex() == 0
				Debug.Notification(akTarget.GetDisplayName()+" accepts with a pervert grin on his face")
			else
				Debug.Notification(akTarget.GetDisplayName()+" accepts with a pervert grin on her face")
			endif
			return 2
		endif
		if RandomFloat()*100.0 < TraitsArray[8] ; Sensual
			Debug.Notification(akTarget.GetDisplayName()+" accepts without hesitation")
			return 1
		endif
		if RandomFloat()*100.0 < TraitsArray[6] ; Wilful
			int rank = akTarget.getRelationshipRank(PlayerRef)
			if rank < 2
				Debug.Notification(akTarget.GetDisplayName()+" is clearly tempted but prefers to abstain")
				return 0
			elseif rank < 3
				Debug.Notification(akTarget.GetDisplayName()+" hesitates but finally accepts")
				return 1
			else
				Debug.Notification(akTarget.GetDisplayName()+" accepts because it's you")
				return 2
			endif
		endif
		Debug.Notification(akTarget.GetDisplayName()+" is easily convinced")
		return 1
	endif	
	if RandomFloat()*100.0 > TraitsArray[9] ; Dominant
		if RandomFloat()*100.0 < TraitsArray[2] ; eXtraversion
			Debug.Notification(akTarget.GetDisplayName()+" seems a bit too happy about it")
			return 2
		endif
		Debug.Notification(akTarget.GetDisplayName()+" seems a bit wary but accepts")
		return 1
	endif
	if RandomFloat()*100.0 < TraitsArray[8] ; Sensuality
		if RandomFloat()*100.0 < TraitsArray[6] ; Wilful
			int rank = akTarget.getRelationshipRank(PlayerRef)
			if rank < 3
				Debug.Notification(akTarget.GetDisplayName()+" has better things to do")
				return 0
			else
				Debug.Notification(akTarget.GetDisplayName()+" would do anything for you")
				return 2
			endif
		endif
		Debug.Notification(akTarget.GetDisplayName()+" could not refuse such an offer")
		return 1
	endif
	Debug.Notification(akTarget.GetDisplayName()+" doesn't feel like it")
	return 0
EndFunction

; Get actor price with current training (buyer value)
int Function getActorPrice(Actor akActor)
	float base_health  = akActor.GetBaseAv("health")/100.0    ; Level 1 value is 100 for all races
	float base_stamina = akActor.GetBaseAv("stamina")/100.0   ; Level 1 value is 100 for all races
	float base_magicka = akActor.GetBaseAv("magicka")/100.0   ; Between 0 and 1000 depending on race and level
	Actorbase abTarget = akActor.GetLeveledActorBase()
	bool is_female     = (abTarget.GetSex() == 1)
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	float RaceSexMultiplier    = 1.0
	;LogTrace("getActorPrice:  "+akActor.getDisplayName()+" female="+is_female+" race="+raceString)

	; Race bonuses
	int n = __raceDescs.Length
	int m
	if is_female 
		m = __racefemalevalue.Length
	else
		m = __racemalevalue.Length
	endif
	int i = 0
	while i < n && i < m
		string raceName = __raceDescs[i]
		if raceName != ""
			if(stringUtil.find(raceString,raceName)>=0)
				float mult
				if is_female
					mult = __racefemalevalue[i]
				else
					mult = __racemalevalue[i]
				endif
				if mult > 0.0
					RaceSexMultiplier = RaceSexMultiplier * mult
					LogTrace("getActorPrice "+raceName+"RaceSexMultiplier * "+mult+" = "+RaceSexMultiplier)
				endif
			endif
		endif
		i += 1
	endwhile

	if(stringUtil.find(raceString,"Elder")>=0)
		if ((akActor.GetBaseAv("magicka") > akActor.GetBaseAv("health")) ||  (akActor.GetBaseAv("magicka") > akActor.GetBaseAv("stamina"))   )
			RaceSexMultiplier = RaceSexMultiplier * 1.8	; wizard
			LogTrace("getActorPrice Wise elder RaceSexMultiplier * 1.8 = "+RaceSexMultiplier)
		else
			RaceSexMultiplier = RaceSexMultiplier * 0.5 ; just a standard old actor
			LogTrace("getActorPrice Standard elder RaceSexMultiplier * 0.5 = "+RaceSexMultiplier)
		endif
	endif

	;LogTrace("getActorPrice:  "+akActor.getDisplayName()+" RaceSexMultiplier="+RaceSexMultiplier)
	
	Float fTrainMod = 1.0
	fTrainMod *= ((akActor.GetFactionRank(DOMTrainSubmission) / 60.0) + 0.34)
	fTrainMod *= ((akActor.GetFactionRank(DOMTrainResignation) / 60.0) + 0.34)
	fTrainMod *= ((akActor.GetFactionRank(DOMTrainHumiliation) / 60.0) + 0.34)
	fTrainMod *= ((akActor.GetFactionRank(DOMTrainRespect) / 60.0) + 0.34)
	fTrainMod += (akActor.GetFactionRank(DOMTrainAnal) / 200.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainOral) / 200.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainVaginal) / 200.0)
	fTrainMod += (GetFactionRankFloat(akActor,DOMTrainCombat) / 100.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainPose) / 150.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainHouse) / 200.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainAnger) / 200.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainFear) / 200.0)
	fTrainMod += (akActor.GetFactionRank(DOMTrainWorking) / 200.0)
	fTrainMod += 1.0 ; between 1.01 and 2

	;LogTrace("getActorPrice:  "+akActor.getDisplayName()+" Training="+fTrainMod)
	
	Float fWeightMod = (abTarget.GetWeight() / 50.0) + 0.5 ; between 0.5 and 1.5
	float base_value = (base_health + base_stamina + base_magicka)*100.0 ; minimum is 200.0 for playable races

	;LogTrace("getActorPrice:  "+akActor.getDisplayName()+" Weight="+fWeightMod)
	;LogTrace("getActorPrice:  "+akActor.getDisplayName()+" Combat="+base_value)
	
	float mood_modifier = 0.25
	if akActor.IsInFaction(DOMMoodBroken)
		mood_modifier = 0.5
	elseif akActor.IsInFaction(DOMMoodLoyal)
		mood_modifier = 0.75
	elseif akActor.IsInFaction(DOMMoodInlove)
		mood_modifier = 1.0
	endif

	; RaceSexMultiplier 0.6 (or 0.3 for vampires) to 2.0
	base_value = base_value * RaceSexMultiplier * fTrainMod * fWeightMod ; minimum = 200.0*1.01*0.5*0.6 = 60.6 (30.3 for vampires)
	int value = (mood_modifier * base_value) as int ; minimum = 15 (8 for vampires)
	value += 100 ; floor price
	if value < 100
		value = 100
	
	LogTrace("getActorPrice:  "+akActor.getDisplayName()+" final value="+value+" base="+base_value+" mood modifier="+mood_modifier)
	endif
	return value
EndFunction

; Get actor price assuming max training (ransom value)
int Function getActorFullPrice(Actor akActor)
	float base_health  = akActor.GetBaseAv("health")/100.0    ; Level 1 value is 100 for all races
	float base_stamina = akActor.GetBaseAv("stamina")/100.0   ; Level 1 value is 100 for all races
	float base_magicka = akActor.GetBaseAv("magicka")/100.0   ; Between 0 and 1000 depending on race and level
	Actorbase abTarget = akActor.GetLeveledActorBase()
	bool is_female     = (abTarget.GetSex() == 1)
	Race ActorRace  = abTarget.GetRace()
	string raceString = ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
	float RaceSexMultiplier    = 1.0
	;LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" female="+is_female+" race="+raceString)

	; Race bonuses
	if ActorRace.HasKeyword(DOM01.Vampire) || (stringUtil.find(raceString,"Vampire")>=0)
		RaceSexMultiplier = 0.3 ; No one wants that sick stuff
	elseif(stringUtil.find(raceString,"Elder")>=0)
		if ((akActor.GetBaseAv("magicka") > akActor.GetBaseAv("health")) ||  (akActor.GetBaseAv("magicka") > akActor.GetBaseAv("stamina"))   )
			RaceSexMultiplier = 1.8	; wizard
		else
			RaceSexMultiplier = 0.5 ; just a standard old actor
		endif
	elseif(stringUtil.find(raceString,"Argonian")>=0)
		RaceSexMultiplier = 0.6
	elseif(stringUtil.find(raceString,"Breton")>=0)
		if is_female
			RaceSexMultiplier = 1.2
		else
			RaceSexMultiplier = 0.8
		endif
	elseif(stringUtil.find(raceString,"Dark Elf")>=0)
		if is_female
			RaceSexMultiplier = 1.1
		else
			RaceSexMultiplier = 0.9
		endif
	elseif(stringUtil.find(raceString,"High Elf")>=0)
		if is_female
			RaceSexMultiplier = 1.4
		else
			RaceSexMultiplier = 0.6
		endif
	elseif(stringUtil.find(raceString,"Imperial")>=0)
		RaceSexMultiplier = 1.15
	elseif(stringUtil.find(raceString,"Khajiit")>=0)
		RaceSexMultiplier = 0.8
	elseif(stringUtil.find(raceString,"Nord")>=0)
		if is_female
			RaceSexMultiplier = 1.4
		else
			RaceSexMultiplier = 1.1
		endif
	elseif(stringUtil.find(raceString,"Orc")>=0)
		RaceSexMultiplier = 1.2
	elseif(stringUtil.find(raceString,"Redguard")>=0)
		if is_female
			RaceSexMultiplier = 1.5
		else
			RaceSexMultiplier = 1
		endif
	elseif(stringUtil.find(raceString,"Wood Elf")>=0)
		if is_female
			RaceSexMultiplier = 1.3
		else
			RaceSexMultiplier = 1.2
		endif
	endif
	;LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" RaceSexMultiplier="+RaceSexMultiplier)
	
	Float fTrainMod = 22.0
	;LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" Training="+fTrainMod)
	
	Float fWeightMod = (abTarget.GetWeight() / 50.0) + 0.5
	float base_value = (base_health + base_stamina + base_magicka)*100.0

	;LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" Weight="+fWeightMod)
	;LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" Combat="+base_value)
	
	base_value = base_value * RaceSexMultiplier * fTrainMod * fWeightMod
	int value = (base_value) as int

	LogTrace("getActorFullPrice:  "+akActor.getDisplayName()+" final value="+value+" base="+base_value)
	if value < 1000
		value = 1000
	endif
	return value
EndFunction

Function TrainMasters(Actor trainer, Actor taskmaster)
	; Change personality traits for masters
	if trainer != None
		float trm = trainer.GetFactionRank(DOMSkillEnforcer)
		Float multiplier
		if trm < 100.0
			multiplier = 0.1 + (0.9*(1.0-(trm/100.0)))
			trm += (multiplier*GetFacetValueByName(trainer,"insensitivity"))
			trainer.SetFactionRank(DOMSkillEnforcer,trm as int)
		endif
		Int ntr = trainer.GetFactionRank(DOMNbTrainee)
		if ntr < 127
			ntr += 1
			trainer.SetFactionRank(DOMNbTrainee, ntr)
		endif

		if !DOM01.staticTraitsMode
			float t04 = trainer.GetFactionRank(DOMTraitConscientiousness)
			float t07 = trainer.GetFactionRank(DOMFacetWilfulness)
			float xt  = (100.0-t07)*t04/300.0
			if xt < 1.0
				xt = 1.0
			endif

			; -submi -honest +bold -open 
			xt *= 5.0/(ntr+5.0) ; less efficient after a few trainees
			float t00 = trainer.GetFactionRank(DOMTraitHonesty)	
			float t02 = trainer.GetFactionRank(DOMTraitExtraversion)
			float t06 = trainer.GetFactionRank(DOMFacetBoldness)
			float t10 = trainer.GetFactionRank(DOMFacetSensuality)
			float t11 = trainer.GetFactionRank(DOMFacetSubmissivity)
			trainer.SetFactionRank(DOMTraitHonesty,      (t00-RandomFloat(0, xt)) as int)
			trainer.SetFactionRank(DOMTraitExtraversion, (t02+RandomFloat(0, xt)) as int)
			trainer.SetFactionRank(DOMFacetBoldness,     (t06+RandomFloat(0, xt)/2.0) as int)
			trainer.SetFactionRank(DOMFacetSensuality,   (t10+RandomFloat(0, xt)/2.0) as int)
			trainer.SetFactionRank(DOMFacetSubmissivity, (t11-RandomFloat(0, xt)) as int)
			float[] TraitsArray	= GetNPCTraits(trainer) ; Update traits and modifiers
		endif
	endif
	if taskmaster != None
		float trm = trainer.GetFactionRank(DOMSkillDeceiver)
		Float multiplier
		if trm < 100.0
			multiplier = 0.1 + (0.9*(1.0-(trm/100.0)))
			trm += (multiplier*GetFacetValueByName(trainer,"criminality"))
			trainer.SetFactionRank(DOMSkillDeceiver,trm as int)
		endif
		Int ntr = taskmaster.GetFactionRank(DOMNbTrainer)
		if ntr < 127
			ntr += 1
			taskmaster.SetFactionRank(DOMNbTrainer, ntr)
		endif

		if !DOM01.staticTraitsMode
			float t04 = taskmaster.GetFactionRank(DOMTraitConscientiousness)
			float t07 = taskmaster.GetFactionRank(DOMFacetWilfulness)
			float xt  = (100.0-t07)*t04/600.0
			if xt < 1.0
				xt = 1.0
			endif

			; -honest -open +smart -kind
			xt *= 5.0/(ntr+5.0) ; less efficient after a few trainer successes
			float t00 = taskmaster.GetFactionRank(DOMTraitHonesty)
			float t02 = taskmaster.GetFactionRank(DOMTraitExtraversion)
			float t05 = taskmaster.GetFactionRank(DOMTraitOpenness)
			float t08 = taskmaster.GetFactionRank(DOMFacetSmartness)
			float t09 = taskmaster.GetFactionRank(DOMFacetToughness)
			
			taskmaster.SetFactionRank(DOMTraitHonesty,      (t00-RandomFloat(0, xt)) as int)
			taskmaster.SetFactionRank(DOMTraitExtraversion, (t02+RandomFloat(0, xt)/2.0) as int)
			taskmaster.SetFactionRank(DOMTraitOpenness,     (t05-RandomFloat(0, xt)/2.0) as int)
			taskmaster.SetFactionRank(DOMFacetSmartness,    (t08+RandomFloat(0, xt)) as int)
			taskmaster.SetFactionRank(DOMFacetToughness,    (t09+RandomFloat(0, xt)) as int)
			float[] TraitsArray	= GetNPCTraits(taskmaster) ; Update traits and modifiers
		endif
	endif
EndFunction

int Function TrainActorNPC(float days, int trainType, Actor trainee, Actor trainer, Actor taskmaster, bool [] ignoreStat)	
	if trainee == None
		return 5 ; training done
	endif
	float amount = 10.0
	bool[] skipStat = new bool[5]
	skipStat[0] = false ; submission
	skipStat[1] = false ; respect
	skipStat[2] = false ; pose
	skipStat[3] = false ; sex
	skipStat[4] = false ; combat
	if (trainType == 0) ; All but combat
		skipStat[4] = true ; combat
		;amount = 40.0
	elseif (trainType == 1) ; Pain
		skipStat[1] = true ; respect
		skipStat[2] = true ; pose
		skipStat[3] = true ; sex
		skipStat[4] = true ; combat
	elseif (trainType == 2) ; Sex
		skipStat[0] = true ; submission
		skipStat[1] = true ; respect
		skipStat[2] = true ; pose
		skipStat[4] = true ; combat
	elseif (trainType == 3) ; Combat
		skipStat[0] = true ; submission
		skipStat[1] = true ; respect
		skipStat[2] = true ; pose
		skipStat[3] = true ; sex
	elseif (trainType == 4) ; Pose
		skipStat[0] = true ; submission
		skipStat[1] = true ; respect
		skipStat[3] = true ; sex
		skipStat[4] = true ; combat
	endif ; trainType == 5 ; Everything

	float tm_bonus
	if (taskmaster != None) 
		float tm_skill = DOM01.GetDeceiverModifier(taskmaster)
		float tm_extra = ((taskmaster.GetFactionRank(DOMTrainSubmission) - 80.0) / 40.0) 
		if (taskmaster.GetFactionRank(DOMTrainRespect) > 50)
			tm_extra += ((taskmaster.GetFactionRank(DOMTrainRespect) - 50.0) / 100.0)
		endif
		tm_bonus = 1.0 + tm_skill + tm_extra/4.0
	else
		tm_bonus = 1.0
	endif

	float trainer_bonus
	float  subt
	float  humt
	float  regt
	float  feat
	float  angt
	float  rest
	float  post
	float  orat
	float  vagt
	float  anat
	float  comt

	if trainer != None
		if trainType == 2 ; sex
			trainer_bonus = DOM01.GetDepraverModifier(trainer)
		elseif trainType == 4 ; pose
			trainer_bonus = DOM01.GetPersuaderModifier(trainer)
		else
			trainer_bonus = DOM01.GetEnforcerModifier(trainer)
		endif
		subt = trainer.GetFactionRank(DOMTrainSubmission) as float
		humt = trainer.GetFactionRank(DOMTrainHumiliation) as float
		regt = trainer.GetFactionRank(DOMTrainResignation) as float	
		feat = trainer.GetFactionRank(DOMTrainFear) as float
		angt = trainer.GetFactionRank(DOMTrainAnger) as float
		rest = trainer.GetFactionRank(DOMTrainRespect) as float
		post = trainer.GetFactionRank(DOMTrainPose) as float
		orat = trainer.GetFactionRank(DOMTrainOral) as float
		vagt = trainer.GetFactionRank(DOMTrainVaginal) as float
		anat = trainer.GetFactionRank(DOMTrainAnal) as float
		comt = GetFactionRankFloat(trainer,DOMTrainCombat) as float
	else
		trainer_bonus = 0.5
		subt = 100.0
		humt = 100.0
		regt = 100.0
		feat = 100.0
		angt = 100.0
		rest = 100.0
		post = 100.0
		orat = 100.0
		vagt = 100.0
		anat = 100.0
		comt = 100.0
	endif
	float bonus = days * tm_bonus * trainer_bonus * 0.5 * DOM01.train_speed_npc

	; Current training stats for trainee
	float  sub  = trainee.GetFactionRank(DOMTrainSubmission) as float
	float  hum  = trainee.GetFactionRank(DOMTrainHumiliation) as float
	float  reg  = trainee.GetFactionRank(DOMTrainResignation) as float
	float  fea  = trainee.GetFactionRank(DOMTrainFear) as float
	float  ang  = trainee.GetFactionRank(DOMTrainAnger) as float
	float  res  = trainee.GetFactionRank(DOMTrainRespect) as float
	float  pos  = trainee.GetFactionRank(DOMTrainPose) as float
	float  ora  = trainee.GetFactionRank(DOMTrainOral) as float
	float  vag  = trainee.GetFactionRank(DOMTrainVaginal) as float
	float  ana  = trainee.GetFactionRank(DOMTrainAnal) as float
	float  com  = GetFactionRankFloat(trainee,DOMTrainCombat) as float
	
	LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" before "+sub+" "+hum+" "+reg+" "+fea+" "+ang+" "+res+" | "+pos+" | "+ora+" "+vag+" "+ana+" | "+com)
	if trainer
		LogTrace("TrainActorNPC: trainer "+trainer.GetDisplayName()+" bonus="+trainer_bonus+" "+subt+" "+humt+" "+regt+" "+feat+" "+angt+" "+rest+" | "+post+" | "+orat+" "+vagt+" "+anat+" | "+comt)
	else
		LogTrace("TrainActorNPC: trainer NONE bonus="+trainer_bonus+" "+subt+" "+humt+" "+regt+" "+feat+" "+angt+" "+rest+" | "+post+" | "+orat+" "+vagt+" "+anat+" | "+comt)
	endif
	if taskmaster
		LogTrace("TrainActorNPC: taskmaster/mistress "+taskmaster.GetDisplayName()+" bonus="+tm_bonus)
	else
		LogTrace("TrainActorNPC: taskmaster/mistress NONE bonus="+tm_bonus)
	endif

	int rank
	if trainType == 0 || trainType == 5 ; all but combat or everything
		rank = trainee.GetFactionRank(DOMNbPain)
		if rank <= 0
			trainee.SetFactionRank(DOMNbPain,1)
		elseif rank < 127
			trainee.SetFactionRank(DOMNbPain,rank+1)
		endif
		rank = trainee.GetFactionRank(DOMNbRape)
		if rank <= 0
			trainee.SetFactionRank(DOMNbRape,1)
		elseif rank < 127
			trainee.SetFactionRank(DOMNbRape,rank+1)
		endif
	elseif trainType == 1 ; pain
		rank = trainee.GetFactionRank(DOMNbPain)
		if rank <= 0
			trainee.SetFactionRank(DOMNbPain,1)
		elseif rank < 127
			trainee.SetFactionRank(DOMNbPain,rank+1)
		endif
	elseif trainType == 2
		rank = trainee.GetFactionRank(DOMNbRape)
		if rank <= 0
			trainee.SetFactionRank(DOMNbRape,1)
		elseif rank < 127
			trainee.SetFactionRank(DOMNbRape,rank+1)
		endif
	endif

	if !ignoreStat[0] && !skipStat[0] ; submission/humiliation/resignation
		if (sub < subt)
			float  subd = DSubmission(sub, (amount+RandomFloat(0, amount))* bonus, trainee)
			sub += subd
			if (sub > subt)
				sub = subt
			endif
 			trainee.SetFactionRank(DOMTrainSubmission, sub as int)
		endif
		if (hum < humt)
			float  humd = DHumiliation(hum, (amount+RandomFloat(0, amount))* bonus, trainee)
			hum += humd
			if (hum > humt)
				hum = humt
			endif
 			trainee.SetFactionRank(DOMTrainHumiliation, hum as int)
		endif
		if (reg < regt)
			float  regd = DResignation(reg, (amount+RandomFloat(0, amount)) * bonus, trainee)
			reg += regd
			if (reg > regt)
				reg = regt
			endif
 			trainee.SetFactionRank(DOMTrainResignation, reg as int)
		endif
	endif
	if !ignoreStat[1] && !skipStat[1] ; fear/anger/respect
		if (fea < feat)
			float  fead = DFear(fea, (amount+RandomFloat(0, amount)) * bonus, trainee)
			fea += fead
			if (fea > feat)
				fea = feat
			endif
 			trainee.SetFactionRank(DOMTrainFear, fea as int)
		endif
		if (ang < angt)
			float  angd = DAnger(ang, (amount+RandomFloat(0, amount)) * bonus, trainee)
			ang += angd
			if (ang > angt)
				ang = angt
			endif
 			trainee.SetFactionRank(DOMTrainAnger, ang as int)
		endif
		if (res < rest)
			float  resd = DRespect(res, (amount+RandomFloat(0, amount)) * bonus, trainee)
			res += resd
			if (res > rest)
				res = rest
			endif
 			trainee.SetFactionRank(DOMTrainRespect, res as int)
		endif
	endif
	if !ignoreStat[2] && !skipStat[2] ; pose
		if (pos < post)
			float  posd = DPose(pos, (amount+RandomFloat(0, amount)) * bonus, trainee)
			pos += posd
			if (pos > post)
				pos = post
			endif
 			trainee.SetFactionRank(DOMTrainPose, pos as int)
		endif
	endif
	if !ignoreStat[3] && !skipStat[3] ; sex
		if (ora < orat)
			float  orad = DOralSex(ora, (amount+RandomFloat(0, amount)) * bonus, trainee)
			ora += orad
			if (ora > orat)
				ora = orat
			endif
 			trainee.SetFactionRank(DOMTrainOral, ora as int)
		endif
		if (vag < vagt)
			float  vagd = DVaginalSex(vag, (amount+RandomFloat(0, amount)) * bonus, trainee)
			vag += vagd
			if (vag > vagt)
				vag = vagt
			endif
 			trainee.SetFactionRank(DOMTrainVaginal, vag as int)
		endif
		if (ana < anat)
			float  anad = DAnalSex(ana, (amount+RandomFloat(0, amount)) * bonus, trainee)
			ana += anad
			if (ana > anat)
				ana = anat
			endif
 			trainee.SetFactionRank(DOMTrainAnal, ana as int)
		endif
		float sex = (ana+ora+vag)/3.0
		trainee.SetFactionRank(DOMTrainSex, sex as int)
	endif
	if !ignoreStat[4] && !skipStat[4] ; combat
		if (com < comt)
			float  comd = DCombat(com, (amount+RandomFloat(0, amount)) * bonus, trainee)
			com += comd
			if (com > comt)
				com = comt
			endif
			if com < 0
				com = 0
			elseif com > 127
				com = 127
			endif
 			trainee.SetFactionRank(DOMTrainCombat, com as int)
		endif
	endif

	; Update to values after training
	sub  = trainee.GetFactionRank(DOMTrainSubmission) as float
	hum  = trainee.GetFactionRank(DOMTrainHumiliation) as float
	reg  = trainee.GetFactionRank(DOMTrainResignation) as float
	fea  = trainee.GetFactionRank(DOMTrainFear) as float
	ang  = trainee.GetFactionRank(DOMTrainAnger) as float
	res  = trainee.GetFactionRank(DOMTrainRespect) as float
	pos  = trainee.GetFactionRank(DOMTrainPose) as float
	ora  = trainee.GetFactionRank(DOMTrainOral) as float
	vag  = trainee.GetFactionRank(DOMTrainVaginal) as float
	ana  = trainee.GetFactionRank(DOMTrainAnal) as float
	com  = GetFactionRankFloat(trainee,DOMTrainCombat) as float

	LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" amount="+amount+" bonus="+bonus)
	LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" after "+sub+" "+hum+" "+reg+" "+fea+" "+ang+" "+res+" | "+pos+" | "+ora+" "+vag+" "+ana+" | "+com)

	; what to train next?
	int train_next
	
	; Check for training end
	bool doneSub = (((sub >= subt) && (hum >= humt) && (res >= rest)) || (ignoreStat[0])) 
	bool doneRes = (((res >= rest) && (fea >= feat) && (ang >= angt)) || (ignoreStat[1])) 
	bool doneSex = (((ora >= orat) && (vag >= vagt) && (ana >= anat)) || (ignoreStat[3])) 
	bool doneCom = ((com >= comt) || (ignoreStat[4])) 
	bool donePos = ((pos >= post) || (ignoreStat[2])) 

	if (doneSub && doneRes && doneSex && donePos && doneCom)
		LogTrace("HomeSweetHome: trainee "+trainee.GetDisplayName()+" training done")
		TrainMasters(trainer,taskmaster)
		train_next = 5
	elseif (((trainType == 0) && (doneSub) && (doneRes)) || ((trainType == 1) && (doneSub)) || ((trainType == 2) && (doneSex)) || ((trainType == 3) && (doneCom)) || ((trainType == 4) && (donePos)) )
		if (sub < subt || hum < humt || reg < regt) && !doneSub
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 1 - sub")
			train_next = 1
		elseif (res < rest || fea < feat || ang < angt) && !doneRes
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 0 - res")
			train_next = 0
		elseif (ora < orat || vag < vagt || ana < anat) && !doneSex
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 2 - sex")
			train_next = 2
		elseif com < comt && !doneCom
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 3 - com")
			train_next = 3
		elseif pos < post && !donePos
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 4 - pos")
			train_next = 4
		else
			LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" move to training 5 - done ")
			train_next = 5
		endif
	else
		LogTrace("TrainActorNPC: trainee "+trainee.GetDisplayName()+" continue with training "+trainType)
		train_next = trainType
	endif
	return train_next
EndFunction

int Function TrainActorSubmissionOnHit(Actor akActor, float training)		
	int sub = akActor.GetFactionRank(DOMTrainSubmission)
	if sub >= 100
		return sub
	endif
	training += DSubmission(sub, 10, akActor)
	if training < 1
		training = 1.0
	endif
	int npain = akActor.GetFactionRank(DOMNbPain)
	if npain < 127
		akActor.SetFactionRank(DOMNbPain, npain+1)
	endif
	int dsub = training as int
	sub += dsub
	akActor.SetFactionRank(DOMTrainSubmission, sub)
	return sub
EndFunction

int Function TrainActorResignationOnHit(Actor akActor, float training)		
	int reg = akActor.GetFactionRank(DOMTrainResignation)
	if reg >= 100
		return reg
	endif
	training += DResignation(reg, 10, akActor)
	if training < 1
		training = 1.0
	endif
	int dreg = training as int
	reg += dreg
	akActor.SetFactionRank(DOMTrainResignation, reg)
	return reg
EndFunction

int Function TrainActorHumiliationOnHit(Actor akActor, float training)	
	int hum = akActor.GetFactionRank(DOMTrainHumiliation)
	if hum >= 100
		return hum
	endif
	training += DHumiliation(hum, 10, akActor)
	if training < 1
		training = 1.0
	endif
	int dhum = training as int
	hum += dhum
	akActor.SetFactionRank(DOMTrainHumiliation, hum)
	return hum
EndFunction

Function Alter_Persona(Actor akTarget, float amount)
	float[] TraitsArray = GetNPCTraits(akTarget)	
	
	traitsArray[0] = traitsArray[0] +amount*DOM_Util.RandG1() ; Sly/Honest  Hexaco: Honesty-Humility  
	traitsArray[1] = traitsArray[1] +amount*DOM_Util.RandG1() ; Anxious/Calm   Hexaco: Emotionality 
	traitsArray[2] = traitsArray[2] +amount*DOM_Util.RandG1() ; Shy/Lively     Hexaco: eXtraversion 
	traitsArray[3] = traitsArray[3] +amount*DOM_Util.RandG1() ; Grumpy/Gentle  Hexaco: Agreeableness
	traitsArray[4] = traitsArray[4] +amount*DOM_Util.RandG1() ; Lazy/Thorough  Hexaco: Conscientiousness 
	traitsArray[5] = traitsArray[5] +amount*DOM_Util.RandG1() ; Shallow/Open   Hexaco: Openness to Experience
	; Mind power
	TraitsArray[10] = TraitsArray[10] +amount*DOM_Util.RandG1() ; Needy, clingy/Bold,  independant, social sensitivity
	TraitsArray[6] = TraitsArray[6] +amount*DOM_Util.RandG1() ; Weak minded/Wilful, sensitivity to mind attacks
	TraitsArray[11] = TraitsArray[11] +amount*DOM_Util.RandG1() ; Stupid/Smart   strength of the mind
	; Physical power
	TraitsArray[8] = TraitsArray[8] +amount*DOM_Util.RandG1() ; Frigid/Sensual, sexual sensitivity
	TraitsArray[7]= TraitsArray[7]+amount*DOM_Util.RandG1() ; Delicate/Tough, physical sensitivity
	TraitsArray[9]= TraitsArray[9]+amount*DOM_Util.RandG1() ; DOM/Sub, perversion direction

	Debug.Notification(akTarget.getDisplayName()+"'s eyes blink for a short while")
	if amount>0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Boosting "+akTarget.getDisplayName()+"'s personna by "+amount)
	elseif amount<0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Shrinking "+akTarget.getDisplayName()+"'s personna by "+amount)
	else
		Debug.Notification("Alter persona spell has no effect on "+akTarget.getDisplayName())
	endif
EndFunction

Function Alter_Lust(Actor akTarget, float amount)
	float[] TraitsArray = GetNPCTraits(akTarget)	

	traitsArray[0] = traitsArray[0] +amount*DOM_Util.RandG1()   ; Sly/Honest  Hexaco: Honesty-Humility  
	traitsArray[2] = traitsArray[2] -amount*DOM_Util.RandG1()*2 ; Shy/Lively     Hexaco: eXtraversion 
	traitsArray[3] = traitsArray[3] +amount*DOM_Util.RandG1()*2 ; Grumpy/Gentle  Hexaco: Agreeableness
	traitsArray[5] = traitsArray[5] -amount*DOM_Util.RandG1()*3 ; Shallow/Open   Hexaco: Openness to Experience
	; Physical power
	TraitsArray[8] = TraitsArray[8] +amount*DOM_Util.RandG1()*3 ; Frigid/Sensual, sexual sensitivity
	TraitsArray[7]= TraitsArray[7]-amount*DOM_Util.RandG1()   ; Delicate/Tough, physical sensitivity
	TraitsArray[9]= TraitsArray[9]+amount*DOM_Util.RandG1()*3 ; DOM/Sub, perversion direction

	DOMKeys.IncreaseArousal(akTarget,None,amount,"social boldness")
	
	Debug.Notification(akTarget.getDisplayName()+"'s cheeks got red for a short while")
	if amount>0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Boosting "+akTarget.getDisplayName()+"'s lust by "+amount)
	elseif amount<0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Shrinking "+akTarget.getDisplayName()+"'s lust by "+amount)
	else
		Debug.Notification("Lust spell has no effect on "+akTarget.getDisplayName())
	endif
EndFunction

Function Alter_Pain(Actor akTarget, float amount)
	float[] TraitsArray = GetNPCTraits(akTarget)	

	traitsArray[0] = traitsArray[0] +amount*DOM_Util.RandG1()   ; Sly/Honest  Hexaco: Honesty-Humility  
	traitsArray[1] = traitsArray[1] +amount*DOM_Util.RandG1()*2 ; Calm/Anxious   Hexaco: Emotionality 
	; Mind power
	TraitsArray[10] = TraitsArray[10] -amount*DOM_Util.RandG1()   ; Needy, clingy/Bold,  independant, social sensitivity
	TraitsArray[6] = TraitsArray[6] -amount*DOM_Util.RandG1()*3 ; Weak minded/Wilful, sensitivity to mind attacks
	; Physical power
	TraitsArray[8] = TraitsArray[8] +amount*DOM_Util.RandG1()*2 ; Frigid/Sensual, sexual sensitivity
	TraitsArray[7]= TraitsArray[7]-amount*DOM_Util.RandG1()*3 ; Delicate/Tough, physical sensitivity
	TraitsArray[9]= TraitsArray[9]+amount*DOM_Util.RandG1()*2 ; DOM/Sub, perversion direction

	Debug.Notification(akTarget.getDisplayName()+" shivers for a short while")
	if amount>0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Boosting "+akTarget.getDisplayName()+"'s pain by "+amount)
	elseif amount<0
		SetNPCTraits(akTarget, TraitsArray)
		Debug.Notification("Shrinking "+akTarget.getDisplayName()+"'s pain by "+amount)
	else
		Debug.Notification("Lash spell has no effect on "+akTarget.getDisplayName())
	endif
EndFunction

Function Alter_Virginity(Actor akRef)
	; Virgin status
	DOMSexlab.ClearStats(akRef)
	int virgin_status_vaginal = 0
	int virgin_status_anal    = 0
	int virgin_status_oral    = 0
	int virgin_status_same    = 0 
	int virgin_status_gang    = 0
	akRef.SetFactionRank(DOMVirginVaginal, virgin_status_vaginal)
	akRef.SetFactionRank(DOMVirginAnal, virgin_status_anal)
	akRef.SetFactionRank(DOMVirginOral, virgin_status_oral)
	akRef.SetFactionRank(DOMVirginSame, virgin_status_same)
	akRef.SetFactionRank(DOMVirginGangbang, virgin_status_gang)

	int vaginal_training = akRef.GetFactionRank(DOMTrainVaginal)
	int anal_training    = akRef.GetFactionRank(DOMTrainAnal)
	int oral_training    = akRef.GetFactionRank(DOMTrainOral)
	int sex_training     = akRef.GetFactionRank(DOMTrainSex)

	if vaginal_training < 0 || virgin_status_vaginal == 0
		vaginal_training = 0
	endif
	if anal_training < 0 || virgin_status_anal == 0
		anal_training = 0
	endif
	if oral_training < 0 || virgin_status_oral == 0
		oral_training = 0
	endif
	sex_training     = (((vaginal_training + anal_training + oral_training) as float)/3.0+0.5) as int ; recompute total training
	if sex_training > 127
		sex_training = 127
	endif

	SetFactionRank(akRef,DOMTrainVaginal, vaginal_training)
	SetFactionRank(akRef,DOMTrainAnal, anal_training)
	SetFactionRank(akRef,DOMTrainOral, oral_training)
	SetFactionRank(akRef,DOMTrainSex, sex_training)


	if virgin_status_vaginal == 0 && virgin_status_anal == 0 && virgin_status_oral == 0 && virgin_status_same == 0
		; never had sex
		SetFactionRank(akRef,DOMNbSex,0)
		SetFactionRank(akRef,DOMNbSexForMoney,0)
		SetFactionRank(akRef,DOMNbSexWithOthers,0)
		SetFactionRank(akRef,DOMNbRape,0)
		SetFactionRank(akRef,DOMNbOrgasm,0)
		SetFactionRank(akRef,DOMVirginGangbang,0)
	elseif vaginal_training == 0.0 && anal_training == 0.0 && oral_training == 0.0
		; was never trained
		SetFactionRank(akRef,DOMNbSex,0)
		SetFactionRank(akRef,DOMNbSexForMoney,0)
		SetFactionRank(akRef,DOMNbSexWithOthers,0)
		SetFactionRank(akRef,DOMNbRape,0)
		SetFactionRank(akRef,DOMNbOrgasm,0)
	endif
	
	Debug.Notification(akRef.getDisplayName()+"'s cheeks went red for a short while")
	;Debug.Notification(akRef.getDisplayName()+"'s virginity has been restored")
EndFunction

Function Restore_Persona(Actor akTarget)
	; -=TAK=- generate personality traits and feelings
	; Personnality traits as described by the HEXACO model
	float[] TraitsArray = GetTraitsReadOrGenerated(akTarget)	
	SetNPCTraits(akTarget, TraitsArray)
	Debug.Notification(akTarget.getDisplayName()+"'s eyes blink for a short while")
	;Debug.Notification(akTarget.getDisplayName()+"'s personality has been restored")
EndFunction

Function EraseMemoryActor(Actor akTarget)
	akTarget.RemoveFromFaction(DOMTrainFear)
	akTarget.RemoveFromFaction(DOMTrainRespect)
	akTarget.RemoveFromFaction(DOMTrainAnger)
	akTarget.RemoveFromFaction(DOMTrainSubmission)
	akTarget.RemoveFromFaction(DOMTrainHumiliation)
	akTarget.RemoveFromFaction(DOMTrainResignation)

	akTarget.RemoveFromFaction(DOMTrainPose)
	akTarget.RemoveFromFaction(DOMTrainCombat)
	akTarget.RemoveFromFaction(DOMTrainHouse)
	akTarget.RemoveFromFaction(DOMTrainWorking)
	akTarget.RemoveFromFaction(DOMTraumaInDays)
	akTarget.RemoveFromFaction(DOMTraumaInMonths)
	akTarget.RemoveFromFaction(DOMTraumaInYears)
	akTarget.RemoveFromFaction(DOMEnslavedInDays)
	akTarget.RemoveFromFaction(DOMEnslavedInMonths)
	akTarget.RemoveFromFaction(DOMEnslavedInYears)

	akTarget.RemoveFromFaction(DOMNbPraise)
	akTarget.RemoveFromFaction(DOMNbPain)
	akTarget.RemoveFromFaction(DOMNbBondage)
	akTarget.RemoveFromFaction(DOMNbToldoff)
	akTarget.RemoveFromFaction(DOMNbShame)
	akTarget.RemoveFromFaction(DOMNbComfort)
	akTarget.RemoveFromFaction(DOMNbFlatter)
	akTarget.RemoveFromFaction(DOMNbInsult)
	akTarget.RemoveFromFaction(DOMNbPromise)
	akTarget.RemoveFromFaction(DOMNbThreat)
	akTarget.RemoveFromFaction(DOMNbKinkTrigger)
	akTarget.RemoveFromFaction(DOMNbShock)
	akTarget.RemoveFromFaction(DOMNbBroken)	
	akTarget.RemoveFromFaction(DOMNbSexualExperiences)	
	akTarget.RemoveFromFaction(DOMNbBrainwashed)	
	akTarget.RemoveFromFaction(DOMNbChatFeelings)
	akTarget.RemoveFromFaction(DOMNbChatPersonality)
	
	akTarget.RemoveFromFaction(DOMNbTrainee)
	akTarget.RemoveFromFaction(DOMNbTrainer)
	akTarget.RemoveFromFaction(DOMNbWhoredSlaves)
	akTarget.RemoveFromFaction(DOMNbRecruitedSlavers)
	akTarget.RemoveFromFaction(DOMNbRansomedSlaves)
	akTarget.RemoveFromFaction(DOMNbCapturedSlaves)
	akTarget.RemoveFromFaction(DOMNbRapedSlaves)
	akTarget.RemoveFromFaction(DOMNbSoldSlaves)
	akTarget.RemoveFromFaction(DOMNbBrokenSlaves)
	akTarget.RemoveFromFaction(DOMNbPlayerFling)
	akTarget.RemoveFromFaction(DOMNbPlayerChat)
EndFunction

Function Alter_Training(Actor akTarget, float amount)
	float[] TraitsArray = GetNPCTraits(akTarget)	

	;LogTrace(akTarget.getDisplayName()+" looks down in submission amount(original)="+amount)
	; wilpower modifier
	amount = amount*(1.3-TraitsArray[6]/100.0)
	;LogTrace(akTarget.getDisplayName()+" looks down in submission amount(wilpower)="+amount)
	; smartness modifier
	amount = amount*(1.5-TraitsArray[11]/100.0)
	;LogTrace(akTarget.getDisplayName()+" looks down in submission amount(smart)="+amount)
	SetNPCDefaultTraining(akTarget)
	PrintTraining(akTarget)
	bool [] ignoreStat = new bool[5]
	ignoreStat[0] = false
	ignoreStat[1] = false
	ignoreStat[2] = false
	ignoreStat[3] = false
	ignoreStat[4] = false
	TrainActorNPC(amount/10.0, 5, akTarget, None, None, ignoreStat)

	IncrementFactionRank(akTarget,DOMNbShock)
	IncrementFactionRank(akTarget,DOMNbPraise)
	IncrementFactionRank(akTarget,DOMNbPain)
	IncrementFactionRank(akTarget,DOMNbToldoff)
	
	PrintTraining(akTarget)

	float mag = 0.0
	if akTarget.IsInFaction(DOMTrainSubmission)
		mag += akTarget.GetFactionRank(DOMTrainSubmission)
	endif
	if mag<34.0
		Debug.Notification(akTarget.getDisplayName()+" looks down for a short while")
	elseif mag<70.0
		Debug.Notification(akTarget.getDisplayName()+" looks down for a while")
	elseif mag<100.0
		Debug.Notification(akTarget.getDisplayName()+" looks down in submission")
	else
		Debug.Notification(akTarget.getDisplayName()+" looks down in total submission")
	endif
EndFunction

Function IncrementFactionRank(Actor akTarget, Faction akFaction)
	if akTarget.IsInFaction(akFaction)
		int rank = akTarget.getFactionRank(akFaction)+1
		akTarget.setFactionRank(akFaction, rank)
	else
		akTarget.setFactionRank(akFaction, 1)
	endif
EndFunction

float Function GetWealthFromJSON(Actor akRef)
	; Fixed values from JSON files for choosen NPC
	string fileName
	fileName = OpenActorJSON(akRef)
	If fileName != "" && JsonUtil.JsonExists(fileName)
		string nameJSON = JsonUtil.GetStringValue(fileName, "fullname", akRef.GetDisplayName())
		return JsonUtil.GetFloatValue(fileName, "wealthlevel", -1.0)
	endif
	return -1.0
EndFunction

Function RemoveNPCGold(Actor akRef, int amount)
EndFunction

int Function GetNPCWealth(Actor akRef)
	if akRef == None
		return 0
	endif
	; First try JSON file
	float multiplier = GetWealthFromJSON(akRef)
	
	if multiplier < 0.0 ; get wealth from job, employer and trainer proficiency
		; get previous employers and jobs
		int jobs = akRef.getFactionRank(DOMJobOriginFaction)  
		int emps = akRef.getFactionRank(DOMEmployerOriginFaction) 
		int skil = akRef.getFactionRank(DOMTrainerOriginFaction) 

		if(jobs<0 && emps<0) ; Probably a unique NPC we need to evaluate
			jobs = GetJobOfOriginIndex(akRef)
			emps = GetEmployerOfOriginIndex(akRef)
			skil = GetTrainerOfOriginIndex(akRef)
		endif
		;LogTrace(akRef.GetDisplayName()+" jobs="+jobs+" employers="+emps)

		; Modifier
		; Super rich *100000
		; Nobility NPC *10000
		; Rich *1000
		; Middle class *100
		; Poor *10
		; Beggar *1

		; This reflects only Skyrim jobs and employers not real life nor anyother part of Cyrodil
		if jobs >= 0 && jobs < __jobwealth.Length
			multiplier = __jobwealth[jobs]
		else
			multiplier = 20.0
		endif
		if emps > 0 ; Works at court
			multiplier = multiplier*10.0
		endif
		if skil > 0 ; Works as a trainer
			multiplier = multiplier*2.0
		endif
		if DOM01.isASlaver(akRef)
			if akRef.IsInFaction(DOMPlayerSlaverFaction)
				multiplier *= 2.0
			else ; private slavers are richer
				multiplier *= 10.0
			endif
		endif
		LogTrace("GetNPCWealth "+akRef.GetDisplayName()+" computed wealth="+multiplier)
	else
		LogTrace("GetNPCWealth "+akRef.GetDisplayName()+" read wealth="+multiplier)
	endif

	int wealth_amount = ((multiplier*DOM01.wealth_modifier) as int)
	int gold_amount = DOM01.DOMEquip.HasGold(akRef)
	LogTrace(akRef.GetDisplayName()+" wealth to spend="+multiplier+" * "+DOM01.wealth_modifier+" = "+wealth_amount+" gold in inventory = "+gold_amount)
	return wealth_amount + gold_amount
EndFunction

; Utils

Function SetPlaceOfOrigin(Actor akRef, int idx)
	;LogTrace("SetPlaceOfOrigin region="+idx)
	if idx < 0
		return
	endif
	SetFactionRank(akRef,DOMPlaceOriginFaction, idx)
EndFunction

Function SetJobOfOrigin(Actor akRef, int idx)
	;LogTrace("SetJobOfOrigin job="+idx)
	if idx < 0
		return
	endif
	SetFactionRank(akRef,DOMJobOriginFaction, idx)
EndFunction

Function SetEmployerOfOrigin(Actor akRef, int idx)
	;LogTrace("SetEmployerOfOrigin employer="+idx)
	if idx <  0
		return
	endif
	SetFactionRank(akRef,DOMEmployerOriginFaction, idx)
EndFunction

Function SetTrainerOfOrigin(Actor akRef, int idx)
	;LogTrace("SetTrainerOfOrigin trainer="+idx)
	if idx < 0
		return
	endif
	SetFactionRank(akRef,DOMTrainerOriginFaction, idx)
EndFunction

Function SetClassOfOrigin(Actor akRef, int idx)
	;LogTrace("SetClassOfOrigin trainer="+idx)
	if idx < 0
		return
	endif
	SetFactionRank(akRef,DOM04.DOMClassOriginFaction, idx)
EndFunction

int Function GetJobOfOriginIndex(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.GenOriginIndex(self, akRef, 1)
		if fast >= 0
			return fast
		endif
	endif
	int rank = akRef.getFactionRank(DOMJobOriginFaction)
	;LogTrace("GetJobOfOriginIndex start rank="+rank)
	if rank >= 0
		;LogTrace("GetJobOfOriginIndex already set rank="+rank)
		return rank ; Already Set by DOM
	endif
	; Not set
	; Faction members
	if akRef.IsInFaction(JobJarlFaction)
		rank = 1 ; Jarl
	elseif akRef.IsInFaction(GovRuling)
		rank = 2 ; Nobility
	elseif akRef.IsInFaction(GovExiled)
		rank = 3 ; Exiled nobility
	elseif akRef.IsInFaction(BanditFaction)
		rank = 4 ; Bandit
	elseif akRef.IsInFaction(ForswornFaction)
		rank = 5 ; Forsworn
	elseif akRef.isInFaction(CWImperialFaction) || akRef.isInFaction(CWImperialFactionNPC)
		rank = 6 ; "a member of the imperial legion"
	elseif akRef.isInFaction(CWSonsFaction) || akRef.isInFaction(CWSonsFactionNPC) || akRef.isInFaction(CrimeFactionSons)
		rank = 7 ; "a member of the stormcloaks"
	elseif akRef.isInFaction(DarkBrotherhoodFaction)
		rank = 8 ; "a member of the dark brotherhood"
	elseif akRef.isInFaction(ThievesGuildFaction) || akRef.isInFaction(CrimeFactionThievesGuild)
		rank = 9 ; "a member of the thieves guild"
	elseif akRef.isInFaction(CompanionsFaction)
		rank = 10 ; "a member of the companions"
	elseif akRef.isInFaction(WerewolfFaction)
		rank = 11 ; "a wild werewolf"
	elseif akRef.isInFaction(SilverHandFaction)
		rank = 12 ; "a member of the silver hand"
	elseif akRef.isInFaction(BladesFaction)
		rank = 13 ; "a member of the blades"
	elseif akRef.isInFaction(VigilantOfStendarrFaction)
		rank = 14 ; "a vigilant of Stendarr"
	elseif akRef.isInFaction(ArenaFaction)
		rank = 15 ; "a member of the Arena"
	elseif akRef.isInFaction(ThalmorFaction)
		rank = 16 ; "a thalmor"
	elseif akRef.isInFaction(NecromancerFaction)
		rank = 17 ; "a necromancer"
	elseif akRef.isInFaction(WarlockFaction)
		rank = 18 ; "a warlock "
	elseif akRef.isInFaction(VampireFaction) || akRef.isInFaction(DLC1VampireCrimeFaction)
		rank = 19 ; "a vampire"
	; Jobs
	elseif akRef.IsInFaction(JobCourtWizardFaction)
		rank = 20 ; Wizard		
	elseif akRef.IsInFaction(JobJusticiar)
		rank = 21 ; Justiciar		
	elseif akRef.IsInFaction(JobPriestFaction)
		rank = 22 ; Priest		
	elseif akRef.IsInFaction(JobOrcWiseWomanFaction)
		rank = 23 ; Wise woman		
	elseif akRef.IsInFaction(JobStewardFaction)
		rank = 24 ; Steward		
	elseif akRef.IsInFaction(JobBardFaction)
		rank = 25 ; Bard		
	elseif akRef.IsInFaction(JobJewelerFaction)
		rank = 26 ; Jeweler	
	elseif akRef.IsInFaction(JobApothecaryFaction)
		rank = 27 ; Apothecary		
	elseif akRef.IsInFaction(JobTailorFaction)
		rank = 28 ; Tailor		
	elseif akRef.IsInFaction(JobMerchantFaction)
		rank = 29 ; Merchant		
	elseif akRef.IsInFaction(CaravanMerchant)
		rank = 30 ; Caravan merchant		
	elseif akRef.IsInFaction(JobFletcherFaction)
		rank = 31 ; Fletcher
	elseif akRef.IsInFaction(JobBlacksmithFaction)
		rank = 32 ; Blacksmith
	elseif akRef.IsInFaction(JobFarmerFaction)
		rank = 33 ; Farmer
	elseif akRef.IsInFaction(HunterFaction)
		rank = 34 ; Hunter
	elseif akRef.IsInFaction(JobLumberjackFaction)
		rank = 35 ; Lumberjack
	elseif akRef.IsInFaction(JobMinerFaction)
		rank = 36 ; Miner
	elseif akRef.isInFaction(GuardDialogueFaction)
		rank = 37 ; "a guard"
	elseif akRef.IsInFaction(FavorJobsBeggarsFaction)
		rank = 38 ; "a beggar"
	elseif akRef.IsInFaction(JobFenceFaction)
		rank = 39 ; "a fence"
	elseif akRef.IsInFaction(JobInnkeeperFaction)
		rank = 40 ; "an inn keeper"
	elseif akRef.IsInFaction(JobInnServer)
		rank = 41 ; "an inn servant"
	elseif akRef.IsInFaction(PlayerHousecarlFaction)
		rank = 42 ; "a housecarl"
	; Creatures
	elseif akRef.isInFaction(HagravenFaction)
		rank = 49 ; Hagraven
	; Wenches
	elseif DOM01.TravellingWenchesFaction != None && akRef.isInFaction(DOM01.TravellingWenchesFaction)
		rank = 50 ; "a travelling wench"
	elseif DOM01.TravellingWenchesJudgementFaction != None && akRef.isInFaction(DOM01.TravellingWenchesJudgementFaction)
		rank = 50 ; "a travelling wench"
	elseif DOM01.TravellingWenchesCollectedFaction != None && akRef.isInFaction(DOM01.TravellingWenchesCollectedFaction)
		rank = 50 ; "a travelling wench"
	elseif DOM01.TravellingWenchesServantFaction != None && akRef.isInFaction(DOM01.TravellingWenchesServantFaction)
		rank = 51 ; "a travelling servant"
	elseif DOM01.TravellingWenchesPatrolFaction != None && akRef.isInFaction(DOM01.TravellingWenchesPatrolFaction)
		rank = 52 ; "a travelling bodyguard"
	; Slaves and slavers
	elseif DOM01.DLC1ThrallFaction != None && akRef.isInFaction(DOM01.DLC1ThrallFaction)
		rank = 60 ; "merely a piece of meat used by vampires"
	elseif DOM01.AygasSlaveTypeFaction != None && akRef.isInFaction(DOM01.AygasSlaveTypeFaction)
		rank = 61 ; "sold as a slave"
	elseif DOM01.HydraSlaveFaction != None && akRef.isInFaction(DOM01.HydraSlaveFaction)
		rank = 62 ; "a slave of Hydra"
	elseif DOM01.VanillaBanditsSlaveFaction != None && akRef.isInFaction(DOM01.VanillaBanditsSlaveFaction)
		rank = 63 ; "a bandit's slave"
	elseif DOM01.VanillaBanditsExSlaveFaction != None && akRef.isInFaction(DOM01.VanillaBanditsExSlaveFaction)
		rank = 64 ; "a fugitive bandit's slave"
	elseif DOMZaz.isZazSlave(akRef) || akRef.IsInFaction(DOMNotPlayerSlaveFaction)
		rank = 65 ; "a slave"
	elseif DOMZaz.isZazSlaver(akRef) || akRef.IsInFaction(DOMNotPlayerSlaverFaction)
		rank = 66 ; "a slaver"
	endif

	;LogTrace("GetJobOfOriginIndex setting rank="+rank)
	if rank < 0
		rank = 0
	endif
	SetJobOfOrigin(akRef,rank)
	;LogTrace("GetJobOfOriginIndex end rank="+rank)
	return rank
EndFunction

int Function GetEmployerOfOriginIndex(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.GenOriginIndex(self, akRef, 2)
		if fast >= 0
			return fast
		endif
	endif
	int rank = akRef.getFactionRank(DOMEmployerOriginFaction)
	if rank >= 0 
		return rank ; Already Set by DOM
	endif
	; Not set 
	if akRef.IsInFaction(DawnstarWhiteHallFaction)
		rank = 1 ; Dawnstar
	elseif akRef.IsInFaction(FalkreathJarlsLonghouseFaction)
		rank = 2 ; Falkreath
	elseif akRef.IsInFaction(MarkarthCastleServantsFaction) || akRef.IsInFaction(MarkarthKeepFaction)
		rank = 3 ; Markarth
	elseif akRef.IsInFaction(MorthalLonghouseFaction)
		rank = 4 ; Morthal
	elseif akRef.IsInFaction(RiftenMistveilKeepFaction)
		rank = 5 ; Riften
	elseif akRef.IsInFaction(SolitudeBluePalaceFaction) || akRef.IsInFaction(SolitudeBluePalaceServants)
		rank = 6 ; Solitude
	elseif akRef.IsInFaction(WhiterunDragonsReachServants)
		rank = 7 ; Whiterun
	elseif akRef.IsInFaction(WindhelmPalace)
		rank = 8 ; Windhelm
	elseif akRef.IsInFaction(WinterholdJarlFaction)
		rank = 9 ; Winterhold
	endif

	if rank < 0
		rank = 0
	endif
	SetEmployerOfOrigin(akRef,rank)
	return rank
EndFunction

int Function GetTrainerOfOriginIndex(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.GenOriginIndex(self, akRef, 3)
		if fast >= 0
			return fast
		endif
	endif
	int rank = akRef.getFactionRank(DOMTrainerOriginFaction)
	if rank >= 0
		return rank ; Already Set by DOM
	endif
	; Not set
	if akRef.IsInFaction(JobTrainerAlterationFaction)
		rank = 1 ; "Alteration Trainer" 
	elseif akRef.IsInFaction(JobTrainerConjurationFaction)
		rank = 2 ; "Conjuration Trainer" 
	elseif akRef.IsInFaction(JobTrainerDestructionFaction)
		rank = 3 ; "Destruction Trainer" 
	elseif akRef.IsInFaction(JobTrainerIllusionFaction)
		rank = 4 ; "Illusion Trainer" 
	elseif akRef.IsInFaction(JobTrainerRestorationFaction)
		rank = 5 ; "Restoration Trainer" 
	elseif akRef.IsInFaction(JobTrainerEnchantingFaction)
		rank = 6 ; "Enchanting Trainer" 
	elseif akRef.IsInFaction(JobTrainerAlchemyFaction)
		rank = 7 ; "Alchemy Trainer" 
	elseif akRef.IsInFaction(JobTrainerSpeechcraftFaction)
		rank = 8 ; "Speechcraft Trainer" 
	elseif akRef.IsInFaction(JobTrainerSmithingFaction)
		rank = 9 ; "Smithing Trainer" 
	elseif akRef.IsInFaction(JobTrainerOneHandedFaction)
		rank = 10 ; "One-Handed Trainer" 
	elseif akRef.IsInFaction(JobTrainerTwoHandedFaction)
		rank = 11 ; "Two-handed Trainer" 
	elseif akRef.IsInFaction(JobTrainerBlockFaction)
		rank = 12 ; "Block Trainer" 
	elseif akRef.IsInFaction(JobTrainerHeavyArmorFaction)
		rank = 13 ; "HeavyArmor Trainer" 
	elseif akRef.IsInFaction(JobTrainerLightArmorFaction)
		rank = 14 ; "Light Armor Trainer" 
	elseif akRef.IsInFaction(JobTrainerMarksmanFaction)
		rank = 15 ; "Marksman Trainer" 
	elseif akRef.IsInFaction(JobTrainerSneakFaction)
		rank = 16 ; "Sneak Trainer" 
	elseif akRef.IsInFaction(JobTrainerLockpickingFaction)
		rank = 17 ; "Lockpicking Trainer" 
	elseif akRef.IsInFaction(JobTrainerPickpocketFaction)
		rank = 18 ; "Pickpocket Trainer" 
	endif

	if rank < 0
		rank = 0
	endif
	SetTrainerOfOrigin(akRef,rank)
	return rank
EndFunction

int Function GetClassOfOriginIndex(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.GenOriginIndex(self, akRef, 4)
		if fast >= 0
			return fast
		endif
	endif
	int rank = akRef.getFactionRank(DOMEmployerOriginFaction)
	if rank >= 0 
		return rank ; Already Set by DOM
	endif
	; Not set 
	actorBase abTarget = akRef.GetLeveledActorBase()
	Class ActorClass  = abTarget.GetClass()
	string classString = ActorClass.GetName() ; +" "+MiscUtil.GetClassEditorID(ActorClass) function doesn't exist

	int n = __classDescs.Length
	int i = 0
	while i < n
		if stringUtil.find(classString,__classDescs[i]) >=0
			;LogTrace("Found class="+__classDescs[i]+" for "+akRef.GetDisplayName()+" class string="+classString)
			rank = i
			i = n ; continue
		endif
		i += 1
	endwhile
	if rank < 0
		rank = 0
	endif
	SetClassOfOrigin(akRef,rank)
	return rank
EndFunction

int Function GetPlaceOfOriginIndex(Actor akRef)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.GenOriginIndex(self, akRef, 0)
		if fast >= 0
			return fast
		endif
	endif
	int rank = akRef.getFactionRank(DOMPlaceOriginFaction)
	if rank >= 0
		return rank ; Already Set by DOM
	endif
	; Not set
	if akRef.isInFaction(CrimeFactionEastMarch)
		rank = 1 ; "the East March"
	elseif akRef.isInFaction(CrimeFactionFalkreath)
		rank = 2 ; "Falkreath"
	elseif akRef.isInFaction(CrimeFactionHaafingar)
		rank = 3 ; "Haafingar"
	elseif akRef.isInFaction(CrimeFactionHjaalmarch)
		rank = 4 ; "Hjaalmarch"
	elseif akRef.isInFaction(CrimeFactionPale)
		rank = 5 ; "the Pale"
	elseif akRef.isInFaction(CrimeFactionReach)
		rank = 6 ; "the Reach"
	elseif akRef.isInFaction(CrimeFactionRift)
		rank = 7 ; "the Rift"
	elseif akRef.isInFaction(CrimeFactionWhiterun)
		rank = 8 ; "Whiterun"
	elseif akRef.isInFaction(CrimeFactionWinterhold)
		rank = 9 ; "Winterhold"
	elseif akRef.isInFaction(CrimeFactionOrcs)
		rank = 10 ; "the Orc Strongholds"
	elseif akRef.isInFaction(CrimeFactionCidhnaMine)
		rank = 11 ; "Cidhna Mine"
	elseif akRef.isInFaction(CrimeFactionGreybeard)
		rank = 12 ; "the Throat of the World"
	elseif akRef.isInFaction(CrimeFactionImperial)
		rank = 13 ; "Cyrodiil"
	elseif akRef.isInFaction(CrimeFactionKhajiitCaravans)
		rank = 14 ; "the Khajiit Caravans"
	endif
	; 0 = Skyrim
	if rank < 0
		rank = 0
	else
		SetPlaceOfOrigin(akRef,rank)
	endif
	return rank
EndFunction

Function LogInfo(string msg)
	Debug.Trace("DOM_Generator: "+msg)
EndFunction

Function LogTrace(string msg)
	if DOM01.verboseMode
		Debug.Trace("DOM_Generator: "+msg)
	endif
EndFunction
