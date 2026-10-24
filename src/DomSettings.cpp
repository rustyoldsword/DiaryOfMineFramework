#include "DomSettings.h"

namespace DOMFW::DomSettings
{
	namespace
	{
		constexpr RE::FormID       kCoreQuest = 0x000D61;  // DOM01: carries DOM_Core
		constexpr std::string_view kPlugin = "DiaryOfMine.esm"sv;

		Settings g_settings;
		bool     g_pending{ false };  // a new game started: apply when DOM_Core is bound

		bool SetBool(RE::BSScript::Object* a_object, const char* a_name, bool a_value)
		{
			auto* property = a_object->GetProperty(a_name);
			if (!property) {
				logger::warn("dom settings: DOM_Core has no property {}", a_name);
				return false;
			}
			property->SetBool(a_value);
			return true;
		}
	}

	void Configure(const Settings& a_settings) { g_settings = a_settings; }

	void Tick()
	{
		if (!g_pending) {
			return;
		}
		auto* quest = RE::TESDataHandler::GetSingleton()->LookupForm<RE::TESQuest>(kCoreQuest, kPlugin);
		auto* vm = RE::BSScript::Internal::VirtualMachine::GetSingleton();
		auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
		if (!quest || !policy) {
			return;
		}
		RE::BSTSmartPointer<RE::BSScript::Object> core;
		const auto                                handle = policy->GetHandleForObject(RE::TESQuest::FORMTYPE, quest);
		if (!vm->FindBoundObject(handle, "DOM_Core", core) || !core) {
			return;  // not bound yet (new game still starting): try on the next tick
		}
		SetBool(core.get(), "removeGagToggle", g_settings.removeGag);
		SetBool(core.get(), "removeCuffsToggle", g_settings.removeCuffs);
		SetBool(core.get(), "removeBlindfoldToggle", g_settings.removeBlindfold);
		g_pending = false;
		logger::info("dom settings (new game): untie removes gag {}, cuffs {}, blindfold {}", g_settings.removeGag, g_settings.removeCuffs, g_settings.removeBlindfold);
	}

	void OnNewGame() { g_pending = true; }
	void OnLoadGame() { g_pending = false; }
}
