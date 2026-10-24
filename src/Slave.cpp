#include "Slave.h"

#include "Forms.h"

namespace DOMFW::Slave
{
	namespace
	{
		bool In(RE::Actor* a_actor, const RE::TESFaction* a_faction)
		{
			return Forms::InFaction(a_actor, a_faction);
		}

		// DoM stores 0..255 in faction ranks; ranks above 127 read back negative (DOM_Util.GetFactionRankFloat)
		int Rank(RE::Actor* a_actor, RE::TESFaction* a_faction)
		{
			if (!In(a_actor, a_faction)) {
				return 0;
			}
			const int rank = Forms::FactionRank(a_actor, a_faction).value_or(0);
			return std::clamp(rank < 0 ? 256 + rank : rank, 0, 100);
		}

		bool WearsAny(const std::vector<RE::BGSKeyword*>& a_worn, const std::vector<RE::BGSKeyword*>& a_keywords)
		{
			for (auto* kw : a_keywords) {
				if (std::ranges::find(a_worn, kw) != a_worn.end()) {
					return true;
				}
			}
			return false;
		}

		std::vector<RE::BGSKeyword*> WornKeywords(RE::Actor* a_actor)
		{
			std::vector<RE::BGSKeyword*> out;
			for (auto& [object, data] : a_actor->GetInventory([](RE::TESBoundObject& a_obj) { return a_obj.IsArmor(); })) {
				auto& [count, entry] = data;
				if (count <= 0 || !entry || !entry->IsWorn()) {
					continue;
				}
				if (auto* keywords = object->As<RE::BGSKeywordForm>()) {
					for (std::uint32_t i = 0; i < keywords->numKeywords; ++i) {
						if (keywords->keywords[i]) {
							out.push_back(keywords->keywords[i]);
						}
					}
				}
			}
			return out;
		}

		// the slave's DOM_Actor alias on DOM02Topic, for the variables DoM keeps only in script (behaviour)
		std::string Behaviour(RE::Actor* a_actor)
		{
			auto* quest = Forms::Get().keysQuest;
			auto* vm = RE::BSScript::Internal::VirtualMachine::GetSingleton();
			auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
			if (!quest || !policy) {
				return {};
			}
			RE::BSReadLockGuard guard(quest->aliasAccessLock);
			for (auto* base : quest->aliases) {
				auto* alias = base ? skyrim_cast<RE::BGSRefAlias*>(base) : nullptr;
				if (!alias || alias->GetActorReference() != a_actor) {
					continue;
				}
				RE::BSTSmartPointer<RE::BSScript::Object> object;
				const auto handle = policy->GetHandleForObject(RE::BGSRefAlias::VMTYPEID, alias);
				if (vm->FindBoundObject(handle, "DOM_Actor", object) && object) {
					if (const auto* var = object->GetVariable("__behaviour"); var && var->IsString()) {
						return std::string(var->GetString());
					}
				}
				break;
			}
			return {};
		}
	}

	bool IsPlayerSlave(RE::Actor* a_actor)
	{
		return a_actor && !Forms::IsDeadState(a_actor) && In(a_actor, Forms::Get().playerSlave);
	}

	bool IsJustCaptured(RE::Actor* a_actor)
	{
		return a_actor && In(a_actor, Forms::Get().moods[0].faction);
	}

	View Read(RE::Actor* a_actor)
	{
		View v;
		if (!IsPlayerSlave(a_actor)) {
			return v;
		}
		const auto& f = Forms::Get();
		v.valid = true;
		v.id = a_actor->GetFormID();
		v.name = a_actor->GetDisplayFullName();
		for (const auto& mood : f.moods) {
			if (In(a_actor, mood.faction)) {
				v.mood = mood.name;
				break;
			}
		}
		v.submission = Rank(a_actor, f.submission);
		v.fear = Rank(a_actor, f.fear);
		v.respect = Rank(a_actor, f.respect);
		v.resignation = Rank(a_actor, f.resignation);
		for (std::size_t i = 0; i < 6; ++i) {
			v.training[i] = Rank(a_actor, f.training[i].faction);
			v.hexaco[i] = Rank(a_actor, f.hexaco[i].faction);
		}
		// the two strongest traits, as adjectives
		static constexpr std::array<const char*, 6> adjectives{ "honest", "emotional", "outgoing", "agreeable", "diligent", "curious" };
		std::array<int, 6> order{ 0, 1, 2, 3, 4, 5 };
		std::ranges::sort(order, [&](int a, int b) { return v.hexaco[a] > v.hexaco[b]; });
		if (v.hexaco[order[0]] > 0) {
			v.nature = adjectives[order[0]];
			if (v.hexaco[order[1]] > 0) {
				v.nature += ", "s + adjectives[order[1]];
			}
			v.nature[0] = static_cast<char>(std::toupper(v.nature[0]));
		}

		v.behaviour = Behaviour(a_actor);
		v.tied = In(a_actor, f.tied);
		v.following = v.behaviour == "follow_player" || (v.behaviour.empty() && In(a_actor, f.following));
		v.standing = v.behaviour == "wait";
		v.waiting = v.behaviour == "wait_sandbox" || (v.behaviour.empty() && In(a_actor, f.waiting));
		v.onDuty = In(a_actor, f.onDuty);
		v.naked = In(a_actor, f.naked);
		v.armor = In(a_actor, f.wearArmor);
		v.weapons = In(a_actor, f.holdWeapons);
		v.respectful = In(a_actor, f.respectful);
		v.silent = In(a_actor, f.silent);
		v.fight = In(a_actor, f.fightForPlayer);
		v.walkOnFour = In(a_actor, f.walkOnFour);
		v.orgasmAllowed = !In(a_actor, f.noOrgasm);
		v.marked = In(a_actor, f.marks);
		v.branded = In(a_actor, f.brand);

		const auto worn = WornKeywords(a_actor);
		v.gag = WearsAny(worn, f.gag);
		v.blindfold = WearsAny(worn, f.blindfold);
		v.collar = WearsAny(worn, f.collar);
		v.cuffs = WearsAny(worn, f.cuffs);
		return v;
	}
}
