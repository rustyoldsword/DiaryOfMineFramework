Scriptname DOM_SlaverManager extends Quest
Import Utility
Import DOM_Util
DOM_PlayerAlias Property DOMPlayerAlias Auto
DOM_Generator Property DOMGenerator Auto
DOM_Core Property DOM01 Auto
DOM_Diary Property DOM04 Auto
DOM_PAH Property DOMPAH Auto
Actor Property PlayerRef Auto
ReferenceAlias Property EssentialRef Auto
Faction Property PlayerFollowerFaction Auto
Faction Property CurrentFollowerFaction Auto
Faction Property DunPlayerAllyFaction Auto
Faction Property DOMActorFaction Auto
Faction Property DOMActorExcludedFaction Auto
Faction Property DOMBeingCaptured Auto
Faction Property DOMActorGender Auto
Faction Property DOMNoCleanCrimeFaction Auto
Faction Property DOMActorIndexFaction Auto
Faction Property DOMAliasIndexFaction Auto
Function Initialize()
EndFunction
Function RegisterForBootstrap(string eName)
EndFunction
ReferenceAlias[] Property targetAliases Auto
ReferenceAlias[] Property actorAliases Auto
DOM_Actor[] Property actorArray Auto Hidden
Int Property actorCounter = 0 Auto Hidden
Int Function GetActorCount()
	Return 0
EndFunction
Int Function GetMaxActorCount()
	Return 0
EndFunction
Function ClearAliases(Actor akRef)
EndFunction
DOM_Actor Function GetActorByIndex(int index)
	Return None
EndFunction
DOM_Actor selected_actor = None
DOM_Actor recently_added__actor = None
DOM_Actor Function GetActor(Actor akRef)
	Return None
EndFunction
Actor Function GetActorFromBase(ActorBase akBase)
	Return None
EndFunction
int Function GetActorIndex(Actor akRef)
	Return 0
EndFunction
int Function GetAliasIndex(Actor akRef)
	Return 0
EndFunction
ReferenceAlias Function GetActorAlias(Actor akRef)
	Return None
EndFunction
ReferenceAlias Function GetActorAliasForced(Actor akRef)
	Return None
EndFunction
int Function GetEmptyAliasIndex()
	Return 0
EndFunction
Function MakeActorPlayerFriend(Actor akRef)
EndFunction
DOM_Actor Function Recruit(Actor recruit)
	Return None
EndFunction
DOM_Actor Function AddActor(Actor akRef, bool newActor)
	Return None
EndFunction
Function ReleaseActor(Actor akRef)
EndFunction
Function ReleaseAlias(ReferenceAlias actor_alias)
EndFunction
Function CheckActorAliases()
EndFunction
bool updating_actor_array = false
Function UpdateActorArray(bool do_check)
EndFunction
Function ReCheck()
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
Function HudNotification(string msg)
EndFunction
