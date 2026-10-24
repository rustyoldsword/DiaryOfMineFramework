Scriptname DOM_Equip extends Quest
Import Utility
Import DOM_Util
Import DOM_EquipUtil
DOM_Core Property DOMCore Auto
DOM_SEXLAB Property DOMSexlab Auto
DOM_ZAZ Property DOMZaz Auto
DOM_PAH Property DOMPAH Auto
DOM_ZAD Property DOMZad Auto
Actor Property PlayerRef Auto
bool Property verboseEquip = false Auto Hidden
bool Property neverAutoEquip = false Auto Hidden
bool Property allowSlavesGearToggle = false Auto Hidden
bool Property allowSlaversGearToggle = true Auto Hidden
bool Property itemEquipToggle = true Auto Hidden
bool Property instantEquipToggle = true Auto Hidden
bool Property instantUnEquipToggle = false Auto Hidden
bool Property cellEquipToggle = false Auto Hidden
bool Property locationEquipToggle = true Auto Hidden
bool Property useStripKeywords = true Auto Hidden
bool Property resetStripKeywords = false Auto Hidden
bool Property sendDOMEquipEvent = true Auto Hidden
bool Property cleanUniqueOutfit = true Auto Hidden
bool Property cleanSpawnOutfit = true Auto Hidden
bool Property cleanSlaverOutfit = false Auto Hidden
bool Property restoreOutfitUnique = true Auto Hidden
bool Property restoreOutfitSpawn = true Auto Hidden
bool Property restoreOutfitAlways = false Auto Hidden
bool Property neverStripFX  = false Auto Hidden
bool Property stripAndDropToggle  = false Auto Hidden
bool Property stripDeleteToggle  = false Auto Hidden
bool Property stripLootToggle    = true Auto Hidden
bool Property stripItemsToggle    = false Auto Hidden
bool Property stripUnequippedToggle = true Auto Hidden
bool Property stripWeaponsToggle = true Auto Hidden
bool Property stripShieldsToggle  = true Auto Hidden
bool Property stripHeelsToggle = false Auto Hidden
bool Property stripUnderwearToggle = false Auto Hidden
bool Property stripJewelryToggle = false Auto Hidden
bool Property shameArea52 = false Auto Hidden
bool Property maskPubicArea = true Auto Hidden
bool Property maskFillHerUp = true Auto Hidden
bool Property has_SOS = false Auto Hidden
Faction Property DOMNotPlayerSlaveFaction Auto
Faction Property DOMPlayerSlaveFaction Auto
Faction Property DOMShouldNotWearGear Auto
Faction Property DOMNoAutoEquip Auto
Faction Property DOMNoOutfitFaction Auto
Faction Property DOMWorkMode Auto
Faction Property DOMActionWorking Auto
Faction Property DOMActionPunishing Auto
Faction Property DOMLoveDesire Auto
Faction Property DOMTrainResignation Auto
Keyword Property DOMNoStrip Auto
Keyword Property DOMAlwaysStrip Auto
Keyword Property DOMNotDevice Auto
Keyword Property DOMIsDevice Auto
Keyword Property DOMNotSpecial Auto
Keyword Property DOMIsSpecial Auto
Keyword Property DOMNotIgnore Auto
Keyword Property DOMIsIgnore Auto
Keyword Property EroticArmor Auto Hidden
Keyword Property ArmorCuirass Auto
Keyword Property ArmorClothing Auto
Keyword Property ArmorJewelry Auto
Keyword Property ArmorShield Auto
Keyword Property ClothingBody Auto
Keyword Property ClothingPoor Auto
Keyword Property ClothingRich Auto
Keyword Property ClothingSexy Auto
Keyword Property ClothingHeels Auto
Keyword Property ClothingNotHeels Auto
Keyword Property ClothingShame Auto
Keyword Property JewelryExpensive Auto
Keyword Property VendorItemJewelry Auto
Keyword Property ClothingUnderwear Auto
Keyword Property ClothingLingerie Auto
Keyword Property ClothingNotLingerie Auto
Keyword Property ClothingJewelry Auto Hidden
Keyword Property ClothingPanties Auto Hidden
Keyword Property ClothingBra Auto Hidden
Keyword Property Panties Auto Hidden
Keyword Property Bra Auto Hidden
Keyword Property Lingerie Auto Hidden
Keyword Property Underwear Auto Hidden
Keyword Property FemalePanties Auto Hidden
Keyword Property ArmorMaterialKSWigs Auto Hidden
Outfit Property DOMNothingOutfit Auto
Outfit Property FineClothesOutfit01 Auto
Outfit Property FineClothesOutfit02VariantWithHat Auto
Outfit Property PrisonerOutfit Auto
Outfit Property FarmClothesRandom Auto
Outfit Property BanditArmorMeleeNoShieldOutfit Auto
Outfit Property HunterClothesRND Auto
Outfit Property JarlClothesOutfit01 Auto
Outfit Property JarlClothesOutfit02 Auto
Outfit Property JarlClothesOutfit03 Auto
Keyword Property WeapMaterialWood Auto
Keyword Property WeapMaterialLeather Auto
Keyword Property WeapTypeUnarmed Auto
Keyword Property WeapTypeWhip Auto Hidden
Keyword Property WeapTypeWhipAA Auto Hidden
Keyword Property ArmorMaterialFiber Auto
Keyword Property ArmorMaterialLeather Auto
Keyword Property ArmorMaterialIron Auto
Keyword Property ArmorMaterialSteel Auto
FormList Property mineOreToolsList auto
FormList Property woodChoppingAxes auto
Weapon Property weapPickaxe Auto
Weapon Property DOMWhip Auto
Light Property Torch01 Auto
MiscObject Property broom01 Auto
MiscObject Property Gold001 Auto
Function Initialize()
EndFunction
Function EquipItemTight(Actor akRef, Form the_form)
EndFunction
Function UnEquipItemTight(Actor akRef, Form the_form)
EndFunction
Function EquipItemLoose(Actor akRef, Form the_form)
EndFunction
Function UnEquipItemLoose(Actor akRef, Form the_form)
EndFunction
int Function UnEquipArmor(Actor akRef)
	Return 0
EndFunction
int Function EquipArmor(Actor akRef)
	Return 0
EndFunction
int Function EquipClothes(Actor akRef)
	Return 0
EndFunction
int Function EquipInventory(Actor akRef, bool use_light = false, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
	Return 0
EndFunction
Function EquipItemMisc(Actor akRef, Form the_form, int type, bool use_light)
EndFunction
Function EquipItemSpecial(Actor akRef, Form the_form)
EndFunction
Function EquipItemDevice(Actor akRef, Form the_form)
EndFunction
Function EquipItemArmorNaked(Actor akRef, Armor item_as_armor)
EndFunction
Function EquipItemArmorClothes(Actor akRef, Armor item_as_armor, Armor item_already_in_slot)
EndFunction
Function EquipItemShield(Actor akRef, Armor item_as_armor, Armor item_already_in_slot, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
EndFunction
Function EquipItemArmor(Actor akRef, Armor item_as_armor, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
EndFunction
bool Function EquipItemTool(Actor akRef, Weapon item_as_weapon, Weapon item_already_equipped)
	Return False
EndFunction
Function EquipItemWeapon(Actor akRef, Weapon item_as_weapon, bool should_hold_weapons = true)
EndFunction
Function EquipItemAmmo(Actor akRef, Ammo item_as_ammo, bool should_hold_weapons = true)
EndFunction
int Function EquipItemForm(Actor akRef, Form the_form, bool use_light = false, bool should_be_naked, bool should_wear_armor, bool should_hold_weapons)
	Return 0
EndFunction
int Function EquipItemWearable(Actor akRef, Form the_form, bool use_light = false, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
	Return 0
EndFunction
Function EquipLeveledItem(Actor akRef, Form the_leveleditem)
EndFunction
Function EquipOutfit(Actor akRef, bool use_light = false, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
EndFunction
bool Function ProcessToBeStripped(Form the_form)
	Return False
EndFunction
bool Function ProcessItemHeels(Form the_form)
	Return False
EndFunction
bool Function ProcessItemLingerie(Form the_form)
	Return False
EndFunction
bool Function ProcessItemJewelry(Form the_form)
	Return False
EndFunction
bool Function ProcessItemDevice(Form the_form)
	Return False
EndFunction
bool Function ProcessItemIgnore(Form the_form)
	Return False
EndFunction
bool Function ProcessItemSpecial(Form the_form)
	Return False
EndFunction
int Function GetMaterial(Form cuffs)
	Return 0
EndFunction
float Function GetMaterialModifier(Form cuffs)
	Return 0.0
EndFunction
bool Function isWig(Armor wig)
	Return False
EndFunction
Form Function FindLight(Actor akRef)
	Return None
EndFunction
Function CheckLight(Actor akRef)
EndFunction
Function EquipLight(Actor akRef)
EndFunction
Function UnequipLight(Actor akRef)
EndFunction
bool Function IsLight(Form akBaseObject)
	Return False
EndFunction
Function EquipPick(Actor akRef)
EndFunction
Function UnequipPick(Actor akRef)
EndFunction
bool Function IsWeaponMineTool(Form akSource)
	Return False
EndFunction
Function EquipBroom(Actor akRef)
EndFunction
Function UnequipBroom(Actor akRef)
EndFunction
bool Function IsCleaningTool(Form akBaseObject)
	Return False
EndFunction
Function EquipWhip(Actor akRef)
EndFunction
Function UnequipWhip(Actor akRef)
EndFunction
bool Function IsWeaponWhip(Form akSource)
	Return False
EndFunction
bool Function IsWeaponCane(Form akSource)
	Return False
EndFunction
bool Function IsWeaponSlap(Form akSource)
	Return False
EndFunction
bool Function IsItemDevice(Form the_form)
	Return False
EndFunction
bool Function IsItemIgnore(Form the_form)
	Return False
EndFunction
bool Function IsItemSpecial(Form the_form)
	Return False
EndFunction
bool Function IsToBeStripped(Form the_form)
	Return False
EndFunction
int Function EquipWeapon(Actor akRef)
	Return 0
EndFunction
bool Function ShouldEquipWeapon(Actor akRef, Weapon item_as_weapon)
	Return False
EndFunction
bool Function HasShameClothes(Actor akRef)
	Return False
EndFunction
bool Function HasEquippedClothes(Actor akRef)
	Return False
EndFunction
bool Function HasClothes(Actor akRef)
	Return False
EndFunction
int Function HasJewelry(Actor akRef)
	Return 0
EndFunction
int Function HasGold(Actor akRef)
	Return 0
EndFunction
Function SetAllowGearFaction(Actor akRef, bool gear_allowed, bool is_slave)
EndFunction
Function CheckCloneEquipment(ActorBase original_base, Actor original, Actor clone)
EndFunction
FormList Property DOMSavedEquipment Auto
Function SaveCurrentEquipment(Actor akTarget)
EndFunction
Function RestoreCurrentEquipment(Actor akTarget)
EndFunction
Outfit Function CheckAndTransferOutfit(Actor akTarget, bool re_equip)
	Return None
EndFunction
Outfit Function TransferOutfitIfSettings(Actor akRef, bool reequip)
	Return None
EndFunction
bool Function OutfitIsToBeCleared(Actor akRef)
	Return False
EndFunction
Outfit Function TransferOutfitIfUnique(Actor akRef, bool reequip)
	Return None
EndFunction
Function RestoreOutfit(Actor akRef, int actorType, Outfit old_outfit, bool restore_outfit_on_release)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
