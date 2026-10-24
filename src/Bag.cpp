#include "Bag.h"

#include "Forms.h"

namespace DOMFW::Bag
{
	namespace
	{
		using Clock = std::chrono::steady_clock;

		constexpr auto  kGuardWindow = std::chrono::seconds(15);
		constexpr auto  kTickInterval = std::chrono::milliseconds(200);
		constexpr float kNearPlayer = 4096.0f;  // the sack's marker is in another cell; back out = near the player

		struct Victim
		{
			std::unordered_set<RE::FormID>   strippedOutfit;  // outfit armor in the inventory, not worn at bag-in
			bool                             wentAway{ false };  // seen parked on the sack marker
			std::optional<Clock::time_point> outSince;
		};

		std::unordered_map<RE::FormID, Victim> g_victims;  // main thread only
		Clock::time_point                      g_lastTick{};

		bool IsOutfitItem(const RE::InventoryEntryData* a_entry)
		{
			if (!a_entry || !a_entry->extraLists) {
				return false;
			}
			for (auto* list : *a_entry->extraLists) {
				if (list && list->HasType(RE::ExtraDataType::kOutfitItem)) {
					return true;
				}
			}
			return false;
		}

		bool IsBackNearPlayer(RE::Actor* a_actor)
		{
			auto* player = RE::PlayerCharacter::GetSingleton();
			return player && a_actor->Is3DLoaded() && !a_actor->IsDisabled() &&
			       a_actor->GetWorldspace() == player->GetWorldspace() &&
			       (a_actor->GetWorldspace() || a_actor->GetParentCell() == player->GetParentCell()) &&
			       a_actor->GetPosition().GetDistance(player->GetPosition()) < kNearPlayer;
		}

		void Strip(RE::Actor* a_actor, const Victim& a_victim)
		{
			auto* manager = RE::ActorEquipManager::GetSingleton();
			for (auto& [object, data] : a_actor->GetInventory()) {
				auto& [count, entry] = data;
				if (count > 0 && object && a_victim.strippedOutfit.contains(object->GetFormID()) && entry && entry->IsWorn()) {
					manager->UnequipObject(a_actor, object, nullptr, 1, nullptr, false, false, false, true);
					logger::info("bag: {} {:08X} re-dressed in {} by the engine - taken off again", a_actor->GetName(),
						a_actor->GetFormID(), object->GetName());
				}
			}
		}
	}

	void OnPutInBag(RE::Actor* a_actor)
	{
		if (!a_actor || a_actor->IsPlayerRef()) {
			return;
		}
		Victim victim;
		for (auto& [object, data] : a_actor->GetInventory()) {
			auto& [count, entry] = data;
			if (count > 0 && object && object->IsArmor() && entry && !entry->IsWorn() && IsOutfitItem(entry.get())) {
				victim.strippedOutfit.insert(object->GetFormID());
			}
		}
		logger::info("bag: {} {:08X} put in a sack, {} outfit item(s) not worn", a_actor->GetName(), a_actor->GetFormID(),
			victim.strippedOutfit.size());
		if (victim.strippedOutfit.empty()) {
			g_victims.erase(a_actor->GetFormID());
		} else {
			g_victims.insert_or_assign(a_actor->GetFormID(), std::move(victim));
		}
	}

	void Tick()
	{
		const auto now = Clock::now();
		if (g_victims.empty() || now - g_lastTick < kTickInterval) {
			return;
		}
		g_lastTick = now;
		for (auto it = g_victims.begin(); it != g_victims.end();) {
			auto* actor = RE::TESForm::LookupByID<RE::Actor>(it->first);
			if (!actor || Forms::IsDeadState(actor)) {
				it = g_victims.erase(it);
				continue;
			}
			auto& victim = it->second;
			const bool isNear = IsBackNearPlayer(actor);
			if (!victim.wentAway) {
				victim.wentAway = !isNear;  // still standing where it was bagged: not in the sack yet
				++it;
				continue;
			}
			if (!victim.outSince) {
				if (isNear) {
					victim.outSince = now;
				} else {
					++it;
					continue;
				}
			}
			Strip(actor, victim);
			if (now - *victim.outSince > kGuardWindow) {
				it = g_victims.erase(it);
			} else {
				++it;
			}
		}
	}

	void Reset()
	{
		g_victims.clear();
	}
}
