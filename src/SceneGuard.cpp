#include "SceneGuard.h"

namespace SceneGuard
{
	namespace
	{
		constexpr RE::FormID       kFlag = 0x000800;
		constexpr std::string_view kPlugin = "BaboDialogue - Patches.esp"sv;

		struct Hold
		{
			std::atomic_bool   held{ false };
			std::atomic<float> since{ 0.0f };
		};

		Settings         g_settings;
		Hold             g_holds[4];  // bits 1, 2, 4, 8
		std::atomic_bool g_warned{ false };

		int Index(std::uint32_t a_bit)
		{
			switch (a_bit) {
			case 1: return 0;
			case 2: return 1;
			case 4: return 2;
			case 8: return 3;
			default: return -1;
			}
		}

		RE::TESGlobal* Flag()
		{
			static RE::TESGlobal* cached = nullptr;
			if (cached) {
				return cached;
			}
			if (auto* handler = RE::TESDataHandler::GetSingleton()) {
				cached = handler->LookupForm<RE::TESGlobal>(kFlag, kPlugin);
			}
			if (!cached && !g_warned.exchange(true)) {
				logger::info("scene guard: _SG_SceneBusy not found ({} not enabled) - the interlock is off", kPlugin);
			}
			return cached;
		}

		std::uint32_t Mask()
		{
			auto* flag = Flag();
			return flag ? static_cast<std::uint32_t>(std::max(0.0f, flag->value)) : 0u;
		}

		// the global is engine state: written on the main thread, whoever calls us
		void Apply(std::uint32_t a_bit, bool a_held)
		{
			SKSE::GetTaskInterface()->AddTask([a_bit, a_held] {
				if (auto* flag = Flag()) {
					const auto mask = a_held ? (static_cast<std::uint32_t>(std::max(0.0f, flag->value)) | a_bit) :
					                           (static_cast<std::uint32_t>(std::max(0.0f, flag->value)) & ~a_bit);
					flag->value = static_cast<float>(mask);
				}
			});
		}

		std::uint32_t OwnedMask()
		{
			std::uint32_t mask = 0;
			for (const std::uint32_t bit : { 1u, 2u, 4u, 8u }) {
				if (g_holds[Index(bit)].held) {
					mask |= bit;
				}
			}
			return mask;
		}
	}

	void Configure(const Settings& a_settings)
	{
		g_settings = a_settings;
		logger::info("scene guard: {}, own bit {}, self-release after {:.0f} s", g_settings.enabled ? "on" : "off", g_settings.bit, g_settings.timeout);
	}

	void SetBit(std::uint32_t a_bit, bool a_held, const char* a_why)
	{
		const auto index = Index(a_bit);
		if (!g_settings.enabled || index < 0 || g_holds[index].held.exchange(a_held) == a_held) {
			return;
		}
		g_holds[index].since = 0.0f;
		Apply(a_bit, a_held);
		logger::info("scene guard: bit {} {} ({})", a_bit, a_held ? "held" : "released", a_why ? a_why : "");
	}

	void Set(bool a_held, const char* a_why) { SetBit(g_settings.bit, a_held, a_why); }

	void Reset()
	{
		for (const std::uint32_t bit : { 1u, 2u, 4u, 8u }) {
			auto& hold = g_holds[Index(bit)];
			hold.since = 0.0f;
			if (hold.held.exchange(false)) {
				logger::info("scene guard: bit {} dropped on load/new game", bit);
			}
		}
		// the save may carry our bits from the session that wrote it: clear exactly the ones this plugin can own
		if (const auto mask = Mask(); (mask & (g_settings.bit | kKnockout)) != 0) {
			Apply(g_settings.bit | kKnockout, false);
			logger::info("scene guard: stale bits cleared from the save (mask was {})", mask);
		}
	}

	void Tick(float a_seconds)
	{
		if (g_settings.timeout <= 0.0f) {
			return;
		}
		for (const std::uint32_t bit : { 1u, 2u, 4u, 8u }) {
			auto& hold = g_holds[Index(bit)];
			if (!hold.held) {
				continue;
			}
			const float since = hold.since + a_seconds;
			hold.since = since;
			if (since >= g_settings.timeout) {
				logger::warn("scene guard: self-releasing bit {} after {:.0f} s - whatever held it never finished", bit, since);
				SetBit(bit, false, "timeout");
			}
		}
	}

	bool Held() { return OwnedMask() != 0; }

	bool BusyByOthers() { return (Mask() & ~OwnedMask()) != 0; }

	bool Busy() { return Mask() != 0; }
}
