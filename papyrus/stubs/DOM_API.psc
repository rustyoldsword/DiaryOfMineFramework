Scriptname DOM_API extends Quest
Import Utility
Import DOM_Util
DOM_Core Property DOM auto
Faction Property DOMActorFaction auto
Faction Property DOMPlayerSlaveFaction auto
Faction Property DOMPlayerSlaverFaction auto
String[] Property validMoods auto
String[] Property TraitNames auto
Function Initialize()
EndFunction
DOM_Actor Function GetDOMActor(Actor akActor)
	Return None
EndFunction
bool Function IsDOMActor(Actor akActor)
	Return False
EndFunction
bool Function IsDOMSlave(Actor akActor)
	Return False
EndFunction
bool Function IsDOMSlaver(Actor akActor)
	Return False
EndFunction
bool Function RegisterDrink(Form the_drink)
	Return False
EndFunction
float[] Function GetHEXACO(Actor akActor)
	Return None
EndFunction
Function SetHEXACOValue(DOM_Actor akActor, int index, float value)
EndFunction
float Function GetHEXACOValue(DOM_Actor akActor, int index)
	Return 0.0
EndFunction
float[] Function GetFACET(Actor akActor)
	Return None
EndFunction
float[] Function GetPRISM(Actor akActor)
	Return None
EndFunction
float[] Function GetAllTraits(Actor akActor)
	Return None
EndFunction
bool Function SetHEXACO(Actor akActor, float[] values)
	Return False
EndFunction
bool Function SetFACET(Actor akActor, float[] values)
	Return False
EndFunction
bool Function SetPRISM(Actor akActor, float[] values)
	Return False
EndFunction
bool Function SetAllTraits(Actor akActor, float[] values)
	Return False
EndFunction
bool Function TryOrgasm(Actor akActor, float base_chance)
	Return False
EndFunction
bool Function ForceOrgasm(Actor akActor)
	Return False
EndFunction
Form Function CreateWheel(int numEntries = 8)
	Return None
EndFunction
Form Function SetWheelEntry(Form menu, int menuIndex, string label, string text, bool enabled = true)
	Return None
EndFunction
Form Function BatchSetupWheelEntries(Form menu, string[] labels, string[] texts, bool[] enabled)
	Return None
EndFunction
DOM_Mind Function GetDOM_MindFromActor(Actor akActor)
	Return None
EndFunction
bool Function InjectArousal(Actor akActor, float value)
	Return False
EndFunction
Function SetDOMMood(Actor akActor, String mood = "empty_minded")
EndFunction
String Function GetDOMMood(Actor akActor)
	Return ""
EndFunction
Function SendNotification(String msg, String section = "", int type = 5, bool start_at_end=false)
EndFunction
Function TrainSubmission(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainFear(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainHumiliation(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainAnger(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainResignation(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainRespect(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainPose(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainHouse(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainCombat(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainVaginal(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainOral(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainAnal(DOM_Actor akActor, float baseAmount)
EndFunction
Function TrainMasterTraining(DOM_Actor akActor, float amount)
EndFunction
Function TrainTrainer(DOM_Actor akActor)
EndFunction
Function TrainCrime(DOM_Actor akActor)
EndFunction
Function TrainSlaveTrainer(DOM_Actor akActor)
EndFunction
Function TrainSexTrainer(DOM_Actor akActor)
EndFunction
Function TrainHouseMistress(DOM_Actor akActor)
EndFunction
Function ForceSubmissionValue(DOM_Actor akActor, float value)
EndFunction
Function ForceFearValue(DOM_Actor akActor, float value)
EndFunction
Function ForceHumiliationValue(DOM_Actor akActor, float value)
EndFunction
Function ForceAngerValue(DOM_Actor akActor, float value)
EndFunction
Function ForceResignationValue(DOM_Actor akActor, float value)
EndFunction
Function ForceRespectValue(DOM_Actor akActor, float value)
EndFunction
Function ForcePoseTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceHouseTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceCombatTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceVaginalTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceOraltrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceAnalTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceMasterTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceCrimeTrainingValue(DOM_Actor akActor, float value)
EndFunction
Function ForceEnforcerSkillValue(DOM_Actor akActor, float value)
EndFunction
Function ForcePredatorSkillValue(DOM_Actor akActor, float value)
EndFunction
Function ForceDepraverSkillValue(DOM_Actor akActor, float value)
EndFunction
Function ForcePersuaderSkillValue(DOM_Actor akActor, float value)
EndFunction
Function ForceSlaverSkillValue(DOM_Actor akActor, float value)
EndFunction
Function ForceDeceiverSkillValue(DOM_Actor akActor, float value)
EndFunction
Function LogTrace(string msg, int severity = 0)
EndFunction
Function LogInfo(string msg, int severity = 0)
EndFunction
