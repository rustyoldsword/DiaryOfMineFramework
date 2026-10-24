Scriptname DOM_ZAD extends Quest
bool Property hasZad = false Auto Hidden
ZadLibs Property ZadIntegration Auto Hidden
Form Property zad_plugPrimitiveAnal Auto Hidden
Form Property zad_plugPrimitiveVaginal Auto Hidden
Keyword Property zad_Property_Humiliating Auto Hidden
Keyword Property zad_Lockable Auto Hidden
Keyword Property zad_InventoryDevice Auto Hidden
Keyword Property zad_DeviousBelt Auto Hidden
Keyword Property zad_DeviousCollar Auto Hidden
Keyword Property zad_DeviousGag Auto Hidden
Keyword Property zad_DeviousSuit Auto Hidden
Keyword Property zad_DeviousPetSuit Auto Hidden
Keyword Property zad_DeviousPonySuit Auto Hidden
Keyword Property zad_DeviousStraitJacket Auto Hidden
Keyword Property zad_DeviousPlugVaginal Auto Hidden
Keyword Property zad_DeviousPlugAnal Auto Hidden
Keyword Property zad_DeviousArmbinder Auto Hidden
Keyword Property zad_DeviousArmbinderElbow Auto Hidden
Keyword Property zad_DeviousArmCuffs Auto Hidden
Keyword Property zad_DeviousCuffsFront Auto Hidden
Keyword Property zad_DeviousYoke Auto Hidden
Keyword Property zad_DeviousBlindfold Auto Hidden
Keyword Property zad_DeviousLegCuffs Auto Hidden
Keyword Property zad_DeviousAnkleShackles Auto Hidden
Keyword Property zad_DeviousHobbleSkirt Auto Hidden
Keyword Property zad_EffectForcedWalk Auto Hidden
Keyword Property zad_BoundCombatDisableKick Auto Hidden
Keyword Property dse_PlugAnal Auto Hidden
Keyword Property DOMWornPlugAnal Auto
Keyword Property DOMWornPlugVaginal Auto
Keyword Property DOMNotDevice Auto
Function Initialize()
EndFunction
Function AddkeywordToForm(Form the_form, Keyword the_keyword)
EndFunction
Function RemoveKeywordOnForm(Form the_form, Keyword the_keyword)
EndFunction
Form Function GetPlugAnal()
	Return None
EndFunction
Form Function GetPlugVaginal()
	Return None
EndFunction
bool Function wornGag(Actor akRef)
	Return False
EndFunction
bool Function wornHumiliating(Actor akRef)
	Return False
EndFunction
bool Function wornBlindfold(Actor akRef)
	Return False
EndFunction
bool Function wornWrist(Actor akRef)
	Return False
EndFunction
bool Function wornLeash(Actor akRef)
	Return False
EndFunction
bool Function wornPlugAnal(Actor akRef)
	Return False
EndFunction
bool Function wornPlugVaginal(Actor akRef)
	Return False
EndFunction
bool Function wornDisableKick(Actor akRef)
	Return False
EndFunction
bool Function wornArmbinder(Actor akRef)
	Return False
EndFunction
bool Function wornBelt(Actor akRef)
	Return False
EndFunction
bool Function wornYoke(Actor akRef)
	Return False
EndFunction
bool Function wornStraitJacket(Actor akRef)
	Return False
EndFunction
bool Function wornPetSuit(Actor akRef)
	Return False
EndFunction
bool Function wornDeviousSuit(Actor akRef)
	Return False
EndFunction
bool Function wornCollar(Actor akRef)
	Return False
EndFunction
Form Function GetRenderedDevice(Form the_form)
	Return None
EndFunction
Function ManipulateGenericDevice(Actor slave, Armor item, bool equip)
EndFunction
bool Function wornDevice(Actor akRef)
	Return False
EndFunction
bool Function hasKeywordGag(Form the_form)
	Return False
EndFunction
bool Function hasKeywordWrist(Form the_form)
	Return False
EndFunction
bool Function hasKeywordPlugAnal(Form the_form)
	Return False
EndFunction
bool Function hasKeywordPlugVaginal(Form the_form)
	Return False
EndFunction
bool Function hasKeywordArmbinder(Form the_form)
	Return False
EndFunction
bool Function hasKeywordYoke(Form the_form)
	Return False
EndFunction
bool Function isYoked(Form the_form)
	Return False
EndFunction
bool Function hasKeywordDevice(Form the_form)
	Return False
EndFunction
bool Function hasKeywordInventory(Form the_form)
	Return False
EndFunction
Function LogInfo(string msg)
EndFunction
