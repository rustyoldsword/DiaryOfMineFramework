#include "LoreGuard.h"

#include "Forms.h"

namespace DOMFW::LoreGuard
{
	namespace
	{
		struct Line
		{
			RE::FormID       id;
			std::string_view plugin;
			const char*      what;
		};

		constexpr std::array<Line, 4> kLines{ {
			{ 0x00C78B, "ZaZAnimationPack.esm"sv, "ZaZ gag branch \"You appear to be in a bind.\"" },
			{ 0x00D7E5, "ZaZAnimationPack.esm"sv, "ZaZ gagged goodbye" },
			{ 0x00D7E6, "ZaZAnimationPack.esm"sv, "ZaZ gagged goodbye" },
			{ 0x0957CD, "troublesofheroine.esp"sv, "TOH \"Fuck me, but let me use your service.\"" },
		} };

		bool Guarded(const RE::TESCondition& a_conditions, const RE::TESFaction* a_faction)
		{
			for (auto* item = a_conditions.head; item; item = item->next) {
				if (item->data.functionData.function == RE::FUNCTION_DATA::FunctionID::kGetInFaction && item->data.functionData.params[0] == a_faction) {
					return true;
				}
			}
			return false;
		}
	}

	void Tick()
	{
		auto* faction = Forms::Get().actor;
		auto* data = RE::TESDataHandler::GetSingleton();
		if (!faction || !data) {
			return;
		}
		static std::array<bool, kLines.size()> done{};  // only for lines that can never be guarded (mod missing, OR tail)
		for (std::size_t i = 0; i < kLines.size(); ++i) {
			if (done[i]) {
				continue;
			}
			const auto& line = kLines[i];
			if (!data->LookupModByName(line.plugin)) {
				done[i] = true;  // that mod is not installed
				continue;
			}
			auto* info = data->LookupForm<RE::TESTopicInfo>(line.id, line.plugin);
			if (!info) {
				continue;  // not created yet
			}
			if (!Guarded(info->objConditions, faction)) {
				auto**                tail = &info->objConditions.head;
				RE::TESConditionItem* last = nullptr;
				while (*tail) {
					last = *tail;
					tail = &(*tail)->next;
				}
				if (last && last->data.flags.isOR) {
					// an item after an OR would join that OR group and loosen the line instead of tightening it
					logger::warn("lore guard: {} ({:08X}) ends in an OR condition - left unchanged", line.what, info->GetFormID());
					done[i] = true;
					continue;
				}
				auto* item = new RE::TESConditionItem();
				item->next = nullptr;
				item->data.object = RE::CONDITIONITEMOBJECT::kSelf;
				item->data.functionData.function = RE::FUNCTION_DATA::FunctionID::kGetInFaction;
				item->data.functionData.params[0] = faction;
				item->data.functionData.params[1] = nullptr;
				item->data.comparisonValue.f = 0.0f;
				item->data.flags.isOR = false;
				item->data.flags.opCode = RE::CONDITION_ITEM_DATA::OpCode::kEqualTo;
				*tail = item;
				logger::info("lore guard: {} ({:08X}) no longer offered by DoM slaves and slavers", line.what, info->GetFormID());
			}
			// a guarded line is checked again on later ticks: if the engine ever rebuilds it, the check goes back on
		}
	}
}
