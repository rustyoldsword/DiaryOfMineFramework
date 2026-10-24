Scriptname DOM_Actor extends ReferenceAlias
Import Utility
Import DOM_Util
Import DOM_EquipUtil
DOM_Core Property DOM01 Auto
Actor Property PlayerRef Auto Hidden
ReferenceAlias Property target Auto Hidden
DOM_Mind Property mind = None Auto Hidden
Function MoveBone(string node, Float value, bool update = true)
EndFunction
Function AddBodyMorph(String morphName, Float value, bool update = true)
EndFunction
bool __canAnimateLocal = true
bool Property canAnimateLocal Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __canAnimateGlobal = true
bool Property canAnimateGlobal Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __canIdleSexlab = true
bool Property canIdleSexlab Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __canAnimateSexlab = true
bool Property canAnimateSexlab Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __canAnimate = true
bool Property canAnimate Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __canMove = false
bool Property canMove Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Property canRunAway Hidden
bool Function get()
	Return False
EndFunction
EndProperty
bool canFight = false
bool __canIdle = false
bool Property canIdle Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Property canIdleSoft Hidden
bool Function get()
	Return False
EndFunction
EndProperty
bool Property is_in_combat    = false Auto Hidden
bool Property is_sitting      = false Auto Hidden
bool __is_moving = false
bool Property is_moving Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
Float last_pos_x
Float last_pos_y
Function CheckCombatStatus()
EndFunction
bool is_idling = false
Function UpdateIsMovingOnTick()
EndFunction
Actor Property akRef Auto Hidden
int Property actorSex Auto Hidden
int Property actorType = 0  Auto Hidden
int Property actorRace = 0  Auto Hidden
String name = "Unnamed Actor"
String title
string Property actorPossessive = "" Auto Hidden
string Property actorObjective = "" Auto Hidden
string Property actorPronoun = "" Auto Hidden
string Property actorBeVerb = "" Auto Hidden
string Property actorHaveVerb = "" Auto Hidden
Event OnBootstrap(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
EndEvent
Event OnLoad()
EndEvent
Function ReCheck()
EndFunction
Event AfterAssign(bool isSlave, bool newActor, bool playerOwned)
EndEvent
bool __is_initializing = false
bool __is_mind_initializing = false
bool Property is_initializing  Hidden
bool Function Get()
	Return False
EndFunction
Function Set(bool value)
EndFunction
EndProperty
Function SetActorReady()
EndFunction
Function SetActorBusy()
EndFunction
Function SetMindReady()
EndFunction
Function SetMindBusy()
EndFunction
Function SetCombatPackageOverride()
EndFunction
Function UnSetCombatPackageOverride()
EndFunction
Function SetGender()
EndFunction
string Function GetGenderbyString()
	Return ""
EndFunction
Function SetGenderByString(string str_gender)
EndFunction
Function SetProperties(bool isSlave, bool playerOwned)
EndFunction
Function ClearValues()
EndFunction
Function ClearFactions()
EndFunction
bool before_clear_is_busy = false
Event BeforeClear()
EndEvent
Function DoClear()
EndFunction
Function SetPlayerPotentialFollower()
EndFunction
Function ReleaseOrDelete(bool is_freed = true)
EndFunction
Function setDisplayName(string newName)
EndFunction
String Function getName()
	Return ""
EndFunction
Function setTitle(string newTitle = "")
EndFunction
Function setTitleByType(bool isSlave)
EndFunction
String Function getTitle()
	Return ""
EndFunction
Function SetInitialBehaviour(string last_anim)
EndFunction
Function InformIsCaptured()
EndFunction
Function InformIsCapturedAndTieUp()
EndFunction
Function InformIsCapturedAndWait()
EndFunction
Function InformIsCapturedAndFollow()
EndFunction
bool Function SetBehaviourByFaction()
	Return False
EndFunction
bool on_update = false
Event OnUpdate()
EndEvent
bool on_update_gametime = false
Event OnUpdateGameTime()
EndEvent
bool Function HitIsHostile(Form akSource, Projectile akProjectile)
	Return False
EndFunction
Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
EndEvent
Event OnActivate(ObjectReference akActionRef)
EndEvent
Event OnGrab()
EndEvent
Event OnDeath(Actor akKiller)
EndEvent
Event OnVampirismStateChanged(bool abIsVampire)
EndEvent
Event OnVampireFeed(Actor akTarget)
EndEvent
ReferenceAlias __hsh_home_cell
ReferenceAlias Property hsh_home_cell Hidden
ReferenceAlias Function get()
	Return None
EndFunction
Function set(ReferenceAlias value)
EndFunction
EndProperty
Location Property current_location = None Auto Hidden
String Property current_location_name = "" Auto Hidden
Function UpdateLocation(Location akNewLoc)
EndFunction
Event OnCellLoad()
EndEvent
Event OnLocationChange(Location akOldLoc, Location akNewLoc)
EndEvent
Event OnGainLOS(Actor akViewer, ObjectReference akTarget)
EndEvent
Event OnAnimationEvent(ObjectReference akSource, string asEventName)
EndEvent
Function RegisterModEvents()
EndFunction
Function UnregisterModEvents()
EndFunction
Function UnRegisterForEquipInventory()
EndFunction
Function RegisterForWhistleEvents()
EndFunction
Function UnregisterForWhistleEvents()
EndFunction
Function RegisterForAnimEvent()
EndFunction
Function UnregisterForAnimEvent()
EndFunction
bool Property sendExternalEventToggle = false Auto Hidden
Function SetSendExternalEvents(bool status)
EndFunction
bool Property sendExternalEventToggleExt = false Auto Hidden
Function SetSendExternalEventsExt(bool status)
EndFunction
bool Property sendExternalEventToggleExt2 = false Auto Hidden
Function SetSendExternalEventsExt2(bool status)
EndFunction
bool Property sendExternalEventToggleExt3 = false Auto Hidden
Function SetSendExternalEventsExt3(bool status)
EndFunction
Function SendExternalEventSSSBS(string the_event, string type, string reason, bool flag, string txt)
EndFunction
Function SendExternalEventSSBS(string the_event, string type, bool flag, string txt)
EndFunction
Function SendExternalEventSFB(string the_event, float value, bool flag)
EndFunction
Function SendExternalEventSSFB(string the_event, string type, float value, bool flag)
EndFunction
Function SendExternalEventSSB(string the_event, string type, bool flag)
EndFunction
Function SendExternalEventSSSB(string the_event, string type, string reason, bool flag)
EndFunction
Function SendExternalEventSSS(string the_event, string type, string reason)
EndFunction
Function SendExternalEventSSF(string the_event, string type, float value)
EndFunction
Function SendExternalEventSS(string the_event, string type)
EndFunction
Function SendExternalEventSI(string the_event, int value)
EndFunction
Function SendExternalEventSSI(string the_event, string type, int value)
EndFunction
Function SendExternalEventS(string the_event)
EndFunction
Function RegisterForOrder(Form sender, string the_event, string type, bool flag=false)
EndFunction
Function RegisterForDOMEvent(Form sender, string the_event)
EndFunction
Function UnRegisterForDOMEvent(Form sender, string the_event)
EndFunction
Function SendOrderAnimate(string the_pose, bool the_flag)
EndFunction
Function SendOrderAnimateStrip()
EndFunction
Function SendOrderAnimateAbductionBack(Actor akVictim)
EndFunction
Function SendOrderAnimateAbductionFront(Actor akVictim)
EndFunction
Function SendOrderAnimateAbductionFloor(Actor akVictim)
EndFunction
Function SendOrderAnimateUndress(Actor akAbuser)
EndFunction
Function SendOrderAnimateDressUp()
EndFunction
Function SendOrderEquipInventoryNoApply(bool do_anim)
EndFunction
Function SendOrderEquipInventoryQuiet(bool do_anim)
EndFunction
Function SendOrderEquipInventoryForced(string msg, bool do_anim)
EndFunction
Function SendOrderEquipInventory(bool do_anim)
EndFunction
Function SendOrderApplyEquipmentEffects()
EndFunction
Function DoOrder(Form sender, string the_event, string type, bool flag=false)
EndFunction
Event OnOrderAnimate(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateStrip(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateAbductionBack(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateAbductionFront(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateAbductionFloor(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateUndress(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAnimateDressUp(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTieUp(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTieUpAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTieUpAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTieUpGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderChain(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderChainAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderChainAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderChainGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCage(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCageAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCageAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCageGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPost(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPostAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPostAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPostGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCross(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCrossAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCrossAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCrossGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPillory(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPilloryAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPilloryAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPilloryGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWheel(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWheelAndGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWheelAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWheelGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderRemoveGag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderRemoveBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderRemoveGagAndBlindfold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddCuffsFront(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddCuffsBack(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddCuffsCrossed(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddCuffsBoxTied(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddYoke(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddArmbinder(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddCuffs(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderRemoveCuffs(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddPlugAnal(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAddPlugVaginal(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderRemovePlug(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderInBag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderOutBag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderGatherBag(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDrinkThis(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderThreaten(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPromise(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderBeNaked(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDontBeNaked(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderNoOrgasm(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderFreeOrgasm(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderStrip(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderStripAll(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderStripWeapons(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderStripArmor(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderUndressBeforeSex(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTryWearClothes(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderEquipInventory(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderEquipInventoryForced(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderEquipInventoryNoApply(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderEquipInventoryQuiet(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderApplyEquipmentEffects(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderScold(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderPraise(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderInsult(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderFlatter(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderShower(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderMasturbate(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderBeSilent(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderBeRespectful(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWalkOnFour(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderFightForMe(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDontFightForMe(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderFollow(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderFollowIfPosing(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderStandStill(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWaitHere(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderWork(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderGoToJail(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoDisplay(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoStandUp(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoCalm(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoStandUpAndCalm(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoDance(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoMusic(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoFlowers(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoDrinks(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoSubmissive(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoCute(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoAssPresentation(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoBreastsPresentation(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoPussyPresentation(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoChair(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDoLight(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderDisplay(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderKneel(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderAttention(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderSalute(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderBrandMe(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderMarkMe(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderLookAtMe(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderTurnAround(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderComeHere(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderSeparateFromTrainer(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderSetTrainer(Form sender, string the_event, string type, bool flag)
EndEvent
Event OnOrderCheckFriendship(Form sender, string the_event, float amount, int idx, string type)
EndEvent
Event OnOrderCheckFriendshipAfterAssign(Form sender, string the_event, float amount, int idx, string type)
EndEvent
Event OnOrderFriendIsDead(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderFriendIsFreed(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderFriendIsMoved(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderIncrementFling(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderIncrementRape(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderIncrementChat(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderTrainWitness(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderTrainForSlaver(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event OnOrderTrainForFriend(Form sender, string the_event, float amount, int reason, string type)
EndEvent
Event DOMWhistle(string eventName, string strArg, float numArg, Form sender)
EndEvent
Event OnCombatStateChanged(Actor akTarget, int aeCombatStatus)
EndEvent
Event OnSit(ObjectReference akFurniture)
EndEvent
Event OnGetUp(ObjectReference akFurniture)
EndEvent
Event OnActorAction(int actionType, Actor akTarget, Form source, int slot)
EndEvent
Function HandlePunishmentOnHit(Actor akAbuser, Form akSource)
EndFunction
Float prehit_health = 100.0
Form pain_giver = None
float Function HandleHealthOnHit(Form akSource)
	Return 0.0
EndFunction
bool Function HandleAlarmOnHit()
	Return False
EndFunction
Function PrepareForSacrifice()
EndFunction
Function UnprepareForSacrifice()
EndFunction
int ticksSinceRegen = 0
Function HandleRegenOnUpdate()
EndFunction
float dirtTimer = 0.0
Function HandleDirtOnUpdate()
EndFunction
int lastWeatherType = 0
Function HandleWeatherOnUpdate()
EndFunction
bool Property was_inventory_changed = true Auto Hidden
bool __equip_inventory_cancel = false
bool __equip_inventory_busy = false
bool Property equip_inventory_busy Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool is_inventory_open = false
bool wait_for_equipment = false
int cuffs_material = 0
bool __is_in_dungeon = false
bool Property is_in_dungeon Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_in_city = false
bool Property is_in_city Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_naked = false
bool Property is_naked Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_shamed = false
bool Property is_shamed Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Property has_shield_in_inventory = false Auto Hidden
bool Property has_body_armor_in_inventory = false Auto Hidden
bool Property has_armor_in_inventory = false Auto Hidden
bool Property has_clothes_in_inventory = false Auto Hidden
bool __has_cuffs_crossed = false
bool Property has_cuffs_crossed Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_cuffs_front = false
bool Property has_cuffs_front Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_cuffs_boxtied = false
bool Property has_cuffs_boxtied Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_cuffs_back = false
bool Property has_cuffs_back Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_yoke = false
bool Property has_yoke Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_armbinder = false
bool Property has_armbinder Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_mouth_gag = false
bool Property has_mouth_gag Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_arms_device = false
bool Property has_arms_device Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_dwarven_device = false
bool Property has_dwarven_device Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_dd_suit = false
bool Property has_dd_suit Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_petsuit = false
bool Property has_petsuit Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_straitjacket = false
bool Property has_straitjacket Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_cuffs = false
bool Property has_cuffs Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_disablekick = false
bool Property has_disablekick Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_device = false
bool Property has_device Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_collar = false
bool Property has_collar Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_blindfold = false
bool Property has_blindfold Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_leash = false
bool Property has_leash Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_plug_anal = false
bool Property has_plug_anal Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_plug_vaginal = false
bool Property has_plug_vaginal Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_weapon_in_inventory = false
bool Property has_weapon_in_inventory Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
Float __has_weapon = 0.0
Float Property has_weapon Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __dirty_level = 0.0
Float Property dirty_level Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __wet_level = 0.0
Float Property wet_level Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __has_body_armor = 0.0
Float Property has_body_armor Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __has_armor = 0.0
Float Property has_armor Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
Float __has_shield = 0.0
Float Property has_shield Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
bool __has_shame_clothes = false
bool Property has_shame_clothes Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_lingerie = false
bool Property has_lingerie Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __has_heels = false
bool Property has_heels Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_restrained = false
bool Property is_restrained Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool __is_bounded = false
bool Property is_bounded Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool Property is_jailed = false Auto Hidden
bool __is_leashed = false
bool Property is_leashed Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
Float __has_jewelry = -1.0
Float Property has_jewelry Hidden
Float Function get()
	Return 0.0
EndFunction
Function set(Float value)
EndFunction
EndProperty
int __has_gold = -1
int Property has_gold Hidden
int Function get()
	Return 0
EndFunction
Function set(int value)
EndFunction
EndProperty
bool Function IsShamed()
	Return False
EndFunction
Function SetNakedStatus()
EndFunction
Function SetBondageDeviceStatus()
EndFunction
Function SetWeaponStatus()
EndFunction
Function SetArmorStatus()
EndFunction
Function SetShameClothesStatus()
EndFunction
Function SetBoundStatus()
EndFunction
Function SetJewelryStatus()
EndFunction
Function OpenInventory()
EndFunction
Function CloseInventory()
EndFunction
Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
EndEvent
Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
EndEvent
Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
EndEvent
Event OnObjectUnEquipped(Form akBaseObject, ObjectReference akReference)
EndEvent
Function UnequipAll()
EndFunction
Function EquipInventoryNow(bool do_anim=false)
EndFunction
Function EquipInventoryNowForced(int reason=1, string msg="", bool do_anim=true)
EndFunction
Function EquipInventoryNowQuiet(bool do_anim=false)
EndFunction
Function EquipInventoryNowNoApply(bool do_anim=false)
EndFunction
Event OnEquipInventory(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
EndEvent
Event OnEquipInventoryQuiet(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
EndEvent
Event OnEquipInventoryNoApply(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
EndEvent
int Function EquipInventory(bool use_light = false, bool should_be_naked = false, bool should_wear_armor = true, bool should_hold_weapons = true)
	Return 0
EndFunction
Function ApplyEquipmentEffects()
EndFunction
Event OnApplyEquipmentEffects()
EndEvent
Function EquipGag(Form the_gag = None)
EndFunction
Function RemoveGag(bool should_drop=true)
EndFunction
Function EquipBlindfold(Form the_blindfold)
EndFunction
Function RemoveBlindfold(Actor akAbuser, bool should_drop=true)
EndFunction
Function EquipPlugAnal(Form the_plug = None)
EndFunction
Function RemovePlugAnal(Actor akAbuser, bool should_drop=true)
EndFunction
Function EquipPlugVaginal(Form the_plug = None)
EndFunction
Function RemovePlugVaginal(Actor akAbuser, bool should_drop=true)
EndFunction
Form equipped_cuffs = None
Function EquipCuffs(Form cuffs, Actor akAbuser = None)
EndFunction
Function RemoveCuffs(Actor akAbuser=None)
EndFunction
Function EnterWait()
EndFunction
Function EnterWaitSandbox()
EndFunction
Function EnterJailByMode()
EndFunction
Function EnterJailTravel(int imode)
EndFunction
Function EnterJailStand()
EndFunction
Function EnterJailSandbox()
EndFunction
Function EnterGuard()
EndFunction
Function EnterDropTraineesAndComeBack()
EndFunction
Function EnterGuardCamp()
EndFunction
Function EnterGuardMsg(string duty_msg, string duty_title)
EndFunction
Function EnterSweep()
EndFunction
Function EnterWork(int imode)
EndFunction
Function EnterPunishing()
EndFunction
Function EnterSexTraining()
EndFunction
Function EnterOrgyTraining()
EndFunction
Function SetFollowMode(int imode)
EndFunction
Function SetWaitMode(int imode)
EndFunction
Function SetTravelMode(int imode)
EndFunction
Function EnterFollowPlayer()
EndFunction
Function EnterFollowPlayerIfNearby()
EndFunction
Function EnterFollowPlayerIfPosing()
EndFunction
Function ExitTieUpIfTied(Actor akAbuser)
EndFunction
Function EnterGagged(Actor akAbuser, Form the_gag = None)
EndFunction
Function ExitGagged(Actor akAbuser)
EndFunction
Function EnterBlindfolded(Actor akAbuser, Form the_blindfold = None)
EndFunction
Function ExitBlindfolded(Actor akAbuser)
EndFunction
Function EnterCuffed(Actor akAbuser, int itype = 0)
EndFunction
Function ExitCuffed(Actor akAbuser)
EndFunction
bool Function HasCuffs(int itype)
	Return False
EndFunction
bool Function IsCuffed()
	Return False
EndFunction
Function SetCuffsStatus()
EndFunction
Function EnterPlugged(Actor akAbuser, bool is_vaginal=false)
EndFunction
Function ExitPlugged(Actor akAbuser, bool is_vaginal=false)
EndFunction
Function EnterRestrainedBehaviour(Actor akAbuser, string the_behaviour, Form cuffs, string the_pose, string the_strugglePose, string the_enterPose, string the_exitPose, bool need_cuff, bool do_anim_abuser)
EndFunction
Function EnterTieUp(Actor akAbuser, Form cuffs = None, string the_pose = "", string the_strugglePose = "", string the_enterPose = "", string the_exitPose = "")
EndFunction
Function EnterChained(Actor akAbuser, Form cuffs, string the_pose, string the_strugglePose="", string the_enterPose = "", string the_exitPose = "", bool need_cuff=false)
EndFunction
Function EnterRestrained(Actor akAbuser, Form cuffs, string the_pose, string the_strugglePose="", string the_enterPose = "", string the_exitPose = "", bool need_cuff=false)
EndFunction
Function EnterJailRestrained(Actor akAbuser, Form cuffs, string the_pose, string the_strugglePose="", string the_enterPose = "", string the_exitPose = "", bool need_cuff=false)
EndFunction
bool is_exiting_tieup = false
Function ExitTieUp(Actor akAbuser)
EndFunction
Function ExitTieUpSoft()
EndFunction
Function SetTiedInFurniture(ObjectReference TheFurniture)
EndFunction
Function EnterRestrainedInFurnitureAlreadySitting()
EndFunction
Function EnterPoseInFurnitureAlreadySitting()
EndFunction
Function EnterRestrainedInFurniture(ObjectReference TheFurniture, String ThePose = "", String TheStrugglePose = "")
EndFunction
Function EnterPoseInFurniture(ObjectReference TheFurniture, String ThePose, String TheStrugglePose = "")
EndFunction
Function EnterFollow()
EndFunction
Function EnterFollowPlayerOrTrainer()
EndFunction
Function EnterFollowTrainer()
EndFunction
Function EnterFollowTarget(Actor followTarget)
EndFunction
Function ExitFollowTrainer()
EndFunction
Function EnterGotoCamp()
EndFunction
Function SetLookAtTarget()
EndFunction
Int Property poseId = -1 Auto Hidden
int nextPoseId = -1
int prevPoseId = -1
String quietPose        = ""
String strugglePose     = ""
string arousedPose      = ""
String enterPose        = ""
String exitPose         = ""
String prevQuietPose    = ""
String prevStrugglePose = ""
String prevEnterPose    = ""
String prevExitPose     = ""
String nextQuietPose    = ""
String nextStrugglePose = ""
String nextEnterPose    = ""
String nextExitPose     = ""
ObjectReference currentTiedInFurniture = None
ObjectReference nextTiedInFurniture    = None
bool  was_pose_registered = false
float timer_for_pose = 0.0
string Function GetPose()
	Return ""
EndFunction
string Function GetStrugglePose()
	Return ""
EndFunction
Function SetQuietPose(string the_pose)
EndFunction
Function SetStrugglePose(string the_pose)
EndFunction
Function UnregisterPose()
EndFunction
Function StartPose()
EndFunction
Function SetPoseTied(String TheQuietPose, String TheStrugglePose = "", String TheEnterPose = "", String TheExitPose = "")
EndFunction
Function SetPose(string the_pose, int rank)
EndFunction
Function HandleTopicAndIdleOnUpdate()
EndFunction
ObjectReference Property DualAnimationMarker Auto Hidden
float JSONanim_angle1 = 0.0
float JSONanim_angle2 = 0.0
string JSONanim_idle1 = ""
string JSONanim_idle2 = ""
int JSONanim_nactors = 0
int JSONanim_nscenes = 0
bool JSONanim_is_bounded = false
bool JSONanim_do_actor1 = true
bool JSONanim_do_actor2 = true
bool JSONanim_do_bounded = false
bool JSONanim_do_start = true
bool JSONanim_restore2 = true
String[] JSONanim_idles1
String[] JSONanim_idles2
Float[] JSONanim_angles1
Float[] JSONanim_angles2
Float[] JSONanim_timers
Actor JSONanim_actor2
int Function GetNbAnimScenes()
	Return 0
EndFunction
Function CheckJSONActors()
EndFunction
Function StartJSONAnimation(Actor akAnotherActor, string the_key, bool do_bounded=false, bool do_invert=false, bool restore_position=true)
EndFunction
Function PlayJSONAnimation(int index)
EndFunction
Function PlayJSONAnimations(int istart, int iend = -1)
EndFunction
Function EndJSONAnimation(bool do_other_actor_reset=true)
EndFunction
Function ClearPositionMarker(Actor akAnotherActor)
EndFunction
Function SetPositionMarker(Actor akAnotherActor, Actor akTarget)
EndFunction
Function RePositionMarker(Actor akAnotherActor, Actor akTarget)
EndFunction
Function CheckAnimationMarker(Actor akAnotherActor, Actor akTarget)
EndFunction
Function PlayDualAnimationOnlyOther(Actor akAnotherActor, string idle2, float angle2=0.0)
EndFunction
Function PlayDualAnimation(Actor akAnotherActor, string idle1, string idle2, float angle1=0.0, float angle2=0.0)
EndFunction
Function PlayAnotherDualAnim(Actor akAnotherActor, string idle1, string idle2)
EndFunction
Function PlayAnotherDualAnimOnlyOther(Actor akAnotherActor, string idle2)
EndFunction
Function EndDualAnim(Actor akAnotherActor)
EndFunction
Function EndDualAnimOnlyOther(Actor akAnotherActor)
EndFunction
Function Anim_AbductionBack(Actor akTarget)
EndFunction
Function Anim_AbductionFront(Actor akTarget)
EndFunction
Function Anim_AbductionFloor(Actor akTarget)
EndFunction
Function Anim_AggressorByString(Actor aggressor, string the_anim)
EndFunction
Function Anim_AggressorReset(Actor aggressor)
EndFunction
Function Anim_LocalByString(string the_anim)
EndFunction
Function Anim_ForcedByString(string the_anim)
EndFunction
Function Anim_PoseByString(string the_anim)
EndFunction
Function Anim_IdleByString(string the_anim)
EndFunction
Function Anim_Orgasm()
EndFunction
Function OnSexEnd()
EndFunction
Function OnSexStartAlone()
EndFunction
Function OnSexStart(DOM_Actor akPartner, bool hasPlayer, bool isNotConsensual)
EndFunction
Function OnSexStartNPC(Actor akPartner, bool hasPlayer, bool isNotConsensual)
EndFunction
Function Anim_OStim(Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_OStimWithActor(DOM_Actor akAnotherActor, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_OStimWithNPC(Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_Sexlab(Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWithActor(DOM_Actor akAnotherActor, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWithNPC(Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith3AAP(DOM_Actor akAnotherActor, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith3ANP(Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith3AAA(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith3AAN(DOM_Actor akAnotherActor, Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith4AAAP(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith4AANP(DOM_Actor akAnotherActor, Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith4AAAA(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, DOM_Actor akAnotherActor3, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_SexlabWith4AAAN(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, Actor akOther, string tag, bool punishment, string reason_name = "")
EndFunction
Function Anim_Sweep()
EndFunction
Function Anim_OnFour()
EndFunction
Function Anim_Stagger()
EndFunction
Function Anim_Strip(bool do_bottom)
EndFunction
Function Anim_Undress(Actor akAbuser)
EndFunction
Function Anim_DressUp(bool do_bottom)
EndFunction
bool drunk_active = false
Function Anim_DrunkStart()
EndFunction
Function Anim_DrunkReset()
EndFunction
Function Anim_DrunkStop()
EndFunction
Function Anim_BoundStartArmbinder()
EndFunction
Function Anim_BoundStartYoke()
EndFunction
Function Anim_BoundStartFront()
EndFunction
Function Anim_BoundStartCrossed()
EndFunction
Function Anim_BoundStartBack()
EndFunction
Function Anim_BoundStartBoxTied()
EndFunction
Function Anim_BoundStop()
EndFunction
Function Anim_VictimTieUpExit()
EndFunction
Function Anim_VictimTieUpEnter()
EndFunction
Function Anim_AggressorTyingUp()
EndFunction
Function Anim_IdleStop()
EndFunction
Function Anim_EndReset()
EndFunction
Function Anim_IdleReset()
EndFunction
bool Function Anim_CoverSelf()
	Return False
EndFunction
bool Function Anim_Shamed()
	Return False
EndFunction
bool Function Anim_Shocked()
	Return False
EndFunction
bool Function Anim_WarmArms()
	Return False
EndFunction
bool bleedout_active = false
Function Anim_BleedOutStop()
EndFunction
Function Anim_BleedOutStart()
EndFunction
Function Anim_Attention()
EndFunction
Function Anim_Salute()
EndFunction
Function Anim_Kneel()
EndFunction
Function Anim_Cower()
EndFunction
Function Anim_Cries()
EndFunction
Function Anim_LookDown()
EndFunction
Function Anim_PleaseStop()
EndFunction
Function Anim_Nervous()
EndFunction
Function Anim_WipeBrow()
EndFunction
Function Anim_CrossArms()
EndFunction
Function Anim_AggressiveGesture()
EndFunction
Function Anim_Attack()
EndFunction
Function Anim_GetPlayerHug()
EndFunction
Function Anim_GetHug(Actor akHugger)
EndFunction
Function Anim_Drink(Actor akAbuser, Form the_drink, bool play_dual, bool play_wine, bool play_spill, bool play_cough)
EndFunction
Function PushMeAway(float amount)
EndFunction
Function TripAndFall(float amount)
EndFunction
bool Property alcohol_gift = false Auto Hidden
Function OrderDrink()
EndFunction
Function OrderDrinkAlcohol(Actor akAbuser)
EndFunction
Form Function GetAPotion(Actor akAbuser)
	Return None
EndFunction
Form Function GetANarcotic(Actor akAbuser)
	Return None
EndFunction
Function OrderDrinkThis(Actor akAbuser, Form the_drink)
EndFunction
Function OrderDrinkForm(Actor akAbuser, Form the_drink)
EndFunction
Function OrderDrinkFormNoAnim(Form the_drink)
EndFunction
float Function GetAlcoholModifier()
	Return 0.0
EndFunction
float Function DrinkAlcohol(Actor akAbuser, Form the_drink, float modifier, bool do_anim)
	Return 0.0
EndFunction
Function DropAndDeleteObject(Form the_form)
EndFunction
Function OwnerDropAndDeleteObject(Form the_form)
EndFunction
Faction Property origCrimeFaction Auto Hidden
Function SetCrimeFaction()
EndFunction
Function CleanCrimeFaction()
EndFunction
Faction Function GetCrimeFaction()
	Return None
EndFunction
Function TurnOnCrimeFaction()
EndFunction
Function TurnOffCrimeFaction()
EndFunction
Function CleanFactions(Actor akRef)
EndFunction
bool Function TryRunAway()
	Return False
EndFunction
bool Function TryRunAwayGang()
	Return False
EndFunction
Function SendAssaultAlarmForFaction(Faction CrimeFaction)
EndFunction
Function TrySendAssaultAlarm()
EndFunction
int ticks_since_last_call_for_help = 0
Function TryCallForHelp(bool do_it_now=false)
EndFunction
Function TryRunAwayFriends()
EndFunction
Function TryEscape()
EndFunction
Function TrainForSacrifice(DOM_Actor akVictimActor, float amount)
EndFunction
Function TrainWitness(DOM_Actor akVictimActor, float amount, int reason, string type)
EndFunction
Function TrainForSlaver(DOM_Actor akVictimActor, float amount, int reason, string type)
EndFunction
Function TrainForFriend(DOM_Actor akFriend, float base_amount, int reason, string type)
EndFunction
bool Function TrainFriends(int reason, string type, float base_amount)
	Return False
EndFunction
Function SetAsVictim(int type)
EndFunction
Function UnsetAsVictim()
EndFunction
DOM_Actor Property myRival = None Auto Hidden
DOM_Actor Property meRival = None Auto Hidden
Function SetMyRival(DOM_Actor slave)
EndFunction
Function SetMeRival(DOM_Actor slave)
EndFunction
DOM_Actor Function GetMeRival()
	Return None
EndFunction
DOM_Actor Function GetMyRival()
	Return None
EndFunction
Function TryAttackRival()
EndFunction
Function ClearRivals()
EndFunction
Function CheckRivals()
EndFunction
DOM_Actor[] _friend_array
DOM_Actor[] Property friendArray
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
Float[] _friend_xarray
Float[] Property friendXArray
Float[] Function Get()
	Return None
EndFunction
EndProperty
Int[] _friend_tarray
Int[] Property friendTArray
Int[] Function Get()
	Return None
EndFunction
EndProperty
Actor[] _actor_friend_array
Actor[] Property actorFriendArray
Actor[] Function Get()
	Return None
EndFunction
EndProperty
Float[] _actor_friend_xarray
Float[] Property actorFriendXArray
Float[] Function Get()
	Return None
EndFunction
EndProperty
Int[] _actor_friend_tarray
Int[] Property actorFriendTArray
Int[] Function Get()
	Return None
EndFunction
EndProperty
int Function GetFriendsNotFamilyCount()
	Return 0
EndFunction
int Function GetFriendshipCount()
	Return 0
EndFunction
int Function GetTotalFriendshipCount()
	Return 0
EndFunction
int Function GetFriendSpot(float x, int type)
	Return 0
EndFunction
Function CheckFriend(DOM_Actor akOther, float x, int type)
EndFunction
bool Function SetFriend(int i, DOM_Actor akOther, float x, int type)
	Return False
EndFunction
DOM_Actor Function GetFriend(int i)
	Return None
EndFunction
int Function GetFriendIndex(DOM_Actor akOther)
	Return 0
EndFunction
DOM_Actor Function GetBestFriend()
	Return None
EndFunction
int Function GetFriendType(int i)
	Return 0
EndFunction
float Function GetFriendStrength(int i)
	Return 0.0
EndFunction
Function RemoveFriend(DOM_Actor akOther)
EndFunction
Function RemoveFriendByIndex(int i)
EndFunction
bool Function IsFriend(DOM_Actor akOther)
	Return False
EndFunction
Function FriendIsDead(DOM_Actor akFriend)
EndFunction
Function FriendIsFreed(DOM_Actor akFriend)
EndFunction
Function FriendIsMoved(DOM_Actor akFriend)
EndFunction
Function ClearFriends()
EndFunction
float Function GetGangCheck(DOM_Actor akOther)
	Return 0.0
EndFunction
float Function GetFactionCheck(DOM_Actor akOther)
	Return 0.0
EndFunction
float Function GetActorTypeCheck(DOM_Actor akOther)
	Return 0.0
EndFunction
float Function GetActorRaceCheck(DOM_Actor akOther)
	Return 0.0
EndFunction
float Function GetRelationshipCheck(DOM_Actor akOther, int type)
	Return 0.0
EndFunction
float Function GetStatusCheck(DOM_Actor akOther)
	Return 0.0
EndFunction
float Function GetFriendship(DOM_Actor akOther, int type)
	Return 0.0
EndFunction
bool Function CorrectFriendship(DOM_Actor akOther)
	Return False
EndFunction
bool Function CreateFriendship(DOM_Actor akOther)
	Return False
EndFunction
Function CreateOldFriendship(DOM_Actor akOther)
EndFunction
int Function GetOldFriendSpot(float x)
	Return 0
EndFunction
Function RemoveOldFriend(Actor akOther)
EndFunction
Function RemoveOldFriendByIndex(int i)
EndFunction
Actor Function GetOldFriend(int i)
	Return None
EndFunction
Function SetFriendshipRank(Actor akOther)
EndFunction
Function SetOldFriend(int i, Actor akOther, float x, int type)
EndFunction
bool Function IsOldFriend(Actor akOther)
	Return False
EndFunction
Function CheckOldFriendship()
EndFunction
Function CheckFriendship(int idx)
EndFunction
Actor actor_target = None
DOM_Actor actor_trainer = None
Function SeparateFromTrainer()
EndFunction
Function SetTrainerFromDialogue()
EndFunction
Function SetTrainer(DOM_Actor theTrainer)
EndFunction
DOM_Actor Function GetTrainer()
	Return None
EndFunction
DOM_Actor Function GetCurrentTrainee()
	Return None
EndFunction
Actor Function GetActorPartner()
	Return None
EndFunction
Actor Function GetCurrentTrainer()
	Return None
EndFunction
Function SetActorPartner(Actor akTarget)
EndFunction
Function AddTrainer(DOM_actor theTrainer)
EndFunction
Function RemoveTrainer()
EndFunction
Function AddTraineeFromDialogue(DOM_Actor aTrainee)
EndFunction
Function AddTrainee(DOM_Actor aTrainee)
EndFunction
bool Function AddTraineeToArray(DOM_Actor theTrainee)
	Return False
EndFunction
int Function GetTraineeIndex(DOM_Actor theTrainee)
	Return 0
EndFunction
Function RemoveTrainee(DOM_Actor theTrainee)
EndFunction
bool updating_trainee_array = false
bool dirty_trainee_array = false
Function UpdateTraineeArray()
EndFunction
ObjectReference Property CampMarker = None Auto Hidden
string camp_name = ""
DOM_Actor actor_trainee = None
DOM_Actor actor_trainee2 = None
DOM_Actor actor_trainee3 = None
DOM_Actor actor_trainee_whipped = None
bool Function TraineeIsBusy(DOM_Actor akTrainee)
	Return False
EndFunction
Function SetWhippedTrainee(DOM_Actor akTraineeActor)
EndFunction
Actor Function GetWhippedTraineeActor()
	Return None
EndFunction
int traineeCounter = -1
DOM_Actor[] _traineeArray
DOM_Actor[] Property traineeArray
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
int Function GetTraineeCount()
	Return 0
EndFunction
Function SetTraineesToFight(bool do_fight_for_player)
EndFunction
Function ListTraineeNames()
EndFunction
DOM_Actor Function GetTrainee(int i)
	Return None
EndFunction
Function CheckTrainee(DOM_Actor aTrainee)
EndFunction
Function RecheckTrainer()
EndFunction
Function RecheckTrainees()
EndFunction
bool Function IsTrainee(DOM_Actor theTrainee)
	Return False
EndFunction
Function SetCamp()
EndFunction
Function SetCampAtRef(ObjectReference obj)
EndFunction
Function GatherTrainees()
EndFunction
Function CuffTrainees()
EndFunction
Function PoseOrRestrainTrainees()
EndFunction
Function PoseTrainees()
EndFunction
Function MasturbateOrRestrainTrainees()
EndFunction
Function MasturbateTrainees()
EndFunction
Function DanceTrainees()
EndFunction
Function DisplayTrainees()
EndFunction
Function SecureTrainees()
EndFunction
Function ChainTrainees()
EndFunction
Function RestrainTraineesInFurniture()
EndFunction
Function SecureTrainee(DOM_Actor aTrainee)
EndFunction
Function PoseTrainee(DOM_Actor aTrainee)
EndFunction
Function RestrainTrainee(DOM_Actor aTrainee)
EndFunction
Function MasturbateTrainee(DOM_Actor aTrainee)
EndFunction
Function DanceTrainee(DOM_Actor aTrainee)
EndFunction
Function DisplayTrainee(DOM_Actor aTrainee)
EndFunction
Function ChainTrainee(DOM_Actor aTrainee)
EndFunction
Function RestrainTraineeInFurniture(DOM_Actor aTrainee)
EndFunction
Function LoadTrainee()
EndFunction
Function LoadAllTrainees(ReferenceAlias[] the_trainees)
EndFunction
Function UnloadAllTrainees()
EndFunction
Function QueueNiNodeUpdate()
EndFunction
bool is_resetting = false
Function SpecialReset()
EndFunction
Function RestartBehaviour()
EndFunction
Function SpecialResetWithAnim(string the_anim)
EndFunction
int is_dialogue_blocked_for = 0
int is_weather_dialogue_blocked_for = 0
Function ResetDialogue()
EndFunction
Function HandleDialogueOnActivate()
EndFunction
bool Function CanAnswer()
	Return False
EndFunction
bool Function CanTalk()
	Return False
EndFunction
bool Function CanMakeSound()
	Return False
EndFunction
Function SayTopic(Topic topic_to_say, ObjectReference say_to = None)
EndFunction
Function ChooseTopic(Actor akTarget)
EndFunction
Function ChooseYellPain()
EndFunction
Function ChoosePainTopic(Actor akTarget)
EndFunction
Function ChooseFriendTopic(Actor akTarget)
EndFunction
Function ChooseWeatherTopic(Actor akTarget, int weatherType)
EndFunction
Function ChooseRivalTopic(Actor akTarget)
EndFunction
Function ChooseCommentCollide(Actor akTarget)
EndFunction
Function ChooseCommentIdle(Actor akTarget)
EndFunction
Function ChooseCommentSwingWeapon(Actor akTarget)
EndFunction
Function ChooseCommentSorry(Actor akTarget)
EndFunction
Function ChooseCommentBad(Actor akTarget)
EndFunction
Function ChooseAnswerHello(Actor akTarget)
EndFunction
Function ChooseAnswerGoodbye(Actor akTarget)
EndFunction
Function ChooseAnswerNo(Actor akTarget)
EndFunction
Function ChooseAnswerYes(Actor akTarget)
EndFunction
Function ChooseAnswerThanks(Actor akTarget)
EndFunction
Function ChooseAnswerSorry(Actor akTarget)
EndFunction
Function ChooseAnswerWhat(Actor akTarget)
EndFunction
Function ChooseAnswerValue(Actor akTarget)
EndFunction
Function ChooseAnswerStrip(Actor akTarget)
EndFunction
Function ChooseAnswerBad(Actor akTarget)
EndFunction
Function ChooseAnswerNewPromise(Actor akTarget)
EndFunction
Function ChooseAnswerKeptPromise(Actor akTarget)
EndFunction
Function ChooseAnswerFailedPromise(Actor akTarget)
EndFunction
Function ChooseAnswerHelp(Actor akTarget = None)
EndFunction
Function ChooseAnswerAttack(Actor akTarget)
EndFunction
Function ChooseAnswerOrgasm(Actor akTarget)
EndFunction
Function ChooseAnswerAroused(Actor akTarget)
EndFunction
Function ChooseAnswerTouchBegin(Actor akTarget)
EndFunction
Function ChooseAnswerTouchButt(Actor akTarget)
EndFunction
Function ChooseAnswerTouchBreast(Actor akTarget)
EndFunction
Function ChooseAnswerTouchBase(Actor akTarget)
EndFunction
Function ChooseAnswerTouchNeck(Actor akTarget)
EndFunction
bool Property interact_is_busy = false Auto Hidden
Function StartFlattering(Actor akAbuser)
EndFunction
Function StartFlatteringWith(Actor akAbuser, string type)
EndFunction
Function StartInsulting(Actor akAbuser)
EndFunction
Function StartInsultingWith(Actor akAbuser, string type)
EndFunction
Function StartComfortingWith(Actor akAbuser, string type)
EndFunction
Function StartPromising(Actor akAbuser, string oath)
EndFunction
Function StartThreatening(Actor akAbuser, string reason)
EndFunction
Function StartPraising(Actor akAbuser, string reason="", string type="")
EndFunction
bool Property is_whipped = false Auto Hidden
bool Property is_slapped = false Auto Hidden
bool Property is_caned   = false Auto Hidden
Function StartSlapping()
EndFunction
Function StartScolding(Actor akAbuser, string reason = "")
EndFunction
Function StartPunishingByActor(Actor akAbuser, string reason, string type)
EndFunction
Function StartPunishingWithTag(Actor akAbuser, string reason_name, string type, string tag)
EndFunction
Function StartPunishing(Actor akAbuser, string reason_name = "", string type = "")
EndFunction
Function EndPunishing(Actor akAbuser, string type)
EndFunction
Function StartWhipping(Actor akAbuser, string reason = "")
EndFunction
Function EndWhipping(Actor akAbuser)
EndFunction
Function StartPunishmentOn(DOM_Actor akVictim, string reason_name, string type, string tag)
EndFunction
Function Dialogue_StartSexWith(int type)
EndFunction
Function Dialogue_StartSexJoin()
EndFunction
Function StartSexOnActor(DOM_Actor akAnotherActor, string type, bool aggro)
EndFunction
Function StartSexOnActor3AAP(DOM_Actor akAnotherActor, string type, bool aggro)
EndFunction
Function StartSexOnActor4AAAP(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, string type, bool aggro)
EndFunction
Function StartSexOnActor3AAA(DOM_Actor akAnotherActor1, DOM_Actor akOther2, string type, bool aggro)
EndFunction
Function StartSexOnActor4AAAA(DOM_Actor akAnotherActor1, DOM_Actor akOther2, DOM_Actor akOther3, string type, bool aggro)
EndFunction
Function StartSexWithActor(DOM_Actor akAggressorActor, string type, bool aggro)
EndFunction
Function StartSexWith(Actor akAbuser, string type, bool aggro)
EndFunction
Function StartSexWithOstim(Actor akAbuser, string type, bool aggro)
EndFunction
Function StartSexWithNPC(Actor akAbuser, string type, bool aggro)
EndFunction
Function StartSexWith3AAP(DOM_Actor akAnotherActor, string type, bool aggro)
EndFunction
Function StartSexWith4AAAP(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, string type, bool aggro)
EndFunction
Function StartSexWith3ANP(Actor akOther, string type, bool aggro)
EndFunction
Function StartSexWith4AANP(DOM_Actor akAnotherActor, Actor akOther, string type, bool aggro)
EndFunction
Function StartSexWith3AAA(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, string type, bool aggro)
EndFunction
Function StartSexWith4AAAA(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, DOM_Actor akAnotherActor3, string type, bool aggro)
EndFunction
Function StartSexWith3AAN(DOM_Actor akAnotherActor, Actor akOther, string type, bool aggro)
EndFunction
Function StartSexWith4AAAN(DOM_Actor akAnotherActor1, DOM_Actor akAnotherActor2, Actor akOther, string type, bool aggro)
EndFunction
Function CorrectStruggle()
EndFunction
bool correct_behaviour_busy = false
Function CorrectBehaviour(Actor akAbuser, int reason, bool do_follow)
EndFunction
bool Function IsRestrainedCantKneel()
	Return False
EndFunction
bool Function IsTied()
	Return False
EndFunction
bool Function IsTiedCanKneel()
	Return False
EndFunction
bool is_attentive = false
bool Function IsAttentive()
	Return False
EndFunction
bool is_struggling = false
bool Function IsStruggling()
	Return False
EndFunction
bool Function IsBreakingWait()
	Return False
EndFunction
bool Function IsBreakingWork()
	Return False
EndFunction
bool Function IsBreakingTieup()
	Return False
EndFunction
bool Function IsBreakingPose()
	Return False
EndFunction
bool Function IsBreakingMasturbate()
	Return False
EndFunction
bool Function IsBreakingRestraint(Form cuffs)
	Return False
EndFunction
Function DoStandUp()
EndFunction
Function DoStandUpAndCalm()
EndFunction
Function DoEntertain(Actor akAbuser, string order)
EndFunction
Function DoSalute(Actor akAbuser, string the_pose)
EndFunction
Function DoFavor(Actor akAbuser)
EndFunction
Function DoDance(Actor akAbuser)
EndFunction
Function DoMusic(Actor akAbuser)
EndFunction
Function DoDrinks(Actor akAbuser)
EndFunction
Function DoExercise(Actor akAbuser)
EndFunction
Function DoDisplay(Actor akAbuser)
EndFunction
Function DoCute(Actor akAbuser)
EndFunction
int test_index = 1
Function DoTest(Actor akAbuser)
EndFunction
Function DoSubmissive(Actor akAbuser)
EndFunction
Function DoAssPresentation(Actor akAbuser)
EndFunction
Function DoBreastsPresentation(Actor akAbuser)
EndFunction
Function DoPussyPresentation(Actor akAbuser)
EndFunction
Function DoLight(Actor akAbuser)
EndFunction
Function DoFlowers(Actor akAbuser)
EndFunction
ObjectReference Property PoseMarker Auto Hidden
ObjectReference Property PoseMarkerSave Auto Hidden
Function SitOnSlave(Actor akAbuser)
EndFunction
Function DoChair(Actor akAbuser)
EndFunction
Function ChooseOrgasmIdle()
EndFunction
Function ChooseOrgasmIdleStanding()
EndFunction
Function ChooseOrgasmIdleLaying()
EndFunction
Function ChooseOrgasmIdleKneeling()
EndFunction
Function ChooseMasturbateIdle(float amount)
EndFunction
int Function GetNextMasturbatePoseId(float amount, int baseid, int nposes)
	Return 0
EndFunction
Function ChooseMasturbateIdleStanding(float amount)
EndFunction
Function ChooseMasturbateIdleLaying(float amount)
EndFunction
Function ChooseMasturbateIdleKneeling(float amount)
EndFunction
Function MasturbateHarder(Actor akAbuser)
EndFunction
Function DoMasturbate(Actor akAbuser, string order)
EndFunction
Function EnterMasturbateKneeling(Actor akAbuser)
EndFunction
Function EnterMasturbateLaying(Actor akAbuser)
EndFunction
Function EnterMasturbateStanding(Actor akAbuser)
EndFunction
Function ResumeBehaviour()
EndFunction
Function ResumePose()
EndFunction
Function ResumeMasturbate()
EndFunction
Function StartMasturbate(Actor akAbuser, int pId)
EndFunction
Function IncrementFling(DOM_Actor akOther)
EndFunction
Function IncrementRape(DOM_Actor akOther)
EndFunction
Function IncrementChat(DOM_Actor akOther)
EndFunction
Function SetAutoEquip(bool status)
EndFunction
Outfit old_outfit = None
Function SetOldOutfit(Outfit myoutfit)
EndFunction
bool restore_outfit_on_release = true
Function SetRestoreOutfitOnRelease(bool value)
EndFunction
Function CheckAndSetOutfit()
EndFunction
Function HoldWeapons(Actor akAbuser)
EndFunction
Function HoldNoWeapons()
EndFunction
Function WearArmor(Actor akAbuser)
EndFunction
Function WearNoArmor()
EndFunction
Function HoldWeaponsAndWearArmor(Actor akAbuser)
EndFunction
Function HoldNoWeaponsAndWearNoArmor()
EndFunction
Function StripMaybeDrop(Actor akAbuser)
EndFunction
Function StripMaybeDropWeapons(Actor akAbuser)
EndFunction
Function StripMaybeDropArmor(Actor akAbuser)
EndFunction
Function StripMaybeDropWeaponsAndArmor(Actor akAbuser)
EndFunction
Function StripMaybeDropAll(Actor akAbuser)
EndFunction
bool Function ForceEquip(Form the_form)
	Return False
EndFunction
Function StripAndKeepItem(Form the_form)
EndFunction
Function StripAndKeepItemForced(Form the_form)
EndFunction
Function StripAndKeepItemAmmo(Ammo the_ammo)
EndFunction
Function StripAndKeepItemWeapon(Weapon the_weapon)
EndFunction
Function StripAndKeepItemArmor(Armor the_armor)
EndFunction
Function StripMore()
EndFunction
Function StripMoreWeapons()
EndFunction
Function StripMoreArmor()
EndFunction
Function StripMoreWeaponsAndArmor()
EndFunction
Function StripMoreAll()
EndFunction
Function DropItem(Actor akAbuser, Form the_form)
EndFunction
Function StripAndDropItem(Actor akAbuser, Form the_form)
EndFunction
Function StripAndDropItemForced(Actor akAbuser, Form the_form)
EndFunction
Function StripAndDropItemAmmo(Actor akAbuser, Ammo the_ammo)
EndFunction
Function StripAndDropItemWeapon(Actor akAbuser, Weapon the_weapon)
EndFunction
Function StripAndDropItemArmor(Actor akAbuser, Armor the_armor)
EndFunction
Function StripAndDrop(Actor akAbuser)
EndFunction
Function StripAndDropWeapons(Actor akAbuser)
EndFunction
Function StripAndDropArmor(Actor akAbuser)
EndFunction
Function StripAndDropWeaponsAndArmor(Actor akAbuser)
EndFunction
Function StripAndDropAll(Actor akAbuser)
EndFunction
Function ResetTats()
EndFunction
Int Function RetainedMap() Global
	Return 0
EndFunction
Int Function RetainedMap1Pair(String key1, String value1) Global
	Return 0
EndFunction
Int Function RetainedMap2Pair(String key1, String value1, String key2, String value2) Global
	Return 0
EndFunction
Int Function RetainedMap3Pair(String key1, String value1, String key2, String value2, String key3, String value3) Global
	Return 0
EndFunction
Int Function RetainedMap4Pair(String key1, String value1, String key2, String value2, String key3, String value3, String key4, String value4) Global
	Return 0
EndFunction
Int Function AddTattoo(Actor anActor, String tat_name, String texture, String section, String area, Int slot, Int colorTint = -1)
	Return 0
EndFunction
Int Function AddTattooAlpha(Actor anActor, String tat_name, String texture, String section, String area, Int slot, Int colorTint = -1, Float alpha=0.0)
	Return 0
EndFunction
Int Function AddTattooGlowGloss(Actor anActor, String tat_name, String texture, String section, String area, Int slot, Int glow, bool gloss, Int colorTint = -1)
	Return 0
EndFunction
Function Interact_Mark(Actor akAbuser)
EndFunction
Function Interact_Unmark()
EndFunction
Function Interact_Brand(Actor akAbuser)
EndFunction
Function Interact_unbrand()
EndFunction
Function Anim_Brand(Actor akAbuser)
EndFunction
string brand_name = ""
string brand_file = ""
int brand_map0 = 0
int brand_glow_color = 0
int marks_map0 = 0
int marks_glow_color = 0
Function SetTatsGlowColor()
EndFunction
int Function GetMarksGlowColor()
	Return 0
EndFunction
string Function GetStringGlowColor()
	Return ""
EndFunction
Function SetTatsFromStatus()
EndFunction
Function SetMarksFromStatus()
EndFunction
Function SetBrandFromStatus()
EndFunction
bool Function HasMark()
	Return False
EndFunction
Function ResetMarks()
EndFunction
Function TryApplyMarks()
EndFunction
Function TryRemoveMarks()
EndFunction
bool Function HasBrand()
	Return False
EndFunction
Function ResetBrand()
EndFunction
string marks_name = ""
string marks_file = ""
string marks_area = ""
Function SetBrandTatsDOM()
EndFunction
Function SetBrandTatsMaid()
EndFunction
Function SetBrandTatsMiner()
EndFunction
Function TryApplyBrand()
EndFunction
Function TryRemoveBrand()
EndFunction
int tears_map0 = 0
int tears_map1 = 0
int tears_map2 = 0
Function ResetTears()
EndFunction
Function TryApplyTears()
EndFunction
bool Function hasTears()
	Return False
EndFunction
Function TryRemoveTears(int max)
EndFunction
Function TryRemoveMascaraTears()
EndFunction
int spank_map0 = 0
int spank_timer = 0
float spank_alpha = 0.0
Function ResetSpank()
EndFunction
Function TryApplySpank()
EndFunction
Function TryUpdateSpank()
EndFunction
Function TryRemoveSpank()
EndFunction
Function TryRemoveCurrentSpank()
EndFunction
Function TryRemoveAllSpank()
EndFunction
int slapboobs_map0 = 0
int slapboobs_timer = 0
float slapboobs_alpha = 0.0
Function ResetSlapBoobs()
EndFunction
Function TryApplySlapBoobs()
EndFunction
Function TryUpdateSlapBoobs()
EndFunction
Function TryRemoveSlapBoobs()
EndFunction
Function TryRemoveCurrentSlapBoobs()
EndFunction
Function TryRemoveAllSlapBoobs()
EndFunction
int slap_map0a = 0
int slap_map0b = 0
int slap_map1 = 0
int slap_timer = 0
int slap_level = 0
int slap_level_prev = 0
int slap_nhits = 0
int slap_type = 0
Function HandleSlappedOnUpdate()
EndFunction
Function ResetSlap()
EndFunction
Function TryApplySlap()
EndFunction
Function TryUpdateSlap()
EndFunction
Function TryRemoveSlap()
EndFunction
Function TryRemoveCurrentSlap(bool rm1a=true, bool rm1b=true, bool rm2=true)
EndFunction
Function TryRemoveAllSlap()
EndFunction
int choke_map0 = 0
int choke_timer = 0
int choke_level = 0
int choke_level_prev = 0
Function ResetChoke()
EndFunction
Function TryApplyChoke()
EndFunction
Function TryUpdateChoke()
EndFunction
Function TryRemoveChoke()
EndFunction
Function TryRemoveCurrentChoke()
EndFunction
Function TryRemoveAllChoke()
EndFunction
int blush_map0 = 0
int drool_map0 = 0
Function ResetBlush()
EndFunction
Function TryApplyBlush()
EndFunction
Function TryApplyDrool()
EndFunction
Function TryRemoveBlush()
EndFunction
Function TryRemoveDrool()
EndFunction
float[] __anim_pos_ref
float[] Property anim_pos_ref
float[] Function Get()
	Return None
EndFunction
EndProperty
float[] __anim_pos_other
float[] Property anim_pos_other
float[] Function Get()
	Return None
EndFunction
EndProperty
float[] _anim_pos_center
float[] Property anim_pos_center
float[] Function Get()
	Return None
EndFunction
EndProperty
float[] _anim_pos_offsets
float[] Property anim_pos_offsets
float[] Function Get()
	Return None
EndFunction
EndProperty
float[] _anim_pos_loc
float[] Property anim_pos_loc
float[] Function Get()
	Return None
EndFunction
EndProperty
Function CenterOnAnimationMarker(bool is_on_bed)
EndFunction
Function SetLocation(ObjectReference PositionMarker, bool is_on_bed)
EndFunction
Function OffsetCoords()
EndFunction
Function SavePositions(Actor akTarget, bool is_on_bed = false)
EndFunction
Function RestorePositions(Actor akTarget)
EndFunction
Function Interact_LookAtMe(Actor akAbuser)
EndFunction
Function Interact_TurnAround(Actor akAbuser)
EndFunction
Function Interact_ComeHere(Actor akAbuser)
EndFunction
Function DoBathMaster(Actor akAbuser)
EndFunction
Function DoBathMe(Actor akAbuser)
EndFunction
Function DoShowerHose(Actor akAbuser)
EndFunction
Function DoShower(Actor akAbuser)
EndFunction
Function UndressBeforeSex(Actor akAbuser, bool do_aggro)
EndFunction
Function Interact_Undress(Actor akAbuser)
EndFunction
Function Interact_UndressNoChoice(Actor akAbuser, bool do_anim)
EndFunction
Function Interact_UndressNoAnim(Actor akAbuser)
EndFunction
Function Interact_UndressAll(Actor akAbuser)
EndFunction
Function Interact_Strip(Actor akAbuser)
EndFunction
Function Interact_StripNoChoice(Actor akAbuser, bool do_anim)
EndFunction
Function Interact_StripAll(Actor akAbuser)
EndFunction
Function Interact_Praise(Actor akAbuser, string reason_name, string the_key)
EndFunction
Function Interact_Punish(Actor akAbuser, string reason_name, string the_key)
EndFunction
bool Property is_group_order = false Auto Hidden
Function Interact_StartSalute(Actor akAbuser, string the_pose)
EndFunction
Function Interact_EndSalute(string the_pose)
EndFunction
Function Interact_Kiss(Actor akAbuser, string the_key)
EndFunction
Function Interact_Grab(Actor akAbuser, string the_key)
EndFunction
Function Alter_Mood(string this_mood)
EndFunction
Function Alter_Lust(Actor akAbuser, float amount)
EndFunction
Function Alter_Pain(float amount)
EndFunction
Function Alter_Persona(float amount)
EndFunction
Function Alter_Training(float amount)
EndFunction
Function Alter_Virginity()
EndFunction
Function Restore_Persona()
EndFunction
bool Function GetObjectFrom(Actor akAbuser, Form the_form)
	Return False
EndFunction
bool Function GetFromOwnerIfNeededAndEquipObject(Actor akAbuser, Form the_form)
	Return False
EndFunction
Function DrinkLovePotion(Actor akAbuser)
EndFunction
Function DrinkLustPotion(Actor akAbuser)
EndFunction
Function DrinkLashPotion(Actor akAbuser)
EndFunction
Function DrinkMindPotion(Actor akAbuser)
EndFunction
Function DrinkNarcoticPotion(Actor akAbuser, Form the_drink)
EndFunction
ObjectReference __leash_point
ObjectReference	Property leash_point Hidden
ObjectReference Function get()
	Return None
EndFunction
Function set(ObjectReference value)
EndFunction
EndProperty
Function OnLeashPointChanged()
EndFunction
Event OnLeashEffect()
EndEvent
Event OnLeashed()
EndEvent
Event OnUnLeashed()
EndEvent
Function WaitAtLeashPoint()
EndFunction
Event OnEnterBleedout()
EndEvent
Function SetShouldBeRespectful(Actor akAbuser)
EndFunction
Function UnsetShouldBeRespectful(Actor akAbuser)
EndFunction
Function SetShouldWalkOnFour(Actor akAbuser)
EndFunction
Function UnsetShouldWalkOnFour(Actor akAbuser)
EndFunction
Function SetShouldBeNaked(Actor akAbuser)
EndFunction
Function UnsetShouldBeNaked(Actor akAbuser)
EndFunction
Function SetShouldBeNoOrgasm(Actor akAbuser)
EndFunction
Function UnsetShouldBeNoOrgasm(Actor akAbuser)
EndFunction
Function TryEquipInventory(bool do_anim=false)
EndFunction
Function TryWearClothes(bool do_anim=true)
EndFunction
bool __reset_on_behaviour_change = false
bool Property reset_on_behaviour_change Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool behaviour_is_busy = false
String __behaviour = "do_nothing"
String Property prev_behaviour = "nothing" Auto Hidden
String Property behaviour Hidden
String Function get()
	Return ""
EndFunction
Function set(String value)
EndFunction
EndProperty
Function StartBehaviour()
EndFunction
Function EndBehaviour()
EndFunction
bool Function CanResetBehaviour()
	Return False
EndFunction
Function OnHitUpdate()
EndFunction
Function OnBehaviourUpdate()
EndFunction
Function OnBehaviourUpdateGameTime()
EndFunction
Function OnBehaviourLoad()
EndFunction
Function OnBehaviourCellLoad()
EndFunction
Function OnBehaviourLocationChange(Location akOldLoc, Location akNewLoc)
EndFunction
string Function GetBehaviourString()
	Return ""
EndFunction
float Function GetBehaviourModifier()
	Return 0.0
EndFunction
int wait_activity = 0
int wait_activity_timer = 0
Function SetSandboxStatus()
EndFunction
bool Function isMovingBehaviour(string beh)
	Return False
EndFunction
Function SetPrevPoseState(string prev_behaviour, string next_behaviour)
EndFunction
Function SetPoseStatus()
EndFunction
Function Anim_Pose()
EndFunction
Function SetCombatStatus()
EndFunction
Function SetFurnitureStatus()
EndFunction
Function UnSetFurnitureStatus()
EndFunction
int Function GetBehaviourIndex()
	Return 0
EndFunction
DOM_BurlapSack Property the_bag_iam_in = None Auto Hidden
Function SetPoseMarkerAtPosition()
EndFunction
Function SetPoseMarkerAtFurniture()
EndFunction
bool is_on_duty = false
Function EnterOnDuty(string duty_msg, string duty_title)
EndFunction
Function EnterOnDutyClean(string duty_msg, string duty_title)
EndFunction
Function EnterOnDutyRestrained(string duty_msg, string duty_title)
EndFunction
Function ExitOnDuty()
EndFunction
string on_duty_string = ""
string Function GetBehaviourTitle()
	Return ""
EndFunction
string Function GetOnDutyTitle()
	Return ""
EndFunction
bool Function IsFollowingPlayer()
	Return False
EndFunction
bool Property is_following_player = false Auto Hidden
bool Property is_running_away = false Auto Hidden
bool on_hit_update = false
bool Property is_behaviour_pose = false Auto Hidden
bool Property is_behaviour_masturbate = false Auto Hidden
int timer_for_punishing = 0
int cycle_for_punishing = 0
int timer_trainee_wait  = 0
bool __behaviour_working = false
bool Property behaviour_working Hidden
bool Function get()
	Return False
EndFunction
Function set(bool value)
EndFunction
EndProperty
bool is_training = false
bool Function IsInTraining()
	Return False
EndFunction
float trainerTimer = 0.0
Function PunishingUpdateGameTime(int type)
EndFunction
int timer_for_work = 0
bool is_pickingUpMess = false
bool is_working = false
bool Property is_showering = false Auto Hidden
ObjectReference workplace = None
Form workplace_ore = None
ObjectReference Function GetWorkingPlace()
	Return None
EndFunction
bool should_hold_weapons_outside_mining = false
bool Property is_trainer = false Auto Hidden
Function PromoteToSlaveMaster()
EndFunction
Function DemoteFromSlaveMaster()
EndFunction
Function EnterPunishTrainees()
EndFunction
Function EnterPunishTrainee(DOM_Actor akTraineeActor)
EndFunction
Function EnterFetchTrainee(DOM_Actor akTraineeActor)
EndFunction
Function EnterTrainSexTrainees()
EndFunction
Function EnterTrainSexTrainee(DOM_Actor akTraineeActor)
EndFunction
Function EnterFetchSexTrainee(DOM_Actor akTraineeActor)
EndFunction
Function EnterTrainOrgy()
EndFunction
Function EnterTrainOrgyTrainees(DOM_Actor akTraineeActor1, DOM_Actor akTraineeActor2, DOM_Actor akTraineeActor3)
EndFunction
Function EnterFetchOrgyTrainees(DOM_Actor akTraineeActor1, DOM_Actor akTraineeActor2, DOM_Actor akTraineeActor3)
EndFunction
DOM_Actor Function GetNextTraineeForPunishment()
	Return None
EndFunction
DOM_Actor Function GetNextTraineeForSex()
	Return None
EndFunction
DOM_Actor Function GetSupplementaryTraineeForSex1(DOM_Actor akTrainee)
	Return None
EndFunction
DOM_Actor Function GetSupplementaryTraineeForSex2(DOM_Actor akTrainee1, DOM_Actor akTrainee2)
	Return None
EndFunction
Function CleanTheMess()
EndFunction
bool Function IsAWorldObject(ObjectReference ref)
	Return False
EndFunction
Function CleanMess(int iType)
EndFunction
bool workplace_lookup_busy = false
ObjectReference Function GetNewWorkplace(float distance)
	Return None
EndFunction
ObjectReference[] Function FindAllReferencesOfFormTypeInRadius5(ObjectReference akRef, int iType, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyTree(ObjectReference old_workplace, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyFlora(ObjectReference old_workplace, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyWoodChoppingBlock(ObjectReference old_workplace, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyMine(ObjectReference old_mine, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyJail(ObjectReference old_jail, float distance)
	Return None
EndFunction
ObjectReference Function GetNearbyZazPose()
	Return None
EndFunction
ObjectReference Function GetNearbyContainer()
	Return None
EndFunction
bool Property SexlabIsSilent = false Auto Hidden
bool Property SexlabUseLipSync = true Auto Hidden
Form SexlabVoice = None
string Property SexlabAnimOut = "" Auto Hidden
string Property SexlabAnimIn = "" Auto Hidden
int nbSexPartners = 0
DOM_Actor actor_sextrainer = None
DOM_Actor[] __actorPartners
DOM_Actor[] Property actorPartners
DOM_Actor[] Function Get()
	Return None
EndFunction
EndProperty
Actor actor_sexpartner = None
bool was_partner_ended = false
bool property was_sexlab_started = false Auto Hidden
bool Property was_sexlab_ended = false Auto Hidden
bool Property has_sex_with_player = false Auto Hidden
bool Property has_sex_alone = false Auto Hidden
bool Property has_sex_for_money = false Auto Hidden
bool Function IsSceneReallyPenetration()
	Return False
EndFunction
bool Function IsSceneReallyInMouth()
	Return False
EndFunction
bool Function IsSceneReallySameSex()
	Return False
EndFunction
Function ClearSexPartners()
EndFunction
DOM_Actor Function GetSexPartner(int idx)
	Return None
EndFunction
DOM_Actor Function GetSexTrainer()
	Return None
EndFunction
Actor Function GetCurrentSexTrainer()
	Return None
EndFunction
Function AddSexPartner(DOM_Actor akAnotherActor)
EndFunction
Function SetSexPartner(DOM_Actor akAnotherActor)
EndFunction
Function SexlabEndSexPartners()
EndFunction
Function SexlabEndScene()
EndFunction
Function SetDefaultSexlabVoice()
EndFunction
Function SetSexlabVoice(Form voice)
EndFunction
Form Function GetSexlabVoice()
	Return None
EndFunction
Function SexlabPlayMoan(int strength = 100, bool isVictim = true)
EndFunction
Function SexlabPlayOrgasm(bool isVictim = true)
EndFunction
Function SendNotification(string msg)
EndFunction
Function SendNotificationFriends(string msg)
EndFunction
Function SendNotificationAction(string msg)
EndFunction
Function SendNotificationEmotion(string msg)
EndFunction
Function SendNotificationAbuse(string msg)
EndFunction
Function SendNotificationOrder(string msg)
EndFunction
Function SendNotificationMaster(string msg1, string msg2)
EndFunction
Function SendNotificationEmotionMaster(string msg1, string msg2)
EndFunction
Function SendNotificationOrderMaster(string msg1, string msg2)
EndFunction
Function LogInfo(string msg)
EndFunction
Function LogEquip(string msg)
EndFunction
Function LogTrace(string msg)
EndFunction
Function LogAnim(string msg)
EndFunction
Function LogTopic(Topic topic_to_say)
EndFunction
