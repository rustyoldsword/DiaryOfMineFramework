Scriptname DOM_ZAZ extends Quest
Import Utility
Import DOM_Util
DOM_Core Property DOMCore Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAD Property DOMZad Auto
Form Property ZAZ = None Auto Hidden
Faction Property zbfFactionSlave Auto Hidden
Faction Property zbfFactionSlaver Auto Hidden
Faction Property zbfFactionGagAllowTalk Auto Hidden
bool Property has_GSPoses = false Auto Hidden
bool Property has_Zaz = false Auto Hidden
int Property ZazVersion = -1 Auto Hidden
PHHSHStorageFunctions Property HSHStorage Auto Hidden
aygasCoreScript Property AYGASCore Auto Hidden
Faction Property DOMHasCuffsFront Auto
Faction Property DOMHasCuffsBack Auto
Faction Property DOMHasCuffsCrossed Auto
Faction Property DOMHasCuffsBoxTied Auto
Faction Property DOMHasArmsDeviceYoke Auto
Faction Property DOMHasArmsDeviceBinder Auto
Faction Property DOMHasArmsDevice Auto
Faction Property DOMHasMouthGag Auto
Faction Property DOMHasBlindfold Auto
Faction Property DOMHasPlugAnal Auto
Faction Property DOMHasPlugVaginal Auto
Faction Property DOMHasRestrains Auto
Keyword Property DOMPunisher Auto
Form Property zbfCuffsRope01 Auto Hidden
Form Property zbfCuffsIronBlack Auto Hidden
Form Property zbfCuffsSimpleBlack Auto Hidden
Form Property zbfCuffsLeatherBinds Auto Hidden
Form Property zbfCuffsGSB Auto Hidden
Form Property zbfYokeWood01 Auto Hidden
Form Property zbfYokeMetal03 Auto Hidden
Form Property zbfWristArmbinder01 Auto Hidden
Form Property zbfWristSimpleBlack Auto Hidden
Form Property zbfGagCloth Auto Hidden
Form Property zbfGagBall Auto Hidden
Form Property zbfGagRing Auto Hidden
Form Property zbfGagLog Auto Hidden
Form Property zbfBlindHood Auto Hidden
Form Property zbfBlindfold Auto Hidden
Form Property zbfBlindfoldMesh Auto Hidden
Form Property zbfBlindfold1 Auto Hidden
Form Property zbfBlindfold2 Auto Hidden
Form Property zbfBlindfold4 Auto Hidden
Form Property zbfCollarIronBlack Auto hidden
Form Property zbfCollarSimpleBlack Auto hidden
Form Property zbfCollarRope01 Auto hidden
Form Property zbfAnkleSteel Auto hidden
Form Property zbfAnkleIronHDT Auto hidden
Form Property DOMCane Auto
Form Property zbfWeaponCane Auto hidden
Form Property zbfWeaponBrandingIron Auto Hidden
Form Property DLC1ClothesMothPriestBlindfold Auto
Form Property ExecutionHood Auto
Form Property ExecutionHoodDB Auto
Form Property ArmorGag Auto
Form Property DOMCuffsRope Auto
Form Property DOMWristRope Auto
Form Property PrisonerCuffs1 Auto
Form Property PrisonerCuffs2 Auto
Form Property PrisonerCuffs3 Auto
Form Property DOMPlugAnal Auto
Form Property DOMPlugVaginal Auto
Form Property DOMYokeWood Auto
Form Property DOMWristArmbinder Auto
Form Property DOMIronSlaveCollar Auto
Form Property DOMSlaveCollar Auto
Keyword Property DOMIsDevice Auto
Keyword Property DOMWornDevice Auto
Keyword Property DOMWornBlindfold Auto
Keyword Property DOMWornGag Auto
Keyword Property DOMWornWrist Auto
Keyword Property DOMWornYoke Auto
Keyword Property DOMWornArmbinder Auto
Keyword Property DOMWornCollar Auto
Keyword Property DOMWornCollarLeash Auto
Keyword Property DOMWornPlugAnal Auto
Keyword Property DOMWornPlugVaginal Auto
Keyword Property DOMNotDevice Auto
Keyword Property DOMWornCuffsFront Auto
Keyword Property DOMWornCuffsCrossed Auto
Keyword Property DOMWornCuffsBack Auto
Keyword Property DOMWornCuffsBoxtied Auto
Keyword Property PHHSHWornAnkles Auto Hidden
Keyword Property PHHSHWornDevice Auto Hidden
Keyword Property PHHSHWornWrist Auto Hidden
Keyword Property PHHSHWornYoke Auto Hidden
Keyword Property sbcWornWrist Auto Hidden
Keyword Property sbcWornCollar Auto Hidden
Keyword Property SBC_KeywordCrawler Auto Hidden
KeyWord Property DefeatWornDevice Auto hidden
KeyWord Property DefeatActive Auto hidden
Keyword Property zbfFurniture Auto Hidden
Keyword Property zpfFurniture Auto Hidden
Keyword Property zbfWornDevice Auto Hidden
Keyword Property zbfWornWrist Auto Hidden
Keyword Property zbfWornEffectWrist Auto Hidden
Keyword Property zbfWornBelt Auto Hidden
Keyword Property zbfWornYoke Auto Hidden
Keyword Property zbfWornElbows Auto Hidden
Keyword Property zbfWornGag Auto Hidden
Keyword Property zbfWornCollar Auto Hidden
Keyword Property zbfWornBlindfold Auto Hidden
Keyword Property zbfWornAnalPlug Auto Hidden
Keyword Property zbfWornVaginalPlug Auto Hidden
Keyword Property zbfEffectNoSprint Auto Hidden
Keyword Property zbfEffectSlowMove Auto Hidden
Keyword Property zbfWeaponPunishment Auto Hidden
Keyword Property zbfEffectNoMove Auto Hidden
Keyword Property zbfFurnitureMilk1 Auto Hidden
Keyword Property zbfFurnitureMilk2 Auto Hidden
Keyword Property zbfFurnitureHasAnkleCuffs Auto Hidden
Keyword Property zbfFurnitureHasWristCuffs Auto Hidden
Keyword Property zbfFurnitureWhippingDevice Auto Hidden
Keyword Property zbfFurnitureWhippingFromFront Auto Hidden
Keyword Property dse_dm_KeywordFurniture Auto Hidden
Formlist Property ZazFurnitureList Auto Hidden
Formlist Property DOMFurnitureList Auto
Formlist Property DOMMilkMachineList Auto
Furniture Property ZbfPole Auto Hidden
Furniture Property ZbfPoleBondage01 Auto Hidden
Furniture Property ZbfCrossRoped01 Auto Hidden
Furniture Property ZbfTCross Auto Hidden
Furniture Property ZbfXCross Auto Hidden
Furniture Property ZbfXCrossDark Auto Hidden
Furniture Property ZbfHPillory Auto Hidden
Furniture Property ZbfPillory01 Auto Hidden
Furniture Property ZbfStocks Auto Hidden
Furniture Property ZbfStocksKneeling Auto Hidden
Furniture Property ZbfRack Auto Hidden
Furniture Property ZbfWheel Auto Hidden
Furniture Property ZbfWheel01 Auto Hidden
Furniture Property ZbfPony Auto Hidden
Furniture Property ZbfPonyWoodenPony01 Auto Hidden
Furniture Property ZbfBondagePoleStanding Auto Hidden
Furniture Property zbfTorturePole02 Auto Hidden
Furniture Property zbfXCrossOutdoor Auto Hidden
Furniture Property zbfTreeBondage02 Auto Hidden
Furniture Property zbfHorizontalPole Auto Hidden
Furniture Property ZbfVerticalStocks Auto Hidden
Furniture Property ZbfPillorySingle Auto Hidden
Furniture Property DOMHPillory Auto
Furniture Property DOMRack Auto
Furniture Property DOMCrossRoped Auto
Furniture Property DOMXCross Auto
Furniture Property DOMMultipleRestraintWall Auto
MagicEffect Property ZbfCrawlingEffect Auto Hidden
Spell Property ZbfBondageSpell Auto Hidden
Function Initialize()
EndFunction
Function RemoveKeywordOnForm(Form the_form, Keyword the_keyword)
EndFunction
Function AddKeywordToForm(Form the_form, Keyword the_keyword)
EndFunction
Function AddFormToList(FormList the_list, Form the_form)
EndFunction
Function RemoveFormFromList(FormList the_list, Form the_form)
EndFunction
Function UpdateFurnitureList()
EndFunction
Formlist Function GetFurnitureList()
	Return None
EndFunction
Formlist Function GetMilkFurniture()
	Return None
EndFunction
Furniture Function GetFurniturePoleStanding()
	Return None
EndFunction
Furniture Function GetFurniturePole()
	Return None
EndFunction
Furniture Function GetFurniturePole02()
	Return None
EndFunction
Furniture Function GetFurniturePoleCross()
	Return None
EndFunction
Furniture Function GetFurnitureTree()
	Return None
EndFunction
Furniture Function GetFurnitureStake()
	Return None
EndFunction
Furniture Function GetFurniturePoleMulti()
	Return None
EndFunction
Furniture Function GetFurnitureTCross01()
	Return None
EndFunction
Furniture Function GetFurnitureTCross()
	Return None
EndFunction
Furniture Function GetFurnitureXCross()
	Return None
EndFunction
Furniture Function GetFurnitureXCrossDark()
	Return None
EndFunction
Furniture Function GetFurnitureHPillory()
	Return None
EndFunction
Furniture Function GetFurniturePillory()
	Return None
EndFunction
Furniture Function GetFurniturePillorySingle()
	Return None
EndFunction
Furniture Function GetFurnitureStocksX()
	Return None
EndFunction
Furniture Function GetFurnitureStocks()
	Return None
EndFunction
Furniture Function GetFurnitureStocksKneeling()
	Return None
EndFunction
Furniture Function GetFurnitureRack()
	Return None
EndFunction
Furniture Function GetFurnitureWheel()
	Return None
EndFunction
Furniture Function GetFurnitureWheel01()
	Return None
EndFunction
Furniture Function GetFurniturePony()
	Return None
EndFunction
Furniture Function GetFurnitureWoodenHorse()
	Return None
EndFunction
Form Function GetIronCollar()
	Return None
EndFunction
Form Function GetSimpleCollar()
	Return None
EndFunction
Form Function GetRopeCollar()
	Return None
EndFunction
Form Function GetAnkleSteel()
	Return None
EndFunction
Form Function GetAnkleIron()
	Return None
EndFunction
Form Function GetWeaponCane()
	Return None
EndFunction
Form Function GetSmartCuffs(float smartness)
	Return None
EndFunction
Form Function GetCuffsRope()
	Return None
EndFunction
Form Function GetWristRope()
	Return None
EndFunction
Form Function GetCuffsRope01()
	Return None
EndFunction
Form Function GetCuffsPrisoner()
	Return None
EndFunction
Form Function GetCuffsIron()
	Return None
EndFunction
Form Function GetCuffsSimple()
	Return None
EndFunction
Form Function GetCuffsLeather()
	Return None
EndFunction
Form Function GetCuffsGSB()
	Return None
EndFunction
Form Function GetYoke()
	Return None
EndFunction
Form Function GetArmbinder()
	Return None
EndFunction
Form Function GetGag(int idx)
	Return None
EndFunction
Form Function GetGagCloth()
	Return None
EndFunction
Form Function GetGagBall()
	Return None
EndFunction
Form Function GetGagRing()
	Return None
EndFunction
Form Function GetGagLog()
	Return None
EndFunction
Form Function GetBlindfold0()
	Return None
EndFunction
Form Function GetBlindfold1()
	Return None
EndFunction
Form Function GetBlindfold2()
	Return None
EndFunction
Form Function GetBlindfold4()
	Return None
EndFunction
Form Function GetBlindHood()
	Return None
EndFunction
Form Function GetBlindHoodDB()
	Return None
EndFunction
Form Function GetBlindHood1()
	Return None
EndFunction
Form Function GetBlindfoldMesh()
	Return None
EndFunction
Form Function GetBlindfold(int idx)
	Return None
EndFunction
Form Function GetPlugAnal()
	Return None
EndFunction
Form Function GetPlugVaginal()
	Return None
EndFunction
bool Function hasPlugAnal(Actor akRef)
	Return False
EndFunction
bool Function hasPlugVaginal(Actor akRef)
	Return False
EndFunction
bool Function hasBlindfold(Actor akRef)
	Return False
EndFunction
bool Function hasMouthGag(Actor akRef)
	Return False
EndFunction
bool Function hasCuffs(Actor akRef)
	Return False
EndFunction
bool Function wornLeash(Actor akRef)
	Return False
EndFunction
bool Function wornBlindfold(Actor akRef)
	Return False
EndFunction
bool Function wornplugAnal(Actor akRef)
	Return False
EndFunction
bool Function wornplugVaginal(Actor akRef)
	Return False
EndFunction
bool Function wornCollar(Actor akRef)
	Return False
EndFunction
bool Function wornGag(Actor akRef)
	Return False
EndFunction
bool Function wornWrist(Actor akRef)
	Return False
EndFunction
bool Function wornDevice(Actor akRef)
	Return False
EndFunction
bool Function HasDefeat()
	Return False
EndFunction
bool Function HasDefeatWornDevice(Form the_form)
	Return False
EndFunction
bool Function HasDefeatActive(Actor akRef)
	Return False
EndFunction
bool Function IsFurnitureDevice(ObjectReference furni)
	Return False
EndFunction
bool Function IsMilkingDevice(ObjectReference furni)
	Return False
EndFunction
bool Function IsWeaponPunishment(Form the_form)
	Return False
EndFunction
bool Function hasKeywordNoMove(Form the_form)
	Return False
EndFunction
bool Function hasKeywordGag(Form the_form)
	Return False
EndFunction
bool Function hasKeywordBlindfold(Form the_form)
	Return False
EndFunction
bool Function hasKeywordPlugAnal(Form the_form)
	Return False
EndFunction
bool Function hasKeywordPlugVaginal(Form the_form)
	Return False
EndFunction
bool Function hasKeywordWrist(Form the_form)
	Return False
EndFunction
bool Function hasKeywordYoke(Form the_form)
	Return False
EndFunction
bool Function isYoked(Form the_form)
	Return False
EndFunction
bool Function hasKeywordArmbinder(Form the_form)
	Return False
EndFunction
bool Function hasKeywordCollar(Form the_form)
	Return False
EndFunction
bool Function hasKeywordDevice(Form the_form)
	Return False
EndFunction
bool Function hasKeywordFurniture(Form the_form)
	Return False
EndFunction
bool Function IsItemRestraint(Form the_form)
	Return False
EndFunction
bool Function IsItemOffsetOnlyRestraint(Form the_form)
	Return False
EndFunction
bool Function IsItemCollar(Form the_form)
	Return False
EndFunction
bool Function IsItemMouthGag(Form the_form)
	Return False
EndFunction
bool Function IsItemBlindfold(Form the_form)
	Return False
EndFunction
bool Function IsItemPlugAnal(Form the_form)
	Return False
EndFunction
bool Function IsItemPlugVaginal(Form the_form)
	Return False
EndFunction
bool Function IsItemDevice(Form the_form)
	Return False
EndFunction
bool function wornCuffsFront(Actor akRef)
	Return False
Endfunction
bool function wornCuffsCrossed(Actor akRef)
	Return False
Endfunction
bool function wornCuffsBack(Actor akRef)
	Return False
Endfunction
bool function wornCuffsBoxtied(Actor akRef)
	Return False
Endfunction
bool function wornBelt(Actor akRef)
	Return False
Endfunction
bool function wornEffectWrist(Actor akRef)
	Return False
Endfunction
bool function wornYoke(Actor akRef)
	Return False
Endfunction
bool function wornArmbinder(Actor akRef)
	Return False
Endfunction
bool function wornRestraints(Actor akRef)
	Return False
Endfunction
bool function wornCuffs(Actor akRef)
	Return False
Endfunction
bool function wornMouthGag(Actor akRef)
	Return False
Endfunction
Form Function FindCuffs(Actor akTarget)
	Return None
EndFunction
Form Function GetEquippedCuffs(Actor akTarget)
	Return None
EndFunction
Form Function GetEquippedCollar(Actor akTarget)
	Return None
EndFunction
Form Function GetEquippedGag(Actor akRef)
	Return None
EndFunction
Form Function GetEquippedBlindfold(Actor akRef)
	Return None
EndFunction
bool Function isZazSlave(Actor akRef)
	Return False
EndFunction
Function AddToZazSlaveFaction(Actor akRef)
EndFunction
Function RemoveFromZazSlaveFaction(Actor akRef)
EndFunction
bool Function isZazSlaver(Actor akRef)
	Return False
EndFunction
Function AddToZazSlaverFaction(Actor akRef)
EndFunction
Function RemoveFromZazSlaverFaction(Actor akRef)
EndFunction
Function AddToZazGagAllowTalkFaction(Actor akRef)
EndFunction
Function RemoveFromZazGagAllowTalkFaction(Actor akRef)
EndFunction
Function DSE_DM_RegisterActor(Actor Who, dse_dm_ActiPlaceableBase Device, Int Slot)
EndFunction
Function DSE_DM_UnregisterActor(Actor Who, dse_dm_ActiPlaceableBase Device, Int Slot)
EndFunction
Function RegisterForSexLab()
EndFunction
Function WriteConfig(string fileName)
EndFunction
Function ReadConfig(string fileName)
EndFunction
Function AddExtFurniture()
EndFunction
Function LogTrace(string msg)
EndFunction
Function LogInfo(string msg)
EndFunction
