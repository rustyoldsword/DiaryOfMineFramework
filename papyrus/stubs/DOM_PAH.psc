Scriptname DOM_PAH extends Quest
Import Utility
Import DOM_Util
Import DOM_EquipUtil
GlobalVariable Property DOM_HasPAH Auto
PAHCore Property PAH Auto Hidden
PahNpcEval Property NpcEval Auto Hidden
PAH_MCM Property Config Auto Hidden
PAHPunishmentRapeScript Property PAHPRS Auto Hidden
Faction Property PAHECanBeCaptured Auto Hidden
Faction Property PAHECanNotBeCaptured Auto Hidden
Faction Property PAHPosing Auto Hidden
Faction Property PAHAASandboxAtTarget Auto Hidden
Faction Property PAHAAStandStill Auto Hidden
Faction Property PAHBECleaning Auto Hidden
Faction Property PAHBECalm Auto Hidden
Faction Property PAHBETied Auto Hidden
Faction Property PAHBEFollowing Auto Hidden
Faction Property PAHBEFleeingAndCowering Auto Hidden
Faction Property PAHBERunningAway Auto Hidden
Faction Property PAHBEWaiting Auto Hidden
Faction Property PAHBEWaitingAtLeashPoint Auto Hidden
Faction Property PAHSubmission Auto Hidden
Faction Property PAHHumiliation Auto Hidden
Faction Property PAHResignation Auto Hidden
Faction Property PAHTrainFear Auto Hidden
Faction Property PAHTrainRespect Auto Hidden
Faction Property PAHTrainAnger Auto Hidden
Faction Property PAHTrainPose Auto Hidden
Faction Property PAHTrainCombat Auto Hidden
Faction Property PAHTrainHouse Auto Hidden
Faction Property PAHTrainWork Auto Hidden
Faction Property PAHTrainSex Auto Hidden
Faction Property PAHTrainAnal Auto Hidden
Faction Property PAHTrainOral Auto Hidden
Faction Property PAHTrainVaginal Auto Hidden
Faction Property PAHPlayerSlaveFaction Auto Hidden
Faction Property PAHSlaveFaction Auto Hidden
Faction Property PAHSlaverFaction Auto Hidden
Faction Property PAHCleaned Auto Hidden
Faction Property PAHRegionFaction Auto Hidden
Faction Property PAHJobsFaction Auto Hidden
Faction Property PAHEmployersFaction Auto Hidden
Faction Property PAHTrainersFaction Auto Hidden
Faction Property PAHMoodAfraid Auto Hidden
Faction Property PAHMoodAngry Auto Hidden
Faction Property PAHMoodJustCaptured Auto Hidden
Faction Property PAHMoodNeutral Auto Hidden
Faction Property PAHRespectful Auto Hidden
Faction Property PAHNaked Auto Hidden
Faction Property PAHHasBeenPlayerSlaveFaction Auto Hidden
Keyword Property PAHCountsAsNaked Auto Hidden
Keyword Property PAHRestraint Auto Hidden
Keyword Property PAHRestraintLeash Auto Hidden
Keyword Property PAHPainGiver Auto Hidden
Weapon Property PAHWhip Auto Hidden
Quest Property DOMPAHQuest Auto Hidden
DOM_PlayerAlias Property DOMPlayerAlias Auto
DOM_Core Property DOM01 Auto
DOM_SlaveManager Property DOM02 Auto
DOM_Diary Property DOM04 Auto
DOM_Keys Property DOMKeys Auto
DOM_Generator Property DOMGenerator Auto
Actor Property PlayerRef Auto
Faction Property PlayerFollowerFaction Auto
Faction Property DOMActionTied Auto
Faction Property DOMMoodLoyal Auto
Faction Property DOMMoodInlove Auto
Faction Property DOMTrainSubmission Auto
Faction Property DOMTrainFear Auto
Faction Property DOMTrainHumiliation Auto
Faction Property DOMTrainAnger Auto
Faction Property DOMTrainResignation Auto
Faction Property DOMTrainRespect Auto
Faction Property DOMTrainCombat Auto
Faction Property DOMTrainPose Auto
Faction Property DOMTrainSex Auto
Faction Property DOMTrainAnal Auto
Faction Property DOMTrainOral Auto
Faction Property DOMTrainVaginal Auto
Faction Property DOMSkillEnforcer Auto
Faction Property DOMSkillPersuader Auto
Faction Property DOMSkillDepraver Auto
Faction Property DOMSkillPredator Auto
Faction Property DOMSkillSlaver Auto
Faction Property DOMSkillDeceiver Auto
Faction Property DOMNbChatFeelings Auto
Faction Property DOMLoveDesire Auto
Faction Property DOMLoyalWorship Auto
Faction Property DOMLoveFascination Auto
Faction Property DOMLoyalAbsolution Auto
Faction Property DOMLoyalDevotion Auto
Faction Property DOMLoveAdmiration Auto
Faction Property DOMTrainHouse Auto
Faction Property DOMTrainWorking Auto
Message Property DOMPAHStatusMessage Auto
Message Property DOMPAHAbuseMessage Auto
Message Property DOMPAHOrderMessage Auto
Message Property DOMPAHPoseMessage Auto
Message Property DOMPAHTrainingMessage Auto
bool Property standalone_mode = false Auto Hidden
Function Initialize()
EndFunction
Function EnsurePAHStarted()
EndFunction
bool Function hasPAH()
	Return False
EndFunction
bool Function IsWeaponWhip(Form akSource)
	Return False
EndFunction
bool Function isPAHPlayerSlave(Actor akTarget)
	Return False
EndFunction
bool Function isPAHSlave(Actor akTarget)
	Return False
EndFunction
bool Function isPAHSlaver(Actor akTarget)
	Return False
EndFunction
bool Function isTied(Actor akTarget)
	Return False
EndFunction
int Function GetSlaveCount()
	Return 0
EndFunction
int[] Function GetActorData(Actor akTarget)
	Return None
EndFunction
Function SetActorData(Actor akTarget, int[] data)
EndFunction
bool Function WasAlreadyCleaned(Actor akTarget)
	Return False
EndFunction
Function ResetAlreadyCleaned(Actor akTarget)
EndFunction
bool Function wornDwarvenDevice(Actor akTarget)
	Return False
EndFunction
bool Function wornRestraint(Actor akTarget)
	Return False
EndFunction
bool Function wornLeash(Actor akTarget)
	Return False
EndFunction
bool Function HasCountAsNaked(Actor akTarget)
	Return False
EndFunction
bool Function hasKeywordRestraint(Form the_form)
	Return False
EndFunction
Function SetHasBeenPlayerSlaveFaction(Actor akTarget,int rank)
EndFunction
Function CleanFactions(Actor akTarget)
EndFunction
Function SetTrainingFactionsToPAH(Actor akTarget)
EndFunction
Function SetMainTrainingFactionsToPAH(Actor akTarget)
EndFunction
Function SetSexTrainingFactionsToPAH(Actor akTarget)
EndFunction
Function SetTrainingFactionsToDOM(Actor akTarget)
EndFunction
Faction Function GetPAHTrainingFactionByIndex(int index)
	Return None
EndFunction
float Function GetDOMTrainingByIndex(DOM_Actor slaveActor, int index)
	Return 0.0
EndFunction
float Function GetPAHTrainingByIndex(PAHSlave slaveAlias, int index)
	Return 0.0
EndFunction
Function CheckTrainingFactions(Actor akTarget)
EndFunction
bool Function hasSubmissionTraining(Actor akRef)
	Return False
EndFunction
bool Function hasFearTraining(Actor akRef)
	Return False
EndFunction
bool Function hasHumiliationTraining(Actor akRef)
	Return False
EndFunction
bool Function hasAngerTraining(Actor akRef)
	Return False
EndFunction
bool Function hasResignationTraining(Actor akRef)
	Return False
EndFunction
bool Function hasRespectTraining(Actor akRef)
	Return False
EndFunction
bool Function hasPoseTraining(Actor akRef)
	Return False
EndFunction
bool Function hasOralTraining(Actor akRef)
	Return False
EndFunction
bool Function hasVaginalTraining(Actor akRef)
	Return False
EndFunction
bool Function hasAnalTraining(Actor akRef)
	Return False
EndFunction
bool Function hasCombatTraining(Actor akRef)
	Return False
EndFunction
bool Function hasHouseTraining(Actor akRef)
	Return False
EndFunction
bool Function hasWorkTraining(Actor akRef)
	Return False
EndFunction
int Function GetSubmissionFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetFearFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetHumiliationFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetAngerFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetResignationFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetRespectFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetSexFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetAnalFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetOralFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetVaginalFromFaction(Actor akTarget)
	Return 0
EndFunction
int Function GetPoseFromFaction(Actor akTarget)
	Return 0
EndFunction
float Function GetHouseFromFaction(Actor akTarget)
	Return 0.0
EndFunction
float Function GetWorkFromFaction(Actor akTarget)
	Return 0.0
EndFunction
float Function GetCombatFromFaction(Actor akTarget)
	Return 0.0
EndFunction
int Function GetTrainingFromFaction(Actor akTarget, Faction PAH_faction, Faction DOM_Faction)
	Return 0
EndFunction
float Function GetTrainingFromFactionFloat(Actor akTarget, Faction PAH_faction, Faction DOM_Faction)
	Return 0.0
EndFunction
string Function GetBehaviourMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetFeelingsMessage(Actor akTarget)
	Return ""
EndFunction
Function ClearCanBeCaptured(Actor akTarget)
EndFunction
Function ClearCanNotBeCaptured(Actor akTarget)
EndFunction
Function SetCanNotBeCaptured(Actor akTarget)
EndFunction
bool Function IsLeashPointInUse(DOMLeashPointScript objScript)
	Return False
EndFunction
Function ClearLeashPoint(DOMLeashPointScript objScript)
EndFunction
Function SummonSlaves(Actor akTarget, bool only_fighters)
EndFunction
Function SummonRunnerSlaves(Actor akTarget)
EndFunction
Function SummonFollowerSlaves(Actor akTarget)
EndFunction
bool Function IsToBeSummoned(PAHSlave akSlave, bool only_fighters)
	Return False
EndFunction
string Function GetMoodMessage(Actor akTarget)
	Return ""
EndFunction
string Function GetMood(Actor akTarget)
	Return ""
EndFunction
Function WriteSaveFaction(string fileName)
EndFunction
Function WriteConfig(string fileName)
EndFunction
Function ReadConfig(string fileName)
EndFunction
Function TransferPAHEtoDOM(bool do_capture)
EndFunction
Function TransferDOMtoPAHE()
EndFunction
PAHActorAlias Function GetSlaveAlias(Actor akTarget)
	Return None
EndFunction
Function ReleaseSlave(Actor akTarget)
EndFunction
Function ClearFactions(Actor akTarget)
EndFunction
Function ClearTrainingFactions(Actor akTarget, bool is_slave)
EndFunction
DOM_Actor Function MoveActorToDOM(PAHSlave akSlave)
	Return None
EndFunction
Function MoveActorToPAH(DOM_Actor akSlave)
EndFunction
Function SetMoodFaction(Actor akTarget, string mood)
EndFunction
string Function TrainingMessage(Actor akTarget)
	Return ""
EndFunction
string Function MoodInfo(Actor akTarget)
	Return ""
EndFunction
Float Function ChanceRecoverAngry(PAHSlaveMind akMind)
	Return 0.0
EndFunction
Float Function ChanceRecoverAfraid(PAHSlaveMind akMind)
	Return 0.0
EndFunction
Float Function ChanceRunaway(PAHSlaveMind akMind)
	Return 0.0
EndFunction
Function InfoTrainingAdjust(Actor aktarget, Faction contrl_faction, int hexaco_trait, float base_amount, int rel)
EndFunction
Function TrainSubmission(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainFear(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainHumiliation(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainAnger(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainResignation(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainRespect(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainVaginal(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainAnal(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainOral(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainPose(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainHouse(PAHSlave sl_alias, float base_amount)
EndFunction
Function TrainCombat(PAHSlave sl_alias, float base_amount)
EndFunction
Int Function ShowOrderMenu(Actor akTarget)
	Return 0
EndFunction
Int Function ShowAbuseMenu(Actor akTarget)
	Return 0
EndFunction
Int Function ShowStatusMenu(Actor akTarget)
	Return 0
EndFunction
Int Function ShowTrainingMenu(Actor akTarget)
	Return 0
EndFunction
Int Function ShowPoseMenu()
	Return 0
EndFunction
Function DoRapeMenu(Actor akTarget)
EndFunction
Function DoSexMenu(Actor akTarget)
EndFunction
Function DoEquipInventory(Actor akTarget)
EndFunction
Function DoStrip(Actor akTarget)
EndFunction
Function DoBeRespectful(Actor akTarget)
EndFunction
Function DoCleanTheMess(Actor akTarget)
EndFunction
Function DoFightForMe(Actor akTarget)
EndFunction
Function DoPunish(Actor akTarget)
EndFunction
Function DoScold(Actor akTarget)
EndFunction
Function DoOpenInventory(Actor akTarget)
EndFunction
Function DoFollowMe(Actor akTarget)
EndFunction
Function DoStandStill(Actor akTarget)
EndFunction
Function DoWaitHere(Actor akTarget)
EndFunction
Function DoUntie(Actor akTarget)
EndFunction
Function DoTieUp(Actor akTarget)
EndFunction
Function DoFavor(Actor akTarget)
EndFunction
Function DoOrderMenu(Actor akTarget)
EndFunction
Function DoStatusMenu(Actor akTarget)
EndFunction
Function DoTrainingMenu(Actor akTarget)
EndFunction
Function DoAbuseMenu(Actor akTarget)
EndFunction
Function DoPoseMenu(Actor akTarget)
EndFunction
Function DoPutInBagActor(DOM_BurlapSack objSack, Actor akTarget)
EndFunction
Function DoTakeOutOfBag(DOM_BurlapSack objSack, Actor akTarget, bool do_tieup)
EndFunction
Function SetBehaviour(Actor akTarget, string beh)
EndFunction
Function AllStandstill()
EndFunction
Function AllWaitHere()
EndFunction
Function AllFollow()
EndFunction
Function AllFollowIfPosing()
EndFunction
Function AllBeRespectful()
EndFunction
Function AllFightForMe()
EndFunction
Function AllDontFightForMe()
EndFunction
Function AllPose(int imenu)
EndFunction
Function AllKneel()
EndFunction
Function AllAttention()
EndFunction
bool Function IsWeaponPunishment(Form akSource)
	Return False
EndFunction
Function HudNotification(string msg)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
