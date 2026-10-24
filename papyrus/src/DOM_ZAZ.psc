Scriptname DOM_ZAZ extends Quest
Import Utility
Import DOM_Util

DOM_Core Property DOMCore Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAD Property DOMZad Auto
zbfSexLab Property ZAZ = None Auto Hidden
Faction Property zbfFactionSlave Auto Hidden
Faction Property zbfFactionSlaver Auto Hidden
Faction Property zbfFactionGagAllowTalk Auto Hidden
bool Property has_GSPoses = false Auto Hidden
bool Property has_Zaz = false Auto Hidden
int Property ZazVersion = -1 Auto Hidden

PHHSHStorageFunctions Property HSHStorage Auto Hidden
aygasCoreScript Property AYGASCore Auto Hidden

; DOM Factions
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

; Restraint
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

; Weapons
Form Property DOMCane Auto
Form Property zbfWeaponCane Auto hidden
Form Property zbfWeaponBrandingIron Auto Hidden

; Skyrim defaults
Form Property DLC1ClothesMothPriestBlindfold Auto
Form Property ExecutionHood Auto
Form Property ExecutionHoodDB Auto
Form Property ArmorGag Auto
Form Property DOMCuffsRope Auto  
Form Property DOMWristRope Auto  
Form Property PrisonerCuffs1 Auto ; IsWorn("Skyrim.esm"|0x103941) PrisonerCuffs
Form Property PrisonerCuffs2 Auto ; IsWorn("Skyrim.esm"|0x10E039) PrisonerCuffsPlayer    - Used for Front cuffs crossed
Form Property PrisonerCuffs3 Auto ; IsWorn("Skyrim.esm"|0x10E2D8) PrisonerCuffsSolitude  - Used for Elbow tie cuffs 
Form Property DOMPlugAnal Auto
Form Property DOMPlugVaginal Auto
Form Property DOMYokeWood Auto
Form Property DOMWristArmbinder Auto
Form Property DOMIronSlaveCollar Auto
Form Property DOMSlaveCollar Auto

; DOM Keywords
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

; HSH Keywords
Keyword Property PHHSHWornAnkles Auto Hidden
Keyword Property PHHSHWornDevice Auto Hidden
Keyword Property PHHSHWornWrist Auto Hidden
Keyword Property PHHSHWornYoke Auto Hidden

; SBC Keywords
Keyword Property sbcWornWrist Auto Hidden
Keyword Property sbcWornCollar Auto Hidden
Keyword Property SBC_KeywordCrawler Auto Hidden

; Defeat keywords
KeyWord Property DefeatWornDevice Auto hidden
KeyWord Property DefeatActive Auto hidden

; Zaz Keywords
Keyword Property zbfFurniture Auto Hidden ; Bondage furniture
Keyword Property zpfFurniture Auto Hidden ; Poses
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

; Display Model 3
Keyword Property dse_dm_KeywordFurniture Auto Hidden

; Furniture
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

; Zaz effects
MagicEffect Property ZbfCrawlingEffect Auto Hidden
Spell Property ZbfBondageSpell Auto Hidden

Function Initialize()
	LogInfo("=================================================================================")
	LogInfo("==                             DOM: Zaz interface                              ==")
	LogInfo("=================================================================================")
	If (Game.GetModByName("PAH_AndYouGetASlave.esp") != 255)
		if AYGASCore == None
			AYGASCore = Game.GetFormFromFile(0x0000182B, "PAH_AndYouGetASlave.esp") as aygasCoreScript
		endif
	else
		AYGASCore = None
	endif
	If (Game.GetModByName("PAH_HomeSweetHome.esp") != 255)
		if HSHStorage == None
			HSHStorage = Game.GetFormFromFile(0x00008402, "PAH_HomeSweetHome.esp") As PHHSHStorageFunctions
			PHHSHWornAnkles     = Keyword.GetKeyword("PHHSHWornAnkles")
			PHHSHWornDevice     = Keyword.GetKeyword("PHHSHWornDevice")
			PHHSHWornWrist      = Keyword.GetKeyword("PHHSHWornWrist")
			PHHSHWornYoke       = Keyword.GetKeyword("PHHSHWornYoke")
		endif
	else
		HSHStorage          = None
		PHHSHWornAnkles     = None
		PHHSHWornDevice     = None
		PHHSHWornWrist      = None
		PHHSHWornYoke       = None
	endif
	If Game.GetModByName("ZaZAnimationPack.esm") != 255
		if ZbfPillorySingle == None
			ZAZ                    = Game.GetFormFromFile(0x0000CD14, "ZaZAnimationPack.esm") As zbfSexLab
			zbfFactionSlave        = Game.GetFormFromFile(0x000096AE, "ZaZAnimationPack.esm") As Faction
			zbfFactionSlaver       = Game.GetFormFromFile(0x000096B0, "ZaZAnimationPack.esm") As Faction
			zbfFactionGagAllowTalk = Game.GetFormFromFile(0x000221B5, "ZaZAnimationPack.esm") As Faction

			zbfCuffsLeatherBinds   = Game.GetFormFromFile(0x00003008, "ZaZAnimationPack.esm") As Form
			zbfCuffsRope01         = Game.GetFormFromFile(0x00003005, "ZaZAnimationPack.esm") As Form
			zbfCuffsIronBlack      = Game.GetFormFromFile(0x00003007, "ZaZAnimationPack.esm") As Form
			zbfCuffsSimpleBlack    = Game.GetFormFromFile(0x00003002, "ZaZAnimationPack.esm") As Form
			zbfCuffsGSB            = Game.GetFormFromFile(0x00005D91, "ZaZAnimationPack.esm") As Form
			zbfYokeWood01          = Game.GetFormFromFile(0x00021BB9, "ZaZAnimationPack.esm") As Form
			zbfYokeMetal03         = Game.GetFormFromFile(0x00007002, "ZaZAnimationPack.esm") As Form
			zbfWristArmbinder01    = Game.GetFormFromFile(0x00023143, "ZaZAnimationPack.esm") As Form
			zbfWristSimpleBlack    = Game.GetFormFromFile(0x00001008, "ZaZAnimationPack.esm") As Form
			zbfGagCloth            = Game.GetFormFromFile(0x00002004, "ZaZAnimationPack.esm") As Form
			zbfGagBall             = Game.GetFormFromFile(0x00002007, "ZaZAnimationPack.esm") As Form
			zbfGagRing             = Game.GetFormFromFile(0x00002006, "ZaZAnimationPack.esm") As Form
			zbfGagLog              = Game.GetFormFromFile(0x00002002, "ZaZAnimationPack.esm") As Form
			zbfBlindHood           = Game.GetFormFromFile(0x00005002, "ZaZAnimationPack.esm") As Form ; zbfBlindHood
			zbfBlindfoldMesh       = Game.GetFormFromFile(0x0000700A, "ZaZAnimationPack.esm") As Form ; zbfBlindEyeMask05 DD mesh
			zbfBlindfold           = Game.GetFormFromFile(0x00005010, "ZaZAnimationPack.esm") As Form ; zbfBlindEyeMask03
			zbfBlindfold1          = Game.GetFormFromFile(0x00005001, "ZaZAnimationPack.esm") As Form ; zbfBlindEyeMask01
			zbfBlindfold2          = Game.GetFormFromFile(0x0000500F, "ZaZAnimationPack.esm") As Form ; zbfBlindEyeMask02
			zbfBlindfold4          = Game.GetFormFromFile(0x00005011, "ZaZAnimationPack.esm") As Form ; zbfBlindEyeMask04
			zbfCollarIronBlack     = Game.GetFormFromFile(0x0000500C, "ZaZAnimationPack.esm") As Form ; CollarIronBlack	
			zbfCollarSimpleBlack   = Game.GetFormFromFile(0x00003004, "ZaZAnimationPack.esm") As Form ; CollarSimpleBlack	
			zbfCollarRope01        = Game.GetFormFromFile(0x00005003, "ZaZAnimationPack.esm") As Form ; 
			zbfAnkleSteel          = Game.GetFormFromFile(0x00004002, "ZaZAnimationPack.esm") As Form ; 
			zbfAnkleIronHDT        = Game.GetFormFromFile(0x00004009, "ZaZAnimationPack.esm") As Form ; 
			zbfWeaponCane          = Game.GetFormFromFile(0x00006004, "ZaZAnimationPack.esm") As Form ; WeaponCane
			zbfWeaponBrandingIron  = Game.GetFormFromFile(0x0005B6E0, "ZaZAnimationPack.esm") As Form ; WeaponBrandingIronSlave
			ZbfCrawlingEffect      = Game.GetFormFromFile(0x000a9238, "ZaZAnimationPack.esm") as MagicEffect
			ZbfBondageSpell        = Game.GetFormFromFile(0x00292822, "ZaZAnimationPack.esm") as spell
			if (ZbfBondageSpell == None)
				ZbfBondageSpell   = Game.GetFormFromFile(0x000EA8D5, "PAH_HomeSweetHome.esp") as spell
			endif
			ZbfPole                = Game.GetFormFromFile(0x00026D38, "ZaZAnimationPack.esm") as Furniture ; zbfMultipleRestraintPostPole "Multi Restraint Pole" [FURN:05026D38]
			ZbfPoleBondage01       = Game.GetFormFromFile(0x00045624, "ZaZAnimationPack.esm") As Furniture
			ZbfCrossRoped01        = Game.GetFormFromFile(0x00026D33, "ZaZAnimationPack.esm") As Furniture
			ZbfTCross              = Game.GetFormFromFile(0x00026D35, "ZaZAnimationPack.esm") as Furniture ; zbfCrossRopedPose03 "Cross Roped Pose 03" [FURN:05026D35]
			ZbfXCross              = Game.GetFormFromFile(0x0000D7E0, "ZaZAnimationPack.esm") As Furniture
			ZbfXCrossDark          = Game.GetFormFromFile(0x00026D3B, "ZaZAnimationPack.esm") as Furniture ; zbfXCross2Dark "X Cross II Dark" [FURN:05026D3B]
			ZbfHPillory            = Game.GetFormFromFile(0x00026383, "ZaZAnimationPack.esm") as Furniture ; zbfPilloryAlternative "Pillory" [FURN:05026383]
			ZbfPillory01           = Game.GetFormFromFile(0x0000FDE1, "ZaZAnimationPack.esm") As Furniture
			ZbfPillorySingle       = Game.GetFormFromFile(0x00026D43, "ZaZAnimationPack.esm") as Furniture
			ZbfStocks              = Game.GetFormFromFile(0x00026D2D, "ZaZAnimationPack.esm") as Furniture ; zbfVerticalStocksX "Vertical Stocks X" [FURN:05026D2D]
			ZbfStocksKneeling      = Game.GetFormFromFile(0x00057467, "ZaZAnimationPack.esm") As Furniture
			ZbfRack                = Game.GetFormFromFile(0x0000E2BF, "ZaZAnimationPack.esm") as Furniture ; zbfRack01 "Rack" [FURN:0500E2BF]
			ZbfWheel               = Game.GetFormFromFile(0x0000FDE0, "ZaZAnimationPack.esm") as Furniture ; zbfWheel03 "Tilted Wheel" [FURN:0500FDE0]
			ZbfWheel01             = Game.GetFormFromFile(0x00026D37, "ZaZAnimationPack.esm") As Furniture
			ZbfPony                = Game.GetFormFromFile(0x0000DD49, "ZaZAnimationPack.esm") as Furniture ; zbfWoodenHorse "Wooden Horse" [FURN:0500DD49]
			ZbfPonyWoodenPony01    = Game.GetFormFromFile(0x00026D42, "ZaZAnimationPack.esm") As Furniture
			ZbfVerticalStocks      = Game.GetFormFromFile(0x0000FDDF, "ZaZAnimationPack.esm") as Furniture
			ZbfBondagePoleStanding = Game.GetFormFromFile(0x00044AB2, "ZaZAnimationPack.esm") as Furniture
			zbfTorturePole02       = Game.GetFormFromFile(0x00038469, "ZaZAnimationPack.esm") as Furniture
			zbfXCrossOutdoor       = Game.GetFormFromFile(0x000500B1, "ZaZAnimationPack.esm") as Furniture
			zbfTreeBondage02       = Game.GetFormFromFile(0x00046CF0, "ZaZAnimationPack.esm") as Furniture
			zbfHorizontalPole      = Game.GetFormFromFile(0x0007F1B8, "ZaZAnimationPack.esm") as Furniture
			ZazFurnitureList       = Game.GetFormFromFile(0x0007cbc8, "ZaZAnimationPack.esm") as FormList
			if (ZazFurnitureList == None)
				ZazFurnitureList = Game.GetFormFromFile(0x0007d12a, "ZaZAnimationPack.esm") as FormList
			endif
			AddExtFurniture()

			zbfFurniture        = Keyword.GetKeyword("zbfFurniture") 
			zpfFurniture        = Keyword.GetKeyword("zpfFurniture")
			zbfWornDevice       = Keyword.GetKeyword("zbfWornDevice")
			zbfWornWrist        = Keyword.GetKeyword("zbfWornWrist")
			zbfWornEffectWrist  = Keyword.GetKeyword("zbfWornEffectWrist")
			zbfWornBelt         = Keyword.GetKeyword("zbfWornBelt")
			zbfWornYoke         = Keyword.GetKeyword("zbfWornYoke")
			zbfWornElbows       = Keyword.GetKeyword("zbfWornElbows")
			zbfWornGag          = Keyword.GetKeyword("zbfWornGag")
			zbfWornCollar       = Keyword.GetKeyword("zbfWornCollar")
			zbfWornBlindfold    = Keyword.GetKeyword("zbfWornBlindfold")
			zbfWornAnalPlug     = Keyword.GetKeyword("zbfWornAnalPlug")
			zbfWornVaginalPlug  = Keyword.GetKeyword("zbfWornVaginalPlug")
			zbfEffectNoSprint   = Keyword.GetKeyword("zbfEffectNoSprint")
			zbfEffectSlowMove   = Keyword.GetKeyword("zbfEffectSlowMove")
			zbfWeaponPunishment = Keyword.GetKeyword("zbfWeaponPunishment")
			zbfEffectNoMove     = Keyword.GetKeyword("zbfEffectNoMove")
			zbfFurnitureMilk1   = Keyword.GetKeyword("zbfFurnitureMilkOMatic")
			zbfFurnitureMilk2   = Keyword.GetKeyword("zbfFurnitureMilkoMaticII")
			zbfFurnitureHasAnkleCuffs     = Keyword.GetKeyword("zbfFurnitureHasAnkleCuffs") 
			zbfFurnitureHasWristCuffs     = Keyword.GetKeyword("zbfFurnitureHasWristCuffs") 
			zbfFurnitureWhippingDevice    = Keyword.GetKeyword("zbfFurnitureWhippingDevice") 
			zbfFurnitureWhippingFromFront = Keyword.GetKeyword("zbfFurnitureWhippingFromFront") 
		endif
	else
		ZAZ                    = None
		zbfFactionSlave        = None
		zbfFactionSlaver       = None
		zbfFactionGagAllowTalk = None
		zbfCuffsLeatherBinds   = None
		zbfCuffsRope01         = None
		zbfCuffsIronBlack      = None
		zbfCuffsSimpleBlack    = None
		zbfCuffsGSB            = None
		zbfYokeWood01          = None
		zbfYokeMetal03         = None
		zbfWristArmbinder01    = None
		zbfWristSimpleBlack    = None
		zbfGagCloth            = None
		zbfGagBall             = None
		zbfGagRing             = None
		zbfGagLog              = None
		zbfBlindfoldMesh       = None
		zbfBlindfold           = None
		zbfBlindfold1          = None
		zbfBlindfold2          = None
		zbfBlindfold4          = None
		zbfBlindHood           = None
		zbfCollarIronBlack     = None
		zbfCollarSimpleBlack   = None
		zbfCollarRope01        = None
		zbfAnkleSteel          = None
		zbfAnkleIronHDT        = None
		zbfWeaponCane          = None
		zbfWeaponBrandingIron  = None
		ZbfCrawlingEffect      = None
		If Game.GetModByName("PAH_HomeSweetHome.esp") != 255
			ZbfBondageSpell    = Game.GetFormFromFile(0x000EA8D5, "PAH_HomeSweetHome.esp") as spell
		else
			ZbfBondageSpell    = None
		endif
		ZbfPole                = None
		ZbfPoleBondage01       = None
		ZbfCrossRoped01        = None
		ZbfTCross              = None
		ZbfXCross              = None
		ZbfXCrossDark          = None
		ZbfHPillory            = None
		ZbfPillory01           = None
		ZbfPillorySingle       = None
		ZbfStocks              = None
		ZbfStocksKneeling      = None
		ZbfRack                = None
		ZbfWheel               = None
		ZbfWheel01             = None
		ZbfPony                = None
		ZbfPonyWoodenPony01    = None
		ZazFurnitureList       = None
		ZbfVerticalStocks      = None
		ZbfBondagePoleStanding = None
		zbfTorturePole02       = None
		zbfXCrossOutdoor       = None
		zbfTreeBondage02       = None
		zbfHorizontalPole      = None
	endif
	dse_dm_KeywordFurniture = Keyword.GetKeyword("dse_dm_KeywordFurniture") 
	sbcWornWrist        = Keyword.GetKeyword("SBCK0977")
	sbcWornCollar       = Keyword.GetKeyword("SBCK0977") ; SBC device is collar+wrist
 	if SBC_KeywordCrawler == None
		SBC_KeywordCrawler  = Keyword.GetKeyword("SBC_KeywordCrawler")
	endif
	if SBC_KeywordCrawler == None
		SBC_KeywordCrawler  = Keyword.GetKeyword("SCB_KeywordCrawler")
	endif
	if SBC_KeywordCrawler == None
		SBC_KeywordCrawler  = Keyword.GetKeyword("SBCK0977")
	endif
	DefeatWornDevice    = Keyword.GetKeyword("DefeatWornDevice")
	DefeatActive        = Keyword.GetKeyword("DefeatActive")

	if ZAZ == None
		has_Zaz = false
		LogInfo(" WARNING: Zaz NOT FOUND!")
	else
		has_Zaz = true
		ZazVersion = 0 ; Zaz 8
		if (Game.GetFormFromFile(0x00085e57, "ZaZAnimationPack.esm") != None)
			ZazVersion = 1		; Zap 8+
		endif
		if (Game.GetFormFromFile(0x0009be97, "ZaZAnimationPack.esm") != None)
			ZazVersion = 2		; Zap 9
		endif

		RemoveKeywordOnForm(zbfCuffsRope01,DOMNotDevice)
		RemoveKeywordOnForm(zbfCuffsIronBlack,DOMNotDevice)
		RemoveKeywordOnForm(zbfCuffsSimpleBlack,DOMNotDevice)
		RemoveKeywordOnForm(zbfCuffsLeatherBinds,DOMNotDevice)
		RemoveKeywordOnForm(zbfCuffsGSB,DOMNotDevice)
		RemoveKeywordOnForm(zbfYokeWood01,DOMNotDevice)
		RemoveKeywordOnForm(zbfYokeMetal03,DOMNotDevice)
		RemoveKeywordOnForm(zbfWristArmbinder01,DOMNotDevice)
		RemoveKeywordOnForm(zbfWristSimpleBlack,DOMNotDevice)
		RemoveKeywordOnForm(zbfGagCloth,DOMNotDevice)
		RemoveKeywordOnForm(zbfGagBall,DOMNotDevice)
		RemoveKeywordOnForm(zbfGagRing,DOMNotDevice)
		RemoveKeywordOnForm(zbfGagLog,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindHood,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindfold,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindfold1,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindfold2,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindfold4,DOMNotDevice)
		RemoveKeywordOnForm(zbfBlindfoldMesh,DOMNotDevice)

		AddKeywordToForm(DOMXCross,zbfFurniture)
		;AddKeywordToForm(DOMXCross,zbfFurnitureXCross)
		AddKeywordToForm(DOMXCross,zbfFurnitureHasAnkleCuffs)
		AddKeywordToForm(DOMXCross,zbfFurnitureHasWristCuffs)
		AddKeywordToForm(DOMXCross,zbfFurnitureWhippingDevice)
		AddKeywordToForm(DOMXCross,zbfFurnitureWhippingFromFront)
		LogInfo(" Zaz found!")
	endif
	if DOMIronSlaveCollar == None	
		DOMIronSlaveCollar = Game.GetFormFromFile(0x001E2ABF, "DiaryOfMine.esm") as Form
	endif
	if DOMSlaveCollar == None	
		DOMSlaveCollar = Game.GetFormFromFile(0x002298FA, "DiaryOfMine.esm") as Form
	endif
	UpdateFurnitureList()
	
	RemoveKeywordOnForm(DLC1ClothesMothPriestBlindfold,DOMNotDevice)
	RemoveKeywordOnForm(ArmorGag,DOMNotDevice)
	RemoveKeywordOnForm(PrisonerCuffs1,DOMNotDevice)
	RemoveKeywordOnForm(PrisonerCuffs2,DOMNotDevice)
	RemoveKeywordOnForm(PrisonerCuffs3,DOMNotDevice)
	has_GSPoses = Game.GetModByName("_GSPoses.esp") != 255 ; GSPose plugin
EndFunction

Function RemoveKeywordOnForm(Form the_form, Keyword the_keyword)
	if the_form == None || the_keyword == None
		LogInfo("WARNING: trying to remove keyword "+the_keyword+" to form "+the_form)
		return
	endif
	if !the_form.HasKeyword(the_keyword)
		return
	endif
	PO3_SKSEFunctions.RemoveKeywordOnForm(the_form,the_keyword)
EndFunction

Function AddKeywordToForm(Form the_form, Keyword the_keyword)
	if the_form == None || the_keyword == None
		LogInfo("WARNING: trying to add keyword "+the_keyword+" to form "+the_form)
		return
	endif
	if the_form.HasKeyword(the_keyword)
		return
	endif
	PO3_SKSEFunctions.AddKeywordToForm(the_form,the_keyword)
EndFunction

Function AddFormToList(FormList the_list, Form the_form)
	if the_form == None || the_list == None
		LogInfo("WARNING: trying to add form to list "+the_list+" form "+the_form)
		return
	endif
	if !the_list.HasForm(the_form)
		the_list.AddForm(the_form)
	endif
EndFunction

Function RemoveFormFromList(FormList the_list, Form the_form)
	if the_form == None || the_list == None
		LogInfo("WARNING: trying to remove form from list "+the_list+" form "+the_form)
		return
	endif
	if the_list.HasForm(the_form)
		the_list.RemoveAddedForm(the_form)
	endif
EndFunction

Function UpdateFurnitureList()
	if Game.GetModByName("ZaZAnimationPack.esm") != 255
		AddFormToList(DOMMilkMachineList,Game.GetFormFromFile(0x00026D2E, "ZaZAnimationPack.esm") as Furniture) ; zbfMilkOMatic1 "Dwarven Milking Machine" [FURN:05026D2E]
		AddFormToList(DOMMilkMachineList,Game.GetFormFromFile(0x00026D32, "ZaZAnimationPack.esm") as Furniture) ; zbfMilkOMatic2 "Dwarven Milking Machine II" [FURN:05026D32]
	endif
EndFunction

Formlist Function GetFurnitureList()
	if ZazFurnitureList != None
		return ZazFurnitureList
	endif
	return DOMFurnitureList
EndFunction

Formlist Function GetMilkFurniture()
	return DOMMilkMachineList
EndFunction

Furniture Function GetFurniturePoleStanding()
	if ZbfBondagePoleStanding != None
		return ZbfBondagePoleStanding
	endif
	return DOMCrossRoped
EndFunction

Furniture Function GetFurniturePole()
	if ZbfPoleBondage01 != None
		return ZbfPoleBondage01
	endif
	return DOMCrossRoped
EndFunction

Furniture Function GetFurniturePole02()
	if zbfTorturePole02 != None
		return zbfTorturePole02
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurniturePoleCross()
	if zbfXCrossOutdoor != None
		return zbfXCrossOutdoor
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurnitureTree()
	if zbfTreeBondage02 != None
		return zbfTreeBondage02
	endif
	if AYGASCore != None && AYGASCore.aygasVerticalStocks != None
		return AYGASCore.aygasVerticalStocks
	endif
	if HSHStorage != None && HSHStorage.PHHSHVerticalStocks != None
		return HSHStorage.PHHSHVerticalStocks
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurnitureStake()
	if zbfHorizontalPole != None
		return zbfHorizontalPole
	endif
	if AYGASCore != None && AYGASCore.aygasVerticalStocks != None
		return AYGASCore.aygasVerticalStocks
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurniturePoleMulti()
	if ZbfPole != None
		return ZbfPole
	endif
	return DOMCrossRoped
EndFunction

Furniture Function GetFurnitureTCross01()
	if ZbfCrossRoped01 != None
		return ZbfCrossRoped01
	endif
	return DOMCrossRoped
EndFunction

Furniture Function GetFurnitureTCross()
	if ZbfTCross != None
		return ZbfTCross
	endif
	return DOMCrossRoped
EndFunction

Furniture Function GetFurnitureXCross()
	if ZbfXCross != None
		return ZbfXCross
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurnitureXCrossDark()
	if ZbfXCrossDark != None
		return ZbfXCrossDark
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurnitureHPillory()
	if ZbfHPillory != None
		return ZbfHPillory
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurniturePillory()
	if ZbfPillory01 != None
		return ZbfPillory01
	endif
	if AYGASCore != None && AYGASCore.aygasPilorySingle != None
		return AYGASCore.aygasPilorySingle
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurniturePillorySingle()
	if ZbfPillory01 != None
		return ZbfPillorySingle
	endif
	if AYGASCore != None && AYGASCore.aygasPilorySingle != None
		return AYGASCore.aygasPilorySingle
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurnitureStocksX()
	if ZbfStocks != None
		return ZbfStocks
	endif
	if AYGASCore != None && AYGASCore.aygasVerticalStocks != None
		return AYGASCore.aygasVerticalStocks
	endif
	if HSHStorage != None && HSHStorage.PHHSHVerticalStocks != None
		return HSHStorage.PHHSHVerticalStocks
	endif
	return DOMHPillory
EndFunction


Furniture Function GetFurnitureStocks()
	if ZbfVerticalStocks != None
		return ZbfVerticalStocks
	endif
	if AYGASCore != None && AYGASCore.aygasVerticalStocks != None
		return AYGASCore.aygasVerticalStocks
	endif
	if HSHStorage != None && HSHStorage.PHHSHVerticalStocks != None
		return HSHStorage.PHHSHVerticalStocks
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurnitureStocksKneeling()
	if ZbfStocksKneeling != None
		return ZbfStocksKneeling
	endif
	return DOMHPillory
EndFunction

Furniture Function GetFurnitureRack()
	if ZbfRack != None
		return ZbfRack
	endif
	return DOMRack
EndFunction

Furniture Function GetFurnitureWheel()
	if ZbfWheel != None
		return ZbfWheel
	endif
	return DOMRack
EndFunction

Furniture Function GetFurnitureWheel01()
	if ZbfWheel01 != None
		return ZbfWheel01
	endif
	return DOMRack
EndFunction

Furniture Function GetFurniturePony()
	if ZbfPonyWoodenPony01 != None
		return ZbfPonyWoodenPony01
	endif
	return DOMXCross
EndFunction

Furniture Function GetFurnitureWoodenHorse()
	if ZbfPony != None
		return ZbfPony
	endif
	return DOMXCross
EndFunction

Form Function GetIronCollar()
	if zbfCollarIronBlack == None
		return DOMIronSlaveCollar
	endif
	return zbfCollarIronBlack
EndFunction

Form Function GetSimpleCollar()
	if zbfCollarSimpleBlack == None
		return DOMIronSlaveCollar
	endif
	return zbfCollarSimpleBlack
EndFunction

Form Function GetRopeCollar()
	if zbfCollarRope01 == None
		return DOMSlaveCollar
	endif
	return zbfCollarRope01
EndFunction

Form Function GetAnkleSteel()
	return zbfAnkleSteel
EndFunction

Form Function GetAnkleIron()
	return zbfAnkleIronHDT
EndFunction

Form Function GetWeaponCane()
	if zbfWeaponCane != None
		return zbfWeaponCane
	endif
	return DOMCane
EndFunction

Form Function GetSmartCuffs(float smartness)
	if smartness > 90.0
		return GetCuffsIron()
	endif
	if smartness > 80.0
		return GetCuffsSimple()
	endif
	if smartness > 60.0
		return GetCuffsLeather()
	endif
	return GetCuffsRope()
EndFunction

Form Function GetCuffsRope()
	return DOMCuffsRope
EndFunction

Form Function GetWristRope()
	return DOMWristRope
EndFunction

Form Function GetCuffsRope01()
	if zbfCuffsRope01 != None
		return zbfCuffsRope01
	endif
	return DOMCuffsRope
EndFunction

Form Function GetCuffsPrisoner()
	return PrisonerCuffs1
EndFunction

Form Function GetCuffsIron()
	if zbfCuffsIronBlack != None
		return zbfCuffsIronBlack
	endif
	return PrisonerCuffs1
EndFunction

Form Function GetCuffsSimple()
	if zbfCuffsSimpleBlack != None
		return zbfCuffsSimpleBlack
	endif
	return PrisonerCuffs1
EndFunction

Form Function GetCuffsLeather()
	if zbfCuffsLeatherBinds != None
		return zbfCuffsLeatherBinds
	endif
	return PrisonerCuffs1
EndFunction

Form Function GetCuffsGSB()
	if zbfCuffsGSB != None
		return zbfCuffsGSB
	endif
	return PrisonerCuffs1
EndFunction

Form Function GetYoke()
	return DOMYokeWood
EndFunction

Form Function GetArmbinder()
	return DOMWristArmbinder
EndFunction

Form Function GetGag(int idx)
	if idx <= 1
		return GetGagCloth()
	elseif idx == 2
		return GetGagBall()
	elseif idx == 3
		return GetGagRing()
	endif
	return GetGagLog()
EndFunction

Form Function GetGagCloth()
	if zbfGagCloth != None
		return zbfGagCloth
	endif
	return ArmorGag
EndFunction

Form Function GetGagBall()
	if zbfGagBall != None
		return zbfGagBall
	endif
	return ArmorGag
EndFunction

Form Function GetGagRing()
	if zbfGagBall != None
		return zbfGagRing
	endif
	return ArmorGag
EndFunction

Form Function GetGagLog()
	if zbfGagBall != None
		return zbfGagLog
	endif
	return ArmorGag
EndFunction

Form Function GetBlindfold0()
	if zbfBlindfold != None
		return zbfBlindfold
	endif
	return DLC1ClothesMothPriestBlindfold
EndFunction

Form Function GetBlindfold1()
	if zbfBlindfold1 != None
		return zbfBlindfold1
	endif
	return DLC1ClothesMothPriestBlindfold
EndFunction

Form Function GetBlindfold2()
	if zbfBlindfold2 != None
		return zbfBlindfold2
	endif
	return DLC1ClothesMothPriestBlindfold
EndFunction

Form Function GetBlindfold4()
	if zbfBlindfold4 != None
		return zbfBlindfold4
	endif
	return DLC1ClothesMothPriestBlindfold
EndFunction

Form Function GetBlindHood()
	if zbfBlindHood != None
		return zbfBlindHood
	endif
	return ExecutionHood
EndFunction

Form Function GetBlindHoodDB()
	return ExecutionHoodDB
EndFunction

Form Function GetBlindHood1()
	return ExecutionHood
EndFunction

Form Function GetBlindfoldMesh()
	if zbfBlindfoldMesh != None
		return zbfBlindfoldMesh
	endif
	return DLC1ClothesMothPriestBlindfold
EndFunction

Form Function GetBlindfold(int idx)
	if idx <= 1
		return GetBlindfold0()
	elseif idx == 2
		return GetBlindfoldMesh()
	elseif idx == 3
		return GetBlindfold1()
	elseif idx == 4
		return GetBlindHood()
	elseif idx == 5
		return GetBlindHood1()
	endif
	return GetBlindHoodDB()
EndFunction

Form Function GetPlugAnal()
	return DOMPlugAnal
EndFunction

Form Function GetPlugVaginal()
	return DOMPlugVaginal
EndFunction

bool Function hasPlugAnal(Actor akRef)
	if akRef.IsInFaction(DOMHasPlugAnal)
		return true
	endif
	return wornplugAnal(akRef)
EndFunction

bool Function hasPlugVaginal(Actor akRef)
	if akRef.IsInFaction(DOMHasPlugVaginal)
		return true
	endif
	return wornplugVaginal(akRef)
EndFunction

bool Function hasBlindfold(Actor akRef)
	if akRef.IsInFaction(DOMHasBlindfold)
		return true
	endif
	return wornBlindfold(akRef)
EndFunction

bool Function hasMouthGag(Actor akRef)
	if akRef.IsInFaction(DOMHasMouthGag)
		return true
	endif
	return wornGag(akRef)
EndFunction

bool Function hasCuffs(Actor akRef)
	if akRef.IsInFaction(DOMHasCuffsFront)
		return true
	endif
	if akRef.IsInFaction(DOMHasCuffsBack)
		return true
	endif
	if akRef.IsInFaction(DOMHasCuffsCrossed)
		return true
	endif
	if akRef.IsInFaction(DOMHasCuffsBoxTied)
		return true
	endif
	return wornWrist(akRef)
EndFunction

bool Function wornLeash(Actor akRef)
	if zbfEffectNoSprint != None && akRef.WornHasKeyword(zbfEffectNoSprint)
		return true
	endif
	if zbfEffectSlowMove != None && akRef.WornHasKeyword(zbfEffectSlowMove)
		return true
	endif
	if DOMZad.wornLeash(akRef)
		return true
	endif
	if DOMPAH.wornLeash(akRef)
		return true
	endif	
	if SBC_KeywordCrawler != None && akRef.WornHasKeyword(SBC_KeywordCrawler)
		return true
	endif
	if wornBlindfold(akRef)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornCollarLeash)
EndFunction

bool Function wornBlindfold(Actor akRef)
	if zbfWornBlindfold != None && akRef.WornHasKeyword(zbfWornBlindfold)
		return true
	endif
	if DOMZad.wornBlindfold(akRef)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornBlindfold)
EndFunction

bool Function wornplugAnal(Actor akRef)
	if zbfWornAnalPlug != None && akRef.WornHasKeyword(zbfWornAnalPlug)
		return true
	endif
	if DOMZad.wornPlugAnal(akRef)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornPlugAnal)
EndFunction

bool Function wornplugVaginal(Actor akRef)
	if zbfWornVaginalPlug != None && akRef.WornHasKeyword(zbfWornVaginalPlug)
		return true
	endif
	if DOMZad.wornPlugVaginal(akRef)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornPlugVaginal)
EndFunction

bool Function wornCollar(Actor akRef)
	if DOMZad.wornCollar(akRef)
		return true
	endif	
	if DOMPAH.wornRestraint(akRef)
		return true
	endif	
	if zbfWornCollar != None && akRef.WornHasKeyword(zbfWornCollar)
		return true
	endif
	if sbcWornCollar != None && akRef.WornHasKeyword(sbcWornCollar)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornCollar)
EndFunction

bool Function wornGag(Actor akRef)
	if zbfWornGag != None && akRef.WornHasKeyword(zbfWornGag)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornGag)
EndFunction

bool Function wornWrist(Actor akRef)
	if PHHSHWornWrist != None && akRef.WornHasKeyword(PHHSHWornWrist)
		;LogTrace("wornWrist PHHSHWornWrist")
		return true
	endif
	if zbfWornWrist != None && akRef.WornHasKeyword(zbfWornWrist)
		;LogTrace("wornWrist zbfWornWrist")
		return true
	endif
	if sbcWornWrist != None && akRef.WornHasKeyword(sbcWornWrist)
		;LogTrace("wornWrist sbcWornWrist")
		return true
	endif
	if DOMZad.wornWrist(akRef)
		return true
	endif
	;LogTrace("wornWrist DOMWornWrist="+akRef.WornHasKeyword(DOMWornWrist))
	return akRef.WornHasKeyword(DOMWornWrist)
EndFunction

bool Function wornDevice(Actor akRef)
	if akRef.WornHasKeyword(DOMIsDevice)
		return true
	endif
	if DOMZad.wornDevice(akRef)
		return true
	endif	
	if DOMPAH.wornRestraint(akRef)
		return true
	endif	
	if PHHSHWornDevice != None && akRef.WornHasKeyword(PHHSHWornDevice)
		return true
	endif
	if DefeatWornDevice != None && akRef.WornHasKeyword(DefeatWornDevice)
		return true
	endif
	if zbfWornDevice != None && akRef.WornHasKeyword(zbfWornDevice)
		return true
	endif
	return akRef.WornHasKeyword(DOMWornDevice)
EndFunction

bool Function HasDefeat()
	if DefeatWornDevice != None
		return true
	endif
	return false
EndFunction

bool Function HasDefeatWornDevice(Form the_form)
	if DefeatWornDevice == None
		return false
	endif
	return the_form.HasKeyword(DefeatWornDevice)
EndFunction

bool Function HasDefeatActive(Actor akRef)
	if DefeatActive == None
		return false
	endif
	return akRef.HasKeyword(DefeatActive)
EndFunction

bool Function IsFurnitureDevice(ObjectReference furni)
	if zbfFurniture != None && furni.HasKeyword(zbfFurniture)
		return true
	endif
	if dse_dm_KeywordFurniture != None && furni.HasKeyword(dse_dm_KeywordFurniture)
		return true
	endif
	return false
EndFunction

bool Function IsMilkingDevice(ObjectReference furni)
	if zbfFurnitureMilk1 != None && furni.HasKeyword(zbfFurnitureMilk1)
		return true
	endif
	if zbfFurnitureMilk2 != None && furni.HasKeyword(zbfFurnitureMilk2)
		return true
	endif
	return false
EndFunction

bool Function IsWeaponPunishment(Form the_form)
	if zbfWeaponPunishment != None && the_form.hasKeyword(zbfWeaponPunishment)
		return true
	endif
	if the_form.hasKeyword(DOMPunisher)
		return true
	endif
	return DOMPAH.IsWeaponPunishment(the_form)
EndFunction

bool Function hasKeywordNoMove(Form the_form)
	if zbfEffectNoMove != None && the_form.hasKeyword(zbfEffectNoMove)
		return true
	endif
	return false
EndFunction

bool Function hasKeywordGag(Form the_form)
	if zbfWornGag != None && the_form.hasKeyword(zbfWornGag)
		return true
	endif
	return the_form.hasKeyword(DOMWornGag)
EndFunction

bool Function hasKeywordBlindfold(Form the_form)
	if zbfWornBlindfold != None && the_form.hasKeyword(zbfWornBlindfold)
		return true
	endif
	return the_form.hasKeyword(DOMWornBlindfold)
EndFunction

bool Function hasKeywordPlugAnal(Form the_form)
	if zbfWornAnalPlug != None && the_form.hasKeyword(zbfWornAnalPlug)
		return true
	endif
	return the_form.hasKeyword(DOMWornPlugAnal)
EndFunction

bool Function hasKeywordPlugVaginal(Form the_form)
	if zbfWornVaginalPlug != None && the_form.hasKeyword(zbfWornVaginalPlug)
		return true
	endif
	return the_form.hasKeyword(DOMWornPlugVaginal)
EndFunction

bool Function hasKeywordWrist(Form the_form)
	if PHHSHWornWrist != None && the_form.hasKeyword(PHHSHWornWrist)
		return true
	endif
	if zbfWornWrist != None && the_form.hasKeyword(zbfWornWrist)
		return true
	endif
	if sbcWornWrist != None && the_form.hasKeyword(sbcWornWrist)
		return true
	endif
    if DOMZad.hasKeywordWrist(the_form)
       return true
	endif
	if the_form.hasKeyword(DOMWornWrist)
		return true
	endif
	return false
EndFunction

bool Function hasKeywordYoke(Form the_form)
	if PHHSHWornYoke != None && the_form.hasKeyword(PHHSHWornYoke)
		return true
	endif
	if zbfWornYoke != None && the_form.hasKeyword(zbfWornYoke)
		return true
	endif
   if DOMZad.hasKeywordYoke(the_form)
       return true
	endif
	if the_form.hasKeyword(DOMWornYoke)
		return true
	endif
	return false
EndFunction

bool Function isYoked(Form the_form)
	if hasKeywordYoke(the_form)
		return true
	endif
   if DOMZad.isYoked(the_form)
       return true
	endif
	return false
EndFunction

bool Function hasKeywordArmbinder(Form the_form)
	if zbfWornElbows != None && the_form.hasKeyword(zbfWornElbows)
		return true
	endif
   if DOMZad.hasKeywordArmbinder(the_form)
       return true
	endif
	if the_form.hasKeyword(DOMWornArmbinder)
		return true
	endif
	return false
EndFunction

bool Function hasKeywordCollar(Form the_form)
	if zbfWornCollar != None && the_form.hasKeyword(zbfWornCollar)
		return true
	endif
	if sbcWornCollar != None && the_form.hasKeyword(sbcWornCollar)
		return true
	endif
	return the_form.hasKeyword(DOMWornCollar)
EndFunction

bool Function hasKeywordDevice(Form the_form)
	if the_form.HasKeyword(DOMIsDevice)
		return true
	endif
	if DOMZad.hasKeywordDevice(the_form)
		return true
	endif
	if PHHSHWornDevice != None && the_form.HasKeyword(PHHSHWornDevice)
		return true
	endif
	if DefeatWornDevice != None && the_form.HasKeyword(DefeatWornDevice)
		return true
	endif
	if zbfWornDevice != None && the_form.hasKeyword(zbfWornDevice)
		return true
	endif
	return the_form.hasKeyword(DOMWornDevice)
EndFunction

bool Function hasKeywordFurniture(Form the_form)
	if zbfFurniture != None && the_form.hasKeyword(zbfFurniture)
		return true
	endif
	if dse_dm_KeywordFurniture != None && the_form.hasKeyword(dse_dm_KeywordFurniture)
		return true
	endif
	return false
EndFunction

bool Function IsItemRestraint(Form the_form)
	if DiaryOfMineFramework.GeneratorMode() > 0
		int fast = DiaryOfMineFramework.ZazIsRestraint(self, the_form)
		if fast >= 0
			return fast == 1
		endif
	endif
    if hasKeywordWrist(the_form)
       return true
	endif
    if hasKeywordArmbinder(the_form)
       return true
	endif
    if hasKeywordYoke(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemOffsetOnlyRestraint(Form the_form)
    if the_form == PrisonerCuffs2
       return true
	endif
 	return false
EndFunction

bool Function IsItemCollar(Form the_form)
    if hasKeywordCollar(the_form)
       return true
	endif
    if hasKeywordYoke(the_form)
       return true
	endif
	if DOMPAH.hasKeywordRestraint(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemMouthGag(Form the_form)
    if hasKeywordGag(the_form)
       return true
	endif
    if DOMZad.hasKeywordGag(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemBlindfold(Form the_form)
    if hasKeywordBlindfold(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemPlugAnal(Form the_form)
    if hasKeywordPlugAnal(the_form)
       return true
	endif
    if DOMZad.hasKeywordPlugAnal(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemPlugVaginal(Form the_form)
    if hasKeywordPlugVaginal(the_form)
       return true
	endif
    if DOMZad.hasKeywordPlugVaginal(the_form)
       return true
	endif
	return false
EndFunction

bool Function IsItemDevice(Form the_form)
	if IsItemRestraint(the_form)
		return true
	endif	
	if IsItemCollar(the_form)
		return true
	endif	
	if IsItemPlugAnal(the_form)
		return true
	endif	
	if IsItemPlugVaginal(the_form)
		return true
	endif	
	if IsItemMouthGag(the_form)
		return true
	endif	
	if IsItemBlindfold(the_form)
		return true
	endif
	
	; Other kind of devices
	if hasKeywordDevice(the_form)
		return true
	endif	
	
	return false
EndFunction

bool function wornCuffsFront(Actor akRef)
	return akRef.WornHasKeyword(DOMWornCuffsFront)
EndFunction

bool function wornCuffsCrossed(Actor akRef)
	return akRef.WornHasKeyword(DOMWornCuffsCrossed)
EndFunction

bool function wornCuffsBack(Actor akRef)
	return akRef.WornHasKeyword(DOMWornCuffsBack)
EndFunction

bool function wornCuffsBoxtied(Actor akRef)
	return akRef.WornHasKeyword(DOMWornCuffsBoxtied)
EndFunction

bool function wornBelt(Actor akRef)
 	if zbfWornBelt != None && akRef.WornHasKeyword(zbfWornBelt)
		return true
	endif
     if DOMZad.wornBelt(akRef)
       return true
	endif
	return false
EndFunction

bool function wornEffectWrist(Actor akRef)
 	if zbfWornEffectWrist != None && akRef.WornHasKeyword(zbfWornEffectWrist)
		return true
	endif
	return false
EndFunction

bool function wornYoke(Actor akRef)
 	if PHHSHWornYoke != None && akRef.WornHasKeyword(PHHSHWornYoke)
		return true
	endif
 	if zbfWornYoke != None && akRef.WornHasKeyword(zbfWornYoke)
		return true
	endif
     if DOMZad.wornYoke(akRef)
       return true
	endif
	return akRef.WornHasKeyword(DOMWornYoke)
EndFunction

bool function wornArmbinder(Actor akRef)
	if zbfWornElbows != None && akRef.WornHasKeyword(zbfWornElbows)
		return true
	endif
    if DOMZad.wornArmbinder(akRef)
       return true
	endif
	return akRef.WornHasKeyword(DOMWornArmbinder)
EndFunction

bool function wornRestraints(Actor akRef)
    if wornCuffs(akRef)
       return true
	endif
    if wornArmbinder(akRef)
       return true
	endif
    if wornYoke(akRef)
       return true
	endif
 	return false
EndFunction

bool function wornCuffs(Actor akRef)
    if wornWrist(akRef)
       return true
	endif
 	return false
EndFunction

bool function wornMouthGag(Actor akRef)
	if wornGag(akRef)
		return true
	elseif DOMZad.wornGag(akRef)
		return true
	endif
	return false
EndFunction

Form Function FindCuffs(Actor akTarget)
	if DiaryOfMineFramework.GeneratorMode() > 0 ; Diary of Mine Framework: the inventory scan in one native call
		Form[] found = DiaryOfMineFramework.ZazFindCuffs(self, akTarget)
		if found.Length == 1
			return found[0]
		endif
	endif
	Int iArmsSlotMask =	0x20000000 ; kSlotMask59 ; Unnamed
	Form the_form = akTarget.GetWornForm(iArmsSlotMask)
	;LogTrace("FindCuffs in slot the_form="+the_form)
	if the_form != None
		if IsItemRestraint(the_form) ; && !IsItemOffsetOnlyRestraint(the_form)
			return the_form
		endif
	endif
	Int n = akTarget.GetNumItems()
	Int i = n
	while i > 0
		i -= 1
		the_form = akTarget.GetNthForm(i)
		if the_form != None && IsItemRestraint(the_form) ; && !IsItemOffsetOnlyRestraint(the_form)
			Armor the_armor = the_form as Armor
			int imask = the_armor.GetSlotMask()
			;LogTrace("FindCuffs in loop mask="+imask+" form="+the_form)
			return the_form
		endif
	endwhile
	return None
EndFunction

Form Function GetEquippedCuffs(Actor akTarget)
	if DiaryOfMineFramework.GeneratorMode() > 0
		Form[] found = DiaryOfMineFramework.ZazFindCuffs(self, akTarget)
		if found.Length == 1
			return found[0]
		endif
	endif
	Int iArmsSlotMask =	0x20000000 ; kSlotMask59 ; Unnamed
	Form the_form = akTarget.GetWornForm(iArmsSlotMask)
	if the_form != None
		if IsItemRestraint(the_form)
			return the_form
		endif
	endif
	; if not in slot, loop over items and return first item with Zaz keyword
	Int i = akTarget.GetNumItems()
	while i > 0
		i -= 1
		the_form = akTarget.GetNthForm(i)
		if the_form != None 
			if IsItemRestraint(the_form)
				return the_form
			endif
		endif
	endWhile
	return None
EndFunction

Form Function GetEquippedCollar(Actor akTarget)
	Int iArmsSlotMask =	0x00008000 ; kSlotMask45 ; Unnamed
	Form the_form = akTarget.GetWornForm(iArmsSlotMask)
	if the_form != None
		if IsItemCollar(the_form)
			return the_form
		endif
	endif
	return None
EndFunction

Form Function GetEquippedGag(Actor akRef)
	if !wornMouthGag(akRef)
		return None
	endif
	Int iGagSlotMask = 0x00004000 ;  kSlotMask44 ; Unnamed
	
	Form the_form = akRef.GetWornForm(iGagSlotMask)
	if the_form != None
		if IsItemMouthGag(the_form)
			return the_form
		endif
	endif

	; if not in slot, loop over items and return first item with Zaz keyword
	Int i = akRef.GetNumItems()
	while i > 0
		i -= 1
		the_form = akRef.GetNthForm(i)
		if the_form != None 
			if IsItemMouthGag(the_form)
				return the_form
			endif
		endif
	endWhile
	return None
EndFunction

Form Function GetEquippedBlindfold(Actor akRef)
	Int iBlindfoldSlotMask = 0x00001000 ; akCirclet = 42
	Form the_form = akRef.GetWornForm(iBlindfoldSlotMask)
	if the_form != None
		if IsItemBlindfold(the_form)
			return the_form
		endif
	endif
	iBlindfoldSlotMask = 0x02000000 ; kSlotMask55 ; Unnamed
	the_form = akRef.GetWornForm(iBlindfoldSlotMask)
	if IsItemBlindfold(the_form)
		return the_form
	endif

	; if not in slot, loop over items and return first item with Zaz keyword
	Int i = akRef.GetNumItems()
	while i > 0
		i -= 1
		the_form = akRef.GetNthForm(i)
		if the_form != None && IsItemBlindfold(the_form)
			return the_form
		endif
	endWhile
	return None
EndFunction

bool Function isZazSlave(Actor akRef)
	if zbfFactionSlave == None
		return false
	endif
	return akRef.IsInFaction(zbfFactionSlave)
EndFunction

Function AddToZazSlaveFaction(Actor akRef)
	if zbfFactionSlave == None
		return
	endif
	akRef.AddToFaction(zbfFactionSlave)
EndFunction

Function RemoveFromZazSlaveFaction(Actor akRef)
	if zbfFactionSlave == None
		return
	endif
	akRef.RemoveFromFaction(zbfFactionSlave)
EndFunction

bool Function isZazSlaver(Actor akRef)
	if zbfFactionSlaver == None
		return false
	endif
	return akRef.IsInFaction(zbfFactionSlaver)
EndFunction

Function AddToZazSlaverFaction(Actor akRef)
	if zbfFactionSlaver == None
		return
	endif
	akRef.AddToFaction(zbfFactionSlaver)
EndFunction

Function RemoveFromZazSlaverFaction(Actor akRef)
	if zbfFactionSlaver == None
		return
	endif
	akRef.RemoveFromFaction(zbfFactionSlaver)
EndFunction

Function AddToZazGagAllowTalkFaction(Actor akRef)
	if zbfFactionGagAllowTalk == None
		return
	endif
	akRef.AddToFaction(zbfFactionGagAllowTalk)
EndFunction

Function RemoveFromZazGagAllowTalkFaction(Actor akRef)
	if zbfFactionGagAllowTalk == None
		return
	endif
	akRef.RemoveFromFaction(zbfFactionGagAllowTalk)
EndFunction

Function DSE_DM_RegisterActor(Actor Who, dse_dm_ActiPlaceableBase Device, Int Slot)
	if Device == None
		return
	endif
	LogTrace("Actor "+Who.GetDisplayName()+ " is locked in device "+Device.GetDisplayName())
	DOM_Actor akActor = DOMCore.GetActor(Who)
	if akActor != None
		LogTrace("DOM Actor "+akActor.GetName()+ " is locked in device "+Device.GetDisplayName())
		akActor.EnterOnDutyRestrained("will be locked in device "+Device.GetDisplayName(), Device.GetDisplayName())
	endif
EndFunction

Function DSE_DM_UnregisterActor(Actor Who, dse_dm_ActiPlaceableBase Device, Int Slot)
	LogTrace("Actor "+Who.GetDisplayName()+ " is released from DM3 furniture")
	DOM_Actor akActor = DOMCore.GetActor(Who)
	if akActor != None
		LogTrace("DOM Actor "+akActor.GetName()+ " is released from DM3 furniture")
		akActor.ExitOnDuty()
	endif
EndFunction

Function RegisterForSexLab()
	if ZAZ == None
		return
	endif
	ZAZ.RegisterForSexLab()
EndFunction

Function WriteConfig(string fileName)
	if ZAZ == None
		return
	endif
	JsonUtil.SetIntValue(fileName, "zazoverride", ZAZ.bOverrideSexLabAnimation as Int)
EndFunction

Function ReadConfig(string fileName)
	if ZAZ == None
		return
	endif
	ZAZ.bOverrideSexLabAnimation = JsonUtil.GetIntValue(fileName, "zazoverride", 0)
EndFunction

Function AddExtFurniture()
	bool HasZaz8 = (Game.GetFormFromFile(0x0005e869, "ZaZAnimationPack.esm") != None)
	bool HasZazExtension = (Game.GetModByname("ZazExtensionPack.esm") != 255)
	bool HasZaz622p = (Game.GetFormFromFile(0x00096766, "ZaZAnimationPack.esm") != None)
	bool HasTaraPack = ((Game.GetModByname("TaraUltimateFurniturePack.esm") != 255) && (Game.GetFormFromFile(0x0002f7e4, "TaraUltimateFurniturePack.esm") != None))
	
	if (HasZaz8)
		return		; Zaz 8 now includes the list
	endif

	if ((HasZazExtension) && (!ZazFurnitureList.HasForm(Game.GetFormFromFile(0x0000fba8, "ZazExtensionPack.esm") )))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00003e1b, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fba8, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bac9, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001113b, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bacd, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d7e0, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d5e5, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000038b1, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000038b2, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bacb, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000baca, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00010113, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000116a0, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00002302, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00003e1c, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000053c6, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000038ab, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00004e5f, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bac8, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00003e1a, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fba9, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bace, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000038a3, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000053c4, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000053c8, "ZazExtensionPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000bacc, "ZazExtensionPack.esm"))
	endif

	if ((HasZaz622p) && (!ZazFurnitureList.HasForm(Game.GetFormFromFile(0x00096766, "ZaZAnimationPack.esm") )))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00096766, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0013d9b3, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00063d0e, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0013d9b7, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000a5ac8, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x001d5919, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0013d9b8, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0013d9b6, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x001d592c, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0004a7dd, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00147bd2, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00300631, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00300637, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0015c021, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x001d5929, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x001d5927, "ZaZAnimationPack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x001daa3a, "ZaZAnimationPack.esm"))
	endif

	if ((!HasZaz8) && (HasTaraPack) && (!ZazFurnitureList.HasForm(Game.GetFormFromFile(0x0001b665, "TaraUltimateFurniturePack.esm") )))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00001d90, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000034a3, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00003a08, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00004a46, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000552d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005532, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005533, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005534, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005535, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005536, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005537, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005538, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005539, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005541, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005543, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005545, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005547, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00005549, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000658c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000807e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b45, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b47, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b49, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b4b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b4d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00008b4f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009b99, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009b9a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009b9b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009b9c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009b9d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009ba3, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009baf, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009bb1, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009bb2, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009bb5, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00009bb6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000a696, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000b328, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c35b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c35d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c35f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c361, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c363, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c365, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c367, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c369, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c36b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c371, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000c373, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce90, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce91, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce92, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce93, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce94, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce95, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce96, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce97, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce98, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce99, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000ce9f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000cea0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000cea1, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d995, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d997, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d998, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000d999, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000df0c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000df0d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000e47a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000e9e4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fa28, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fa2a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fa2c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0000fa2e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00010fcc, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00010fce, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00010fd0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00010fd2, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00011536, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00011aa0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00011aab, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00011aac, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00012013, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001304f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001408b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b86, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b87, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b88, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b89, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b8f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b90, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00014b91, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156bc, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156be, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156c0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156c4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156c6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156c8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156ca, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156cc, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156ce, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000156d0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00016f56, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174d4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174d5, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174d6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174d7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174dc, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174dd, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174de, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000174df, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a91, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a92, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a93, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a94, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a95, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a96, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a97, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a98, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a99, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00017a9f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00018015, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00018016, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00018017, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001905e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000195f6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000195f7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000195f8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000195f9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000195fa, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00019b66, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001a0ca, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001b65f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001b663, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001bbcb, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001bbd8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001bbd9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001c145, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001c147, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001cc16, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001cc18, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001cc1e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001d185, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001e71d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001e71f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001f1f9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001f1fa, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001f778, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001fcfc, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001fcdd, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001fcde, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001fcdf, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0001fce9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00020252, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00020259, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000207c6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00020d2c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00020d33, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00020d35, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00021810, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00021817, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00021819, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228e8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228ea, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228eb, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228ed, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228f0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228f3, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228f5, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228f7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228f9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228fb, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228fd, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000228ff, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022901, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022909, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022913, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022915, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022917, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022919, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002291b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022920, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022922, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022924, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022926, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00022928, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000233f3, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00024f7f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254e6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254e7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254e8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254e9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254ea, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254eb, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254ec, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254ed, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254ee, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254ef, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f1, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f2, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f3, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f5, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000254f8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a73, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a74, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a75, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a76, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a77, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a78, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a79, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00025a7f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00026583, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00026584, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000275c4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002860e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000290d9, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002963d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00029bab, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002a114, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002a67f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002a690, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002c720, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002d76b, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002dcd0, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002e799, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f278, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f27a, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f27c, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f27d, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f27f, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f7e4, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002f7e6, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002fd50, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x0002fd51, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00030d7e, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x00030d81, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000312e7, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000312e8, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000312eb, "TaraUltimateFurniturePack.esm"))
		ZazFurnitureList.AddForm(Game.GetFormFromFile(0x000312ec, "TaraUltimateFurniturePack.esm"))
	endif

;	if ((HasZaz8) && (!ZazFurnitureList.HasForm(Game.GetFormFromFile(0x00049e85, "ZaZAnimationPack.esm") )))
;		FormList Zaz8Furni = Game.GetFormFromFile(0x0007d12a, "ZaZAnimationPack.esm") as FormList
;		if (Zaz8Furni != None)
;			int i = Zaz8Furni.GetSize() - 1
;			PHHSH.DebugLog("Adding " + i + " forms from ZAP")
;			while (i >= 0)
;				ZazFurnitureList.AddForm(Zaz8Furni.GetAt(i))
;;				Furniture f = Zaz8Furni.GetAt(i) as Furniture
;;				PHHSH.DebugLog("," + f.GetName() + "," + f.GetFormID())
;				i -= 1
;			endwhile
;		endif
;	endif
EndFunction

Function LogTrace(string msg)
	if DOMCore.verboseMode
		Debug.Trace("DOM_Zaz: "+msg)
	endif
EndFunction

Function LogInfo(string msg)
	Debug.Trace("DOM_Zaz: "+msg)
EndFunction