Scriptname DOM_Bathing extends Quest
Import DOM_Util
DOM_Core Property DOMCore Auto
DOM_SEXLAB Property DOMSexlab Auto
DOM_Animator Property DOM_Anim Auto
DOM_Generator Property DOMGenerator Auto
Actor Property PlayerRef Auto
MiscObject Property soap01 Auto
FormList Property DOMWaterList Auto
FormList Property DOMWaterfallList Auto
float Property dirtRegenAmount = 3.0 Auto Hidden
bool Property useDOMDirtiness = true Auto Hidden
bool Property useBiS = false Auto Hidden
bool has_BiS = false
bool has_DaB = false
FormList Property WashPropList Auto Hidden
FormList Property BatheAttemptSpellList Auto Hidden
FormList Property SoapBonusSpellList Auto Hidden
GlobalVariable Property GetSoapyStyleFollowers Auto Hidden
Spell Property DefaultBatheAttemptSpell Auto Hidden
Spell Property SoapyAppearanceSpell Auto Hidden
Spell Property SoapyAppearanceAnimatedSpell Auto Hidden
FormList Property SBBATHSoapItemList Auto Hidden
FormList Property SBSoapSpellFLST Auto Hidden
Keyword Property LocTypeShowerInInns Auto Hidden
GlobalVariable Property SBBATHAnimatedSoapShader Auto Hidden
Spell Property SBBathSoapAnimationSpell Auto Hidden
Spell Property SBBathSoapNoAnimationSpell Auto Hidden
MiscObject Property Dirty_Soap Auto Hidden
Spell Property Dirty_SoapEffectSpell Auto Hidden
Spell Property Dirty_Spell_Clean Auto Hidden
Spell Property Dirty_Spell_Dirt1 Auto Hidden
Spell Property Dirty_Spell_Dirt2 Auto Hidden
Spell Property Dirty_Spell_Dirt3 Auto Hidden
Spell Property Dirty_Spell_Dirt4 Auto Hidden
Spell Property Dirty_Spell_Blood1 Auto Hidden
Spell Property Dirty_Spell_Blood2 Auto Hidden
Spell Property Dirty_Spell_Blood3 Auto Hidden
Spell Property Dirty_Spell_Blood4 Auto Hidden
Spell Property Dirty_NPCEffect_Blood1 Auto Hidden
Spell Property Dirty_NPCEffect_Blood2 Auto Hidden
Spell Property Dirty_NPCEffect_Blood3 Auto Hidden
Spell Property Dirty_NPCEffect_Blood4 Auto Hidden
Spell Property Dirty_NPCEffect_Blood5 Auto Hidden
Spell Property Dirty_CleaningEffect Auto Hidden
Spell Property Dirty_CleaningEffectNPC Auto Hidden
Spell Property WetReduxSpell Auto Hidden
Form Property WetReduxMCM Auto Hidden
Spell Property WetNPCDripSpell Auto Hidden
Function Initialize()
EndFunction
Function CleanDirt(Actor akTarget, bool UsedSoap)
EndFunction
MiscObject Function TryFindWashProp(Actor akTarget)
	Return None
EndFunction
bool Function ApplyWashPropSpell(Actor akTarget, MiscObject Soap)
	Return False
EndFunction
Function ApplySoapBonus(Actor akTarget, MiscObject Soap)
EndFunction
Function SetSoapy(Actor akTarget)
EndFunction
Function SetUnsoapy(Actor akTarget)
EndFunction
int Function BiS_GetWashPropIndex(MiscObject Soap)
	Return 0
EndFunction
int Function KiC_GetWashPropIndex(MiscObject Soap)
	Return 0
EndFunction
Function SetWetness(Actor akTarget, float value)
EndFunction
Function SetDrip(Actor akTarget)
EndFunction
Function UnsetDrip(Actor akTarget)
EndFunction
bool Function isInWaterfall(Actor akTarget)
	Return False
EndFunction
bool Function isInShower(Actor akTarget)
	Return False
EndFunction
bool Function isInWater(Actor akTarget)
	Return False
EndFunction
Function DoNPCShower(Actor akTarget)
EndFunction
Function HudNotification(string msg)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
