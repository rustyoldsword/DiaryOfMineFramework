Scriptname DOM_Ostim extends Quest
Import OLibrary
Import DOM_Util
Actor Property PlayerRef Auto
DOM_Core Property DOMCore Auto
DOM_API Property domfw Auto
DOM_Sexlab Property DOMSexlab Auto
Faction Property OstimAnimatingFaction Auto Hidden
Faction Property OSAFaction Auto Hidden
GlobalVariable Property DOM_HasOstim Auto
Bool Property IsOCumInstalled = false Auto Hidden
Quest property OCum_API = None Auto Hidden
Function Initialize()
EndFunction
bool Function IsAnimating(Actor akRef)
	Return False
EndFunction
Function ClearCum(Actor akRef)
EndFunction
Function StartOStimWithArrays(Actor[] akActors, DOM_Actor[] akDOMActors, string tags, bool is_punishment = false, string reason_name = "")
EndFunction
Event OnSceneStart(String EventName, String sceneId, Float startThreadID, Form Sender)
EndEvent
Event OnSceneEnd(String EventName, String sceneId, Float endThreadID, Form Sender)
EndEvent
Event OnOrgasm(String EventName, String OrgasmAnimation, Float OrgasmThreadID, Form Sender)
EndEvent
Event OnThreadEnd(String EventName, String StrArgs, Float EndingThreadID, Form Sender)
EndEvent
string Function GetSLTagsToOStim(string sl_tags)
	Return ""
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
