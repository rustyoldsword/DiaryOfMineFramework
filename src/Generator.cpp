#include "Generator.h"
#include "Forms.h"

#include <nlohmann/json.hpp>

#include <random>

// Every function below names the DOM_Generator (8.4.1) function it reproduces. The ports keep the original's order of
// faction reads/writes and of random draws (DoM's own seeded generator, the script variable `seed`), including its
// quirks, so the same NPC gets the same personality as with the Papyrus code. Faction semantics follow Papyrus:
// GetFactionRank / SetFactionRank / RemoveFromFaction are the engine functions Papyrus calls; IsInFaction is "has a rank
// other than -1" (see Forms::InFaction, the engine's virtual IsInFaction answers wrongly in this build).
namespace DOMFW::Generator
{
	namespace
	{
		using Object = RE::BSScript::Object;
		using ObjectPtr = RE::BSTSmartPointer<Object>;
		using Variable = RE::BSScript::Variable;

		Settings g_settings;

		// a key missing from the actor's JSON file: the rebuilt DOM_Generator reads with this default
		constexpr float        kNoJson = -987654.0f;
		constexpr std::int32_t kNoJsonInt = -987654;

		// ------------------------------------------------------------------------------------------------ factions

		int Rank(RE::Actor* a_actor, RE::TESFaction* a_faction)
		{
			return a_actor && a_faction ? a_actor->GetFactionRank(a_faction, a_actor->IsPlayerRef()) : -2;
		}

		bool In(RE::Actor* a_actor, RE::TESFaction* a_faction)
		{
			return a_actor && a_faction && Forms::InFaction(a_actor, a_faction);
		}

		void SetRank(RE::Actor* a_actor, RE::TESFaction* a_faction, int a_rank)  // Papyrus SetFactionRank
		{
			if (a_actor && a_faction) {
				a_actor->AddToFaction(a_faction, static_cast<std::int8_t>(a_rank));
			}
		}

		void Remove(RE::Actor* a_actor, RE::TESFaction* a_faction)  // Papyrus RemoveFromFaction
		{
			if (a_actor && a_faction) {
				a_actor->RemoveFromFaction(a_faction);
			}
		}

		void UtilSetRank(RE::Actor* a_actor, RE::TESFaction* a_faction, int a_rank)  // DOM_Util.SetFactionRank
		{
			if (!a_faction) {
				return;
			}
			if (a_rank > 127) {
				SetRank(a_actor, a_faction, 127);
			} else if (a_rank > 0) {
				SetRank(a_actor, a_faction, a_rank);
			} else if (In(a_actor, a_faction)) {
				Remove(a_actor, a_faction);
			}
		}

		float UtilRankFloat(RE::Actor* a_actor, RE::TESFaction* a_faction)  // DOM_Util.GetFactionRankFloat
		{
			if (!In(a_actor, a_faction)) {
				return 0.0f;
			}
			const float x = static_cast<float>(Rank(a_actor, a_faction));
			return x < 0.0f ? 256.0f + x : x;
		}

		int UtilRankInt(RE::Actor* a_actor, RE::TESFaction* a_faction)  // DOM_Util.GetFactionRankInt
		{
			return In(a_actor, a_faction) ? Rank(a_actor, a_faction) : 0;
		}

		float UtilRankDate(RE::Actor* a_actor, RE::TESFaction* a_days, RE::TESFaction* a_months, RE::TESFaction* a_years)  // DOM_Util.GetFactionRankDate
		{
			if (!In(a_actor, a_days)) {
				return 0.0f;
			}
			float x = static_cast<float>(Rank(a_actor, a_days));
			if (In(a_actor, a_months)) {
				x += static_cast<float>(Rank(a_actor, a_months));
			}
			if (In(a_actor, a_years)) {
				x += static_cast<float>(Rank(a_actor, a_years));
			}
			return x;
		}

		std::vector<RE::TESFaction*> Factions(RE::BGSListForm* a_list)
		{
			std::vector<RE::TESFaction*> out;
			if (a_list) {
				a_list->ForEachForm([&](RE::TESForm* a_form) {
					out.push_back(a_form ? a_form->As<RE::TESFaction>() : nullptr);
					return RE::BSContainer::ForEachResult::kContinue;
				});
			}
			return out;
		}

		// ------------------------------------------------------------------------------------------------ script access

		class Script
		{
		public:
			Script() = default;
			explicit Script(ObjectPtr a_object) :
				_object(std::move(a_object)) {}

			explicit operator bool() const { return static_cast<bool>(_object); }

			Variable* Var(std::string_view a_name) const
			{
				if (!_object) {
					return nullptr;
				}
				const RE::BSFixedString name(a_name);
				if (auto* property = _object->GetProperty(name)) {
					return property;
				}
				return _object->GetVariable(name);
			}

			template <class T>
			T* Form(std::string_view a_name) const
			{
				const auto* var = Var(a_name);
				if (!var) {
					Missing(a_name);
					return nullptr;
				}
				return var->IsObject() && !var->IsNoneObject() ? var->Unpack<T*>() : nullptr;
			}

			Script Child(std::string_view a_name) const
			{
				const auto* var = Var(a_name);
				return var && var->IsObject() && !var->IsNoneObject() ? Script(var->GetObject()) : Script();
			}

			bool Bool(std::string_view a_name) const
			{
				const auto* var = Var(a_name);
				if (!var) {
					Missing(a_name);
					return false;
				}
				return var->IsBool() ? var->GetBool() : (var->IsInt() && var->GetSInt() != 0);
			}

			float Float(std::string_view a_name) const
			{
				const auto* var = Var(a_name);
				if (!var) {
					Missing(a_name);
					return 0.0f;
				}
				return var->IsFloat() ? var->GetFloat() : (var->IsInt() ? static_cast<float>(var->GetSInt()) : 0.0f);
			}

			std::vector<std::string> Strings(std::string_view a_name) const
			{
				std::vector<std::string> out;
				if (const auto* var = Var(a_name); var && var->IsArray()) {
					if (const auto array = var->GetArray()) {
						for (std::uint32_t i = 0; i < array->size(); ++i) {
							const auto& item = (*array)[i];
							out.emplace_back(item.IsString() ? std::string(item.GetString()) : std::string{});
						}
					}
				}
				return out;
			}

			std::size_t ArrayLength(std::string_view a_name) const
			{
				if (const auto* var = Var(a_name); var && var->IsArray()) {
					if (const auto array = var->GetArray()) {
						return array->size();
					}
				}
				return 0;
			}

		private:
			void Missing(std::string_view a_name) const
			{
				static std::unordered_set<std::string> reported;
				if (reported.emplace(a_name).second) {
					logger::warn("generator: script has no property or variable {}", a_name);
				}
			}

			ObjectPtr _object;
		};

		Script Bound(RE::TESForm* a_form, const char* a_type)
		{
			auto* vm = RE::BSScript::Internal::VirtualMachine::GetSingleton();
			auto* policy = vm ? vm->GetObjectHandlePolicy() : nullptr;
			if (!a_form || !policy) {
				return {};
			}
			ObjectPtr object;
			const auto handle = policy->GetHandleForObject(a_form->GetFormType(), a_form);
			if (handle == policy->EmptyHandle() || !vm->FindBoundObject(handle, a_type, object) || !object) {
				return {};
			}
			return Script(std::move(object));
		}

		// ------------------------------------------------------------------------------------------------ strings

		std::string Upper(std::string_view a_text)
		{
			std::string out(a_text);
			std::ranges::transform(out, out.begin(), [](unsigned char c) { return static_cast<char>(std::toupper(c)); });
			return out;
		}

		std::string Lower(std::string_view a_text)
		{
			std::string out(a_text);
			std::ranges::transform(out, out.begin(), [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
			return out;
		}

		bool Contains(std::string_view a_text, std::string_view a_part)  // SKSE StringUtil.Find(...) >= 0: case-insensitive
		{
			if (a_text.empty()) {
				return false;  // StringUtil.Find returns -1 when startIndex (0) is not inside the string
			}
			return Upper(a_text).find(Upper(a_part)) != std::string::npos;
		}

		bool IsYoungAdult(std::string_view a_race) { return Contains(a_race, "Teen") || Contains(a_race, "Teeen") || Contains(a_race, "YoungAdult"); }
		bool IsChild(std::string_view a_race) { return Contains(a_race, "Child") || Contains(a_race, "Kid"); }
		bool IsElder(std::string_view a_race) { return Contains(a_race, "Old") || Contains(a_race, "Elder"); }

		std::string RaceString(RE::TESNPC* a_base)  // ActorRace.GetName()+" "+MiscUtil.GetRaceEditorID(ActorRace)
		{
			auto* race = a_base ? a_base->race : nullptr;
			if (!race) {
				return " ";
			}
			return std::string(race->GetFullName()) + " " + race->formEditorID.c_str();
		}

		// ------------------------------------------------------------------------------------------------ bonus table

		// "Diary Of Mine/PersonalityTraits.json" floatList: DOM_Generator.GetTraitBonus. DoM writes the file only when it
		// is missing, and it ships with the mod, so the copy on disk is what JsonUtil holds.
		const std::unordered_map<std::string, std::vector<float>>* BonusTable()
		{
			static const auto table = []() -> std::optional<std::unordered_map<std::string, std::vector<float>>> {
				const auto path = std::filesystem::current_path() / L"Data" / L"SKSE" / L"Plugins" / L"StorageUtilData" / L"Diary Of Mine" / L"PersonalityTraits.json";
				try {
					std::ifstream file(path);
					if (!file) {
						logger::error("generator: cannot open {}", path.string());
						return std::nullopt;
					}
					const auto json = nlohmann::json::parse(file);
					std::unordered_map<std::string, std::vector<float>> out;
					for (const auto& [key, list] : json.at("floatList").items()) {
						auto& values = out[Lower(key)];
						for (const auto& value : list) {
							values.push_back(value.get<float>());
						}
					}
					logger::info("generator: {} trait bonus lists read", out.size());
					return out;
				} catch (const std::exception& e) {
					logger::error("generator: {} unreadable: {}", path.string(), e.what());
					return std::nullopt;
				}
			}();
			return table ? &*table : nullptr;
		}

		const std::vector<float>& Bonus(std::string_view a_name)  // DOM_Generator.GetTraitBonus
		{
			static const std::vector<float> none;
			const auto* table = BonusTable();
			if (!table) {
				return none;
			}
			const auto it = table->find(Lower(a_name));
			return it != table->end() ? it->second : none;
		}

		// ------------------------------------------------------------------------------------------------ context

		struct Ctx
		{
			RE::Actor*  actor{ nullptr };
			RE::TESNPC* base{ nullptr };  // GetLeveledActorBase
			Script      gen;              // DOM_Generator
			Script      core;             // DOM01: DOM_Core
			Script      diary;            // DOM04: DOM_Diary
			Script      zaz;              // DOMZaz: DOM_ZAZ
			Script      pah;              // DOMPAH: DOM_PAH
			std::int32_t seed{ 0 };
			bool         randomFlat{ false };

			bool Load(RE::TESQuest* a_gen, RE::Actor* a_actor)
			{
				actor = a_actor;
				base = a_actor ? a_actor->GetActorBase() : nullptr;
				gen = Bound(a_gen, "DOM_Generator");
				if (!actor || !base || !gen) {
					return false;
				}
				core = gen.Child("DOM01");
				diary = gen.Child("DOM04");
				zaz = gen.Child("DOMZaz");
				pah = gen.Child("DOMPAH");
				if (!core) {
					return false;
				}
				if (const auto* var = gen.Var("seed"); var && var->IsInt()) {
					seed = var->GetSInt();
				} else {
					return false;
				}
				randomFlat = core.Bool("RandomFlat");
				return true;
			}

			void StoreSeed() const
			{
				if (auto* var = gen.Var("seed")) {
					var->SetSInt(seed);
				}
			}

			RE::TESFaction* F(std::string_view a_name) const { return gen.Form<RE::TESFaction>(a_name); }

			// DOM_PAH without Paradise Halls: every getter reads DoM's own faction. With PAH the training getters merge
			// two factions and write back; that path stays in Papyrus.
			bool PahAbsent() const
			{
				// DOM_PAH.Initialize fills PAH only from paradise_halls.esm; reading the property's Variable was unreliable
				return !RE::TESDataHandler::GetSingleton()->LookupModByName("paradise_halls.esm");
			}

			// ---- DoM's seeded generator (DOM_Generator.RandomUniform and the Random3* family)
			float Uniform()
			{
				seed = static_cast<std::int32_t>(0x41C64E6Du * static_cast<std::uint32_t>(seed) + 12345u);
				if (seed == std::numeric_limits<std::int32_t>::min()) {
					seed = 0;  // imod by 0x80000000 (-2147483648)
				}
				const float r = static_cast<float>(seed) / 2147483648.0f;
				return std::fabs(r);
			}

			float Three()  // (RandomUniform()+RandomUniform()+RandomUniform())
			{
				float r = Uniform();
				r = r + Uniform();
				r = r + Uniform();
				return r;
			}

			float Random3P(float x)  // Random3Bonus / Random3P: sum/3.0*2.0*x
			{
				float r = Three();
				r = r / 3.0f;
				r = r * 2.0f;
				return r * x;
			}

			float Random3Scaled(float x, std::string_view a_scale) { return Random3P(x) * core.Float(a_scale); }

			float Random3N()
			{
				if (randomFlat) {
					return 102.0f * Uniform() - 1.0f;
				}
				return 34.0f * Three() - 1.0f;
			}
		};

		float EngineRandomFloat()  // Utility.RandomFloat()
		{
			static std::mt19937                          engine{ std::random_device{}() };
			static std::uniform_real_distribution<float> dist(0.0f, 1.0f);
			return dist(engine);
		}

		// ------------------------------------------------------------------------------------------------ origin

		int PlaceOfOrigin(Ctx& c)  // GetPlaceOfOriginIndex
		{
			auto*     a = c.actor;
			auto*     placeFaction = c.F("DOMPlaceOriginFaction");
			int       rank = Rank(a, placeFaction);
			if (rank >= 0) {
				return rank;
			}
			constexpr std::array<const char*, 14> crime{ "CrimeFactionEastMarch", "CrimeFactionFalkreath", "CrimeFactionHaafingar", "CrimeFactionHjaalmarch",
				"CrimeFactionPale", "CrimeFactionReach", "CrimeFactionRift", "CrimeFactionWhiterun", "CrimeFactionWinterhold", "CrimeFactionOrcs",
				"CrimeFactionCidhnaMine", "CrimeFactionGreybeard", "CrimeFactionImperial", "CrimeFactionKhajiitCaravans" };
			for (std::size_t i = 0; i < crime.size(); ++i) {
				if (In(a, c.F(crime[i]))) {
					rank = static_cast<int>(i) + 1;
					break;
				}
			}
			if (rank < 0) {
				return 0;  // Skyrim, not stored
			}
			UtilSetRank(a, placeFaction, rank);  // SetPlaceOfOrigin
			return rank;
		}

		int JobOfOrigin(Ctx& c)  // GetJobOfOriginIndex
		{
			auto* a = c.actor;
			auto* jobFaction = c.F("DOMJobOriginFaction");
			int   rank = Rank(a, jobFaction);
			if (rank >= 0) {
				return rank;
			}
			const auto in = [&](const char* a_name) { return In(a, c.F(a_name)); };
			const auto inCore = [&](const char* a_name) {
				auto* faction = c.core.Form<RE::TESFaction>(a_name);
				return faction && In(a, faction);
			};
			const auto zazFaction = [&](const char* a_name) {
				auto* faction = c.zaz ? c.zaz.Form<RE::TESFaction>(a_name) : nullptr;
				return faction && In(a, faction);
			};
			if (in("JobJarlFaction")) {
				rank = 1;
			} else if (in("GovRuling")) {
				rank = 2;
			} else if (in("GovExiled")) {
				rank = 3;
			} else if (in("BanditFaction")) {
				rank = 4;
			} else if (in("ForswornFaction")) {
				rank = 5;
			} else if (in("CWImperialFaction") || in("CWImperialFactionNPC")) {
				rank = 6;
			} else if (in("CWSonsFaction") || in("CWSonsFactionNPC") || in("CrimeFactionSons")) {
				rank = 7;
			} else if (in("DarkBrotherhoodFaction")) {
				rank = 8;
			} else if (in("ThievesGuildFaction") || in("CrimeFactionThievesGuild")) {
				rank = 9;
			} else if (in("CompanionsFaction")) {
				rank = 10;
			} else if (in("WerewolfFaction")) {
				rank = 11;
			} else if (in("SilverHandFaction")) {
				rank = 12;
			} else if (in("BladesFaction")) {
				rank = 13;
			} else if (in("VigilantOfStendarrFaction")) {
				rank = 14;
			} else if (in("ArenaFaction")) {
				rank = 15;
			} else if (in("ThalmorFaction")) {
				rank = 16;
			} else if (in("NecromancerFaction")) {
				rank = 17;
			} else if (in("WarlockFaction")) {
				rank = 18;
			} else if (in("VampireFaction") || in("DLC1VampireCrimeFaction")) {
				rank = 19;
			} else if (in("JobCourtWizardFaction")) {
				rank = 20;
			} else if (in("JobJusticiar")) {
				rank = 21;
			} else if (in("JobPriestFaction")) {
				rank = 22;
			} else if (in("JobOrcWiseWomanFaction")) {
				rank = 23;
			} else if (in("JobStewardFaction")) {
				rank = 24;
			} else if (in("JobBardFaction")) {
				rank = 25;
			} else if (in("JobJewelerFaction")) {
				rank = 26;
			} else if (in("JobApothecaryFaction")) {
				rank = 27;
			} else if (in("JobTailorFaction")) {
				rank = 28;
			} else if (in("JobMerchantFaction")) {
				rank = 29;
			} else if (in("CaravanMerchant")) {
				rank = 30;
			} else if (in("JobFletcherFaction")) {
				rank = 31;
			} else if (in("JobBlacksmithFaction")) {
				rank = 32;
			} else if (in("JobFarmerFaction")) {
				rank = 33;
			} else if (in("HunterFaction")) {
				rank = 34;
			} else if (in("JobLumberjackFaction")) {
				rank = 35;
			} else if (in("JobMinerFaction")) {
				rank = 36;
			} else if (in("GuardDialogueFaction")) {
				rank = 37;
			} else if (in("FavorJobsBeggarsFaction")) {
				rank = 38;
			} else if (in("JobFenceFaction")) {
				rank = 39;
			} else if (in("JobInnkeeperFaction")) {
				rank = 40;
			} else if (in("JobInnServer")) {
				rank = 41;
			} else if (in("PlayerHousecarlFaction")) {
				rank = 42;
			} else if (in("HagravenFaction")) {
				rank = 49;
			} else if (inCore("TravellingWenchesFaction") || inCore("TravellingWenchesJudgementFaction") || inCore("TravellingWenchesCollectedFaction")) {
				rank = 50;
			} else if (inCore("TravellingWenchesServantFaction")) {
				rank = 51;
			} else if (inCore("TravellingWenchesPatrolFaction")) {
				rank = 52;
			} else if (inCore("DLC1ThrallFaction")) {
				rank = 60;
			} else if (inCore("AygasSlaveTypeFaction")) {
				rank = 61;
			} else if (inCore("HydraSlaveFaction")) {
				rank = 62;
			} else if (inCore("VanillaBanditsSlaveFaction")) {
				rank = 63;
			} else if (inCore("VanillaBanditsExSlaveFaction")) {
				rank = 64;
			} else if (zazFaction("zbfFactionSlave") || in("DOMNotPlayerSlaveFaction")) {
				rank = 65;
			} else if (zazFaction("zbfFactionSlaver") || in("DOMNotPlayerSlaverFaction")) {
				rank = 66;
			}
			if (rank < 0) {
				rank = 0;
			}
			UtilSetRank(a, jobFaction, rank);  // SetJobOfOrigin
			return rank;
		}

		int EmployerOfOrigin(Ctx& c)  // GetEmployerOfOriginIndex
		{
			auto* a = c.actor;
			auto* employerFaction = c.F("DOMEmployerOriginFaction");
			int   rank = Rank(a, employerFaction);
			if (rank >= 0) {
				return rank;
			}
			const auto in = [&](const char* a_name) { return In(a, c.F(a_name)); };
			if (in("DawnstarWhiteHallFaction")) {
				rank = 1;
			} else if (in("FalkreathJarlsLonghouseFaction")) {
				rank = 2;
			} else if (in("MarkarthCastleServantsFaction") || in("MarkarthKeepFaction")) {
				rank = 3;
			} else if (in("MorthalLonghouseFaction")) {
				rank = 4;
			} else if (in("RiftenMistveilKeepFaction")) {
				rank = 5;
			} else if (in("SolitudeBluePalaceFaction") || in("SolitudeBluePalaceServants")) {
				rank = 6;
			} else if (in("WhiterunDragonsReachServants")) {
				rank = 7;
			} else if (in("WindhelmPalace")) {
				rank = 8;
			} else if (in("WinterholdJarlFaction")) {
				rank = 9;
			}
			if (rank < 0) {
				rank = 0;
			}
			UtilSetRank(a, employerFaction, rank);  // SetEmployerOfOrigin
			return rank;
		}

		int TrainerOfOrigin(Ctx& c)  // GetTrainerOfOriginIndex
		{
			auto* a = c.actor;
			auto* trainerFaction = c.F("DOMTrainerOriginFaction");
			int   rank = Rank(a, trainerFaction);
			if (rank >= 0) {
				return rank;
			}
			constexpr std::array<const char*, 18> trainers{ "JobTrainerAlterationFaction", "JobTrainerConjurationFaction", "JobTrainerDestructionFaction",
				"JobTrainerIllusionFaction", "JobTrainerRestorationFaction", "JobTrainerEnchantingFaction", "JobTrainerAlchemyFaction",
				"JobTrainerSpeechcraftFaction", "JobTrainerSmithingFaction", "JobTrainerOneHandedFaction", "JobTrainerTwoHandedFaction",
				"JobTrainerBlockFaction", "JobTrainerHeavyArmorFaction", "JobTrainerLightArmorFaction", "JobTrainerMarksmanFaction",
				"JobTrainerSneakFaction", "JobTrainerLockpickingFaction", "JobTrainerPickpocketFaction" };
			for (std::size_t i = 0; i < trainers.size(); ++i) {
				if (In(a, c.F(trainers[i]))) {
					rank = static_cast<int>(i) + 1;
					break;
				}
			}
			if (rank < 0) {
				rank = 0;
			}
			UtilSetRank(a, trainerFaction, rank);  // SetTrainerOfOrigin
			return rank;
		}

		int ClassOfOrigin(Ctx& c)  // GetClassOfOriginIndex (reads the employer faction: an 8.4.1 quirk, kept)
		{
			auto* a = c.actor;
			int   rank = Rank(a, c.F("DOMEmployerOriginFaction"));
			if (rank >= 0) {
				return rank;
			}
			auto*             npcClass = c.base->npcClass;
			const std::string classString = npcClass ? npcClass->GetFullName() : "";
			const auto        classDescs = c.gen.Strings("__classDescs");
			for (std::size_t i = 0; i < classDescs.size(); ++i) {
				if (Contains(classString, classDescs[i])) {
					rank = static_cast<int>(i);
					break;
				}
			}
			if (rank < 0) {
				rank = 0;
			}
			if (c.diary) {
				UtilSetRank(a, c.diary.Form<RE::TESFaction>("DOMClassOriginFaction"), rank);  // SetClassOfOrigin
			}
			return rank;
		}

		// DOM04.Get*OfOriginName: the generator's description list at the rank DOM_Diary's origin faction holds
		std::string OriginName(Ctx& c, const char* a_diaryFaction, const char* a_descs, bool a_place, bool a_job)
		{
			if (!c.diary) {
				return {};  // a call on None returns ""
			}
			int        idx = Rank(c.actor, c.diary.Form<RE::TESFaction>(a_diaryFaction));
			const auto descs = c.gen.Strings(a_descs);
			const auto n = static_cast<int>(descs.size());
			if (a_place) {  // GetPlaceNameByIndex
				return idx >= 0 && idx < n ? descs[idx] : "unknown place";
			}
			if (a_job && n < 100 && idx >= 100) {  // GetJobNameByIndex
				idx -= 40;
			}
			return idx > 0 && idx < n ? descs[idx] : std::string{};
		}

		// ------------------------------------------------------------------------------------------------ traits

		bool HasKeywordString(RE::Actor* a_actor, std::string_view a_keyword)  // Form.HasKeywordString on an actor
		{
			auto* keyword = RE::TESForm::LookupByEditorID<RE::BGSKeyword>(a_keyword);
			return keyword && a_actor->HasKeyword(keyword);
		}

		std::array<float, 13> TraitBonusForActor(Ctx& c)  // GetTraitBonusForActor
		{
			std::array<float, 13> bonus{};
			const auto            traitCount = c.gen.ArrayLength("__traitNames");
			const auto            add = [&](const std::vector<float>& a_list, auto&& a_draw) {
                for (std::size_t i = 0; i < bonus.size() && i < a_list.size() && i < traitCount; ++i) {
                    if (a_list[i] != 0.0f) {
                        bonus[i] = bonus[i] + a_draw(a_list[i]);
                    }
                }
			};
			const std::string raceString = RaceString(c.base);

			const auto& gender = Bonus(c.base->GetSex() == RE::SEX::kFemale ? "Female" : "Male");
			for (std::size_t i = 0; i < bonus.size() && i < gender.size() && i < traitCount; ++i) {
				bonus[i] = gender[i] != 0.0f ? c.Random3Scaled(gender[i], "trait_gender_bonus") : 0.0f;
			}
			const auto race = [&](float x) { return c.Random3Scaled(x, "trait_race_bonus"); };
			if (HasKeywordString(c.actor, "ActorTypeAnimal")) {
				add(Bonus("Animal"), race);
			}
			if (HasKeywordString(c.actor, "ActorTypeCreature")) {
				add(Bonus("Creature"), race);
			}
			if (HasKeywordString(c.actor, "ActorTypeUndead")) {
				add(Bonus("Undead"), race);
			}
			if (c.actor == c.gen.Form<RE::Actor>("PlayerRef")) {
				add(Bonus("Player"), [&](float x) { return c.Random3P(x); });
			}
			const auto age = [&](float x) { return c.Random3Scaled(x, "trait_age_bonus"); };
			if (IsElder(raceString)) {
				add(Bonus("Elder"), age);
			} else if (IsYoungAdult(raceString)) {
				add(Bonus("YoungAdult"), age);
			} else if (IsChild(raceString)) {
				add(Bonus("Child"), age);
			}
			for (const auto& raceName : c.gen.Strings("__raceDescs")) {
				if (Contains(raceString, raceName)) {
					add(Bonus(raceName), race);
				}
			}

			const auto place = [&](float x) { return c.Random3Scaled(x, "trait_place_bonus"); };
			const auto job = [&](float x) { return c.Random3Scaled(x, "trait_job_bonus"); };
			const auto cls = [&](float x) { return c.Random3Scaled(x, "trait_class_bonus"); };

			PlaceOfOrigin(c);
			if (const auto name = OriginName(c, "DOMPlaceOriginFaction", "__placeDescs", true, false); !name.empty()) {
				add(Bonus(name), place);
			}
			JobOfOrigin(c);
			if (const auto name = OriginName(c, "DOMJobOriginFaction", "__jobDescs", false, true); !name.empty()) {
				add(Bonus(name), job);
			}
			EmployerOfOrigin(c);
			if (const auto name = OriginName(c, "DOMEmployerOriginFaction", "__employerDescs", false, false); !name.empty()) {
				add(Bonus(name), job);
			}
			TrainerOfOrigin(c);
			if (const auto name = OriginName(c, "DOMTrainerOriginFaction", "__trainerDescs", false, false); !name.empty()) {
				add(Bonus(name), cls);
			}
			ClassOfOrigin(c);
			if (const auto name = OriginName(c, "DOMClassOriginFaction", "__classDescs", false, false); !name.empty()) {
				add(Bonus(name), cls);
			}
			return bonus;
		}

		std::vector<float> TraitsGenerated(Ctx& c)  // GetTraitsGenerated
		{
			auto*      a = c.actor;
			auto*      av = a->AsActorValueOwner();
			const auto low = static_cast<std::int32_t>(c.base->GetFormID() & 0x00FFFFFF);

			const float xs = av->GetActorValue(RE::ActorValue::kStamina) - 200.0f;
			const float xm = av->GetActorValue(RE::ActorValue::kMagicka) / 10.0f - 100.0f;
			const float xx = static_cast<float>(static_cast<std::int32_t>(a->GetSoulSize()));  // PO3_SKSEFunctions.GetActorSoulSize

			std::int32_t formID;
			if (!c.base->IsUnique() || c.core.Bool("seedUniques")) {
				auto* seedFaction = c.F("DOMRandomSeed");
				if (In(a, seedFaction)) {
					c.seed = Rank(a, seedFaction);
				} else {
					c.seed = (static_cast<std::int32_t>(EngineRandomFloat() * 256.0f) % 256) - 128;
					SetRank(a, seedFaction, c.seed);
				}
				formID = static_cast<std::int32_t>(static_cast<std::uint32_t>(c.seed) + static_cast<std::uint32_t>(low));
			} else {
				formID = low;
			}
			c.seed = static_cast<std::int32_t>(0x10A1u * static_cast<std::uint32_t>(formID + 0x44) + 0x3C6EF35Fu);
			if (c.seed == std::numeric_limits<std::int32_t>::min()) {
				c.seed = 0;
			}

			std::vector<float> t(12);
			for (int i = 0; i < 6; ++i) {
				t[i] = c.Random3N();
			}
			t[6] = c.Random3N() + xx * 2.0f;
			t[7] = c.Random3N() + xs / 20.0f;
			t[8] = c.Random3N();
			t[9] = c.Random3N();
			t[10] = c.Random3N();
			t[11] = c.Random3N() + xm / 10.0f;

			const auto bonus = TraitBonusForActor(c);
			for (std::size_t i = 0; i < bonus.size(); ++i) {
				if (i == 9) {
					if (c.Uniform() > 0.5f) {
						t[i] = t[i] + bonus[i];
					} else {
						t[i] = t[i] - bonus[bonus.size() - 1];
					}
				} else if (i < 12) {
					t[i] = t[i] + bonus[i];
				}
			}

			const auto place = [&](float x) { return c.Random3Scaled(x, "trait_place_bonus"); };
			float      x = av->GetActorValue(RE::ActorValue::kMorality);
			if (x < 1.0f) {
				t[0] = t[0] - place(25.0f);
			} else if (x < 2.0f) {
				t[0] = t[0] - place(10.0f);
			} else if (x < 3.0f) {
				t[0] = t[0] + place(10.0f);
			} else {
				t[0] = t[0] + place(25.0f);
			}
			x = av->GetActorValue(RE::ActorValue::kConfidence);
			if (x < 1.0f) {
				t[10] = t[10] - place(25.0f);
			} else if (x < 2.0f) {
				t[10] = t[10] - place(10.0f);
			} else if (x < 3.0f) {
				t[10] = t[10] + place(10.0f);
			} else {
				t[10] = t[10] + place(25.0f);
			}
			x = av->GetActorValue(RE::ActorValue::kAssistance);
			if (x < 1.0f) {
				t[3] = t[3] - place(15.0f);
			} else if (x > 1.0f) {
				t[3] = t[3] + place(15.0f);
			}
			for (auto& v : t) {
				v = std::clamp(v, 0.0f, 100.0f);
			}
			return t;
		}

		constexpr std::array<const char*, 12> kTraitFactions{ "DOMTraitHonesty", "DOMTraitEmotionality", "DOMTraitExtraversion", "DOMTraitAgreeableness",
			"DOMTraitConscientiousness", "DOMTraitOpenness", "DOMFacetWilfulness", "DOMFacetToughness", "DOMFacetSensuality", "DOMFacetSubmissivity",
			"DOMFacetBoldness", "DOMFacetSmartness" };

		// ------------------------------------------------------------------------------------------------ virginity

		bool HasAssociation(RE::Actor* a_actor, RE::BGSAssociationType* a_type)  // Actor.HasAssociation(type)
		{
			auto* npc = a_actor->GetActorBase();
			if (!npc || !a_type || !npc->relationships) {
				return false;
			}
			for (const auto* relationship : *npc->relationships) {
				if (relationship && relationship->assocType == a_type && (relationship->npc1 == npc || relationship->npc2 == npc)) {
					return true;
				}
			}
			return false;
		}

		std::pair<int, int> JobsAndEmployers(Ctx& c)
		{
			int jobs = Rank(c.actor, c.F("DOMJobOriginFaction"));
			int emps = Rank(c.actor, c.F("DOMEmployerOriginFaction"));
			if (jobs < 0 && emps < 0) {
				jobs = JobOfOrigin(c);
				emps = EmployerOfOrigin(c);
			}
			return { jobs, emps };
		}

		enum Virgin : int
		{
			kVaginal = 0,  // DOMListVirginFactions order
			kGang = 1,
			kAnal = 2,
			kOral = 3,
			kSame = 4
		};

		int VirginDefault(Ctx& c, int a_which)  // Get{Vaginal,Gang,Anal,Oral,Same}VirginDefaultStatus
		{
			static constexpr std::array<const char*, 5> faction{ "DOMVirginVaginal", "DOMVirginGangbang", "DOMVirginAnal", "DOMVirginOral", "DOMVirginSame" };
			static constexpr std::array<const char*, 5> toggle{ "virginVToggle", "virginGToggle", "virginAToggle", "virginOToggle", "virginSToggle" };
			auto*      a = c.actor;
			auto*      f = c.F(faction[a_which]);
			if (In(a, f)) {
				return Rank(a, f);
			}
			if (!c.core.Bool(toggle[a_which])) {
				return 4;
			}
			float chance = 0.0f;
			if (a_which == kVaginal) {
				const bool spouse = HasAssociation(a, c.core.Form<RE::BGSAssociationType>("pSpouse"));
				const bool lover = HasAssociation(a, c.core.Form<RE::BGSAssociationType>("pCourting"));
				if (spouse || lover) {
					return 4;
				}
				if (Rank(a, c.F("DOMTrainVaginal")) >= 1) {
					return 3;
				}
				chance = 0.6f;
			} else if (a_which == kAnal) {
				chance = 0.2f;
			} else if (a_which == kOral) {
				chance = 0.4f;
			} else {
				chance = 0.05f;
			}
			const auto raceString = RaceString(c.base);
			if (a_which == kSame) {
				if (IsYoungAdult(raceString) || IsChild(raceString)) {
					return 0;
				}
			} else if (IsElder(raceString)) {
				chance += 0.3f;
			} else if (IsYoungAdult(raceString) || IsChild(raceString)) {
				return 0;
			}
			if (a_which == kAnal) {
				if (HasAssociation(a, c.core.Form<RE::BGSAssociationType>("pSpouse"))) {
					chance += 0.2f;
				} else if (HasAssociation(a, c.core.Form<RE::BGSAssociationType>("pCourting"))) {
					chance += 0.1f;
				}
			}
			const auto [jobs, emps] = JobsAndEmployers(c);
			switch (a_which) {
			case kVaginal:
				if (emps > 0) {
					chance += 0.1f;
				}
				if (jobs < 4) {
					chance += 0.2f;
				} else if (jobs == 4) {
					chance += 0.3f;
				} else if (jobs == 9) {
					chance += 0.2f;
				} else if (jobs == 25) {
					chance += 0.3f;
				} else if (jobs == 40 || jobs == 41) {
					chance += 0.3f;
				}
				break;
			case kAnal:
				if (emps > 0) {
					chance += 0.2f;
				}
				if (jobs < 4) {
					chance += 0.2f;
				} else if (jobs == 4) {
					chance += 0.2f;
				} else if (jobs == 9) {
					chance += 0.2f;
				} else if (jobs == 25) {
					chance += 0.3f;
				} else if (jobs == 30 || jobs == 31) {
					chance += 0.1f;
				} else if (jobs == 40 || jobs == 41) {
					chance += 0.3f;
				}
				break;
			case kOral:
				if (emps > 0) {
					chance += 0.3f;
				}
				if (jobs < 4) {
					chance += 0.2f;
				} else if (jobs == 4) {
					chance += 0.1f;
				} else if (jobs == 9) {
					chance += 0.1f;
				} else if (jobs == 25) {
					chance += 0.3f;
				} else if (jobs == 30 || jobs == 31) {
					chance += 0.1f;
				} else if (jobs == 40 || jobs == 41) {
					chance += 0.3f;
				}
				break;
			default:  // same sex and gangbang
				if (emps > 0) {
					chance += 0.02f;
				}
				if (jobs < 4) {
					chance += 0.02f;
				} else if (jobs == 4) {
					chance += 0.01f;
				} else if (jobs >= 6 && jobs <= 15) {
					chance += 0.01f;
				} else if (jobs == 25) {
					chance += 0.01f;
				} else if (jobs == 40 || jobs == 41) {
					chance += 0.02f;
				}
				break;
			}
			return c.Uniform() < chance ? 4 : 0;
		}

		// ------------------------------------------------------------------------------------------------ training

		// GetTrainingFloat / GetTrainingInt with the file present: the higher of rank and JSON value when in the faction
		float TrainingFloat(RE::Actor* a_actor, RE::TESFaction* a_faction, float a_json)
		{
			if (a_faction && In(a_actor, a_faction)) {
				const float rank1 = static_cast<float>(Rank(a_actor, a_faction));
				const float rank2 = a_json != kNoJson ? a_json : rank1;
				return rank2 > rank1 ? rank2 : rank1;
			}
			return a_json != kNoJson ? a_json : 0.0f;
		}

		int TrainingInt(RE::Actor* a_actor, RE::TESFaction* a_faction, std::int32_t a_json)
		{
			if (a_faction && In(a_actor, a_faction)) {
				const int rank1 = Rank(a_actor, a_faction);
				const int rank2 = a_json != kNoJsonInt ? a_json : rank1;
				return rank2 > rank1 ? rank2 : rank1;
			}
			return a_json != kNoJsonInt ? a_json : 0;
		}

		void FactionOrJsonDate(RE::Actor* a, float a_json, RE::TESFaction* a_days, RE::TESFaction* a_months, RE::TESFaction* a_years)  // GetFactionOrJSONDateValue
		{
			float value;  // GetTrainingDate
			if (a_days && In(a, a_days)) {
				float ndays = static_cast<float>(Rank(a, a_days));
				if (In(a, a_months)) {
					ndays += static_cast<float>(Rank(a, a_months)) * 30.0f;
				}
				if (In(a, a_years)) {
					ndays += static_cast<float>(Rank(a, a_years)) * 30.0f * 12.0f;
				}
				const float rank2 = a_json != kNoJson ? a_json : ndays;
				value = rank2 > ndays ? rank2 : ndays;
			} else {
				value = a_json != kNoJson ? a_json : 0.0f;
			}
			int ndays = static_cast<int>(value);
			if (ndays < 31) {
				SetRank(a, a_days, ndays);
				SetRank(a, a_months, 0);
				SetRank(a, a_years, 0);
				return;
			}
			int nmonths = ndays / 30;
			ndays = ndays - nmonths * 30;
			if (nmonths <= 12) {
				SetRank(a, a_days, ndays);
				SetRank(a, a_months, nmonths);
				SetRank(a, a_years, 0);
				return;
			}
			int nyears = nmonths / 12;
			if (nyears > 127) {
				nyears = 127;
			}
			nmonths = nmonths - nyears * 12;
			if (nmonths > 127) {
				nmonths = 127;
			}
			ndays = ndays - nmonths * 30 - nyears * 12 * 30;
			if (ndays > 127) {
				ndays = 127;
			}
			SetRank(a, a_days, ndays);
			SetRank(a, a_months, nmonths);
			SetRank(a, a_years, nyears);
		}

		// the 13 DOM_PAH getters SetPersonality and GetTrainingStatsFromFactionsOrRead use, without Paradise Halls
		struct PahStat
		{
			const char* hasFaction;  // DOM_PAH.has*Training reads this DOM_PAH faction (Pose reads Respect: 8.4.1 quirk)
			const char* getFaction;  // DOM_PAH.Get*FromFaction reads this one
			bool        asFloat;     // GetFactionRankFloat instead of the raw rank
			int         jsonIndex;   // __trainingNames index of its JSON key
			const char* genFaction;  // the DOM_Generator faction GetTrainingStatsFromFactionsOrRead writes
		};

		// order of GetTrainingStatsFromFactionsOrRead's writes; SetPersonality's mind order is submission..respect, pose,
		// oral, vaginal, anal, combat, house, work (kMindOrder)
		constexpr std::array<PahStat, 13> kPahStats{ {
			{ "DOMTrainSubmission", "DOMTrainSubmission", false, 0, "DOMTrainSubmission" },
			{ "DOMTrainFear", "DOMTrainFear", false, 1, "DOMTrainFear" },
			{ "DOMTrainHumiliation", "DOMTrainHumiliation", false, 2, "DOMTrainHumiliation" },
			{ "DOMTrainAnger", "DOMTrainAnger", false, 3, "DOMTrainAnger" },
			{ "DOMTrainResignation", "DOMTrainResignation", false, 4, "DOMTrainResignation" },
			{ "DOMTrainRespect", "DOMTrainRespect", false, 5, "DOMTrainRespect" },
			{ "DOMTrainRespect", "DOMTrainPose", false, 22, "DOMTrainPose" },
			{ "DOMTrainOral", "DOMTrainOral", false, 21, "DOMTrainOral" },
			{ "DOMTrainVaginal", "DOMTrainVaginal", false, 18, "DOMTrainVaginal" },
			{ "DOMTrainAnal", "DOMTrainAnal", false, 20, "DOMTrainAnal" },
			{ "DOMTrainCombat", "DOMTrainCombat", true, 25, "DOMTrainCombat" },
			{ "DOMTrainHouse", "DOMTrainHouse", true, 23, "DOMTrainHouse" },
			{ "DOMTrainWorking", "DOMTrainWorking", true, 24, "DOMTrainWorking" },
		} };

		// the training path can run natively: no Paradise Halls (house/work have their own PAH factions) and SexLab
		// stats not merged into oral/vaginal/anal training
		bool TrainingNative(const Ctx& c)
		{
			const char* reason = !c.PahAbsent()                                                                 ? "Paradise Halls is installed" :
			                     c.pah.Form<RE::TESFaction>("PAHTrainHouse") || c.pah.Form<RE::TESFaction>("PAHTrainWork") ? "PAH Home Sweet Home is installed" :
			                     c.core.Bool("readSexlabValuesToggle")                                               ? "SexLab stats are read into training" :
			                                                                                                           nullptr;
			if (reason) {
				static std::atomic_bool logged{ false };
				if (!logged.exchange(true)) {
					logger::info("generator: training stays in Papyrus: {}", reason);
				}
			}
			return !reason;
		}

		float PahGet(const Ctx& c, const PahStat& a_stat)  // DOM_PAH.Get*FromFaction
		{
			auto* f = c.pah.Form<RE::TESFaction>(a_stat.getFaction);
			return a_stat.asFloat ? UtilRankFloat(c.actor, f) : static_cast<float>(Rank(c.actor, f));
		}

		// ------------------------------------------------------------------------------------------------ logging

		void FirstUse(std::string_view a_what)
		{
			static std::mutex                      lock;
			static std::unordered_set<std::string> used;
			std::scoped_lock                       guard(lock);
			if (used.emplace(a_what).second) {
				logger::info("generator: native {} in use", a_what);
			}
		}

		std::string Who(RE::Actor* a_actor)
		{
			return a_actor ? std::format("{} {:08X}", a_actor->GetDisplayFullName(), a_actor->GetFormID()) : "None";
		}

		// ------------------------------------------------------------------------------------------------ Papyrus

		std::int32_t GeneratorMode(RE::StaticFunctionTag*) { return g_settings.mode; }

		// OpenActorJSON: the four file names it tries, in order ("" where the player has no name yet)
		std::vector<std::string> ActorJsonNames(RE::StaticFunctionTag*, RE::Actor* a_actor, RE::Actor* a_player)
		{
			auto* base = a_actor ? a_actor->GetActorBase() : nullptr;
			if (!base) {
				return {};
			}
			std::string name = a_actor->GetDisplayFullName();
			if (name.empty()) {
				name = base->GetFullName();
			}
			const auto        id = std::format("{:08x}", base->GetFormID() & 0x00FFFFFF);  // DOM_Util.ConvertIDToHex
			const std::string player = a_player ? a_player->GetDisplayFullName() : "";
			std::vector<std::string> out(4);
			if (!player.empty()) {
				out[0] = "Diary Of Mine/" + player + "/" + id + "_" + name + ".json";
				out[1] = "Diary Of Mine/" + player + "/" + id + ".json";
			}
			out[2] = "Diary Of Mine/" + id + "_" + name + ".json";
			out[3] = "Diary Of Mine/" + id + ".json";
			FirstUse("OpenActorJSON");
			return out;
		}

		std::vector<float> GenTraitsGenerated(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor) || !BonusTable()) {
				return {};
			}
			auto traits = TraitsGenerated(c);
			c.StoreSeed();
			FirstUse("GetTraitsGenerated");
			return traits;
		}

		// GetTraitsFromFactions
		std::vector<float> GenTraitsFromFactions(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return {};
			}
			std::vector<float> out;
			for (const auto* name : kTraitFactions) {
				out.push_back(static_cast<float>(Rank(a_actor, c.F(name))));
			}
			FirstUse("GetTraitsFromFactions");
			return out;
		}

		// GetTraitsFromFactionOrGenerated / GetTraitsFromFactionOrReadOrGenerated: a trait the actor has a faction
		// rank for keeps that rank, the others take a_values (generated, or read from the JSON file)
		std::vector<float> GenTraitsFromFactionsOr(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<float> a_values)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor) || a_values.size() < kTraitFactions.size()) {
				return {};
			}
			for (std::size_t i = 0; i < kTraitFactions.size(); ++i) {
				if (auto* f = c.F(kTraitFactions[i]); In(a_actor, f)) {
					a_values[i] = static_cast<float>(Rank(a_actor, f));
				}
			}
			FirstUse("trait factions");
			return a_values;
		}

		// SetNPCTraits (not a DoM actor yet): every DOMListHEXACOFactions faction gets the trait as int
		bool GenSetTraitFactions(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<float> a_traits)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return false;
			}
			const auto list = Factions(c.gen.Form<RE::BGSListForm>("DOMListHEXACOFactions"));
			for (std::size_t i = 0; i < a_traits.size() && i < list.size(); ++i) {
				SetRank(a_actor, list[i], static_cast<int>(a_traits[i]));
			}
			return true;
		}

		// GetVirginStatusGenerated: vaginal, oral, anal, same, gang (8.4.1 order, not the faction list's)
		std::vector<std::int32_t> GenVirginGenerated(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return {};
			}
			std::vector<std::int32_t> v(5);
			v[0] = VirginDefault(c, kVaginal);
			v[1] = VirginDefault(c, kOral);
			v[2] = VirginDefault(c, kAnal);
			v[3] = VirginDefault(c, kSame);
			v[4] = VirginDefault(c, kGang);
			c.StoreSeed();
			FirstUse("GetVirginStatusGenerated");
			return v;
		}

		// GetVirginStatusReadOrGenerated: a_status / a_names are JsonUtil.GetIntValue(file, __virginStatus[i] /
		// __virginNames[i], -1) for the loop's indices (all -1 without a file: every status is generated, in index order)
		std::vector<std::int32_t> GenVirginReadOrGenerated(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<std::int32_t> a_status,
			std::vector<std::int32_t> a_names)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return {};
			}
			std::vector<std::int32_t> v(5);
			for (std::size_t i = 0; i < v.size() && i < a_status.size() && i < a_names.size(); ++i) {
				if (a_status[i] == -99) {
					continue;  // past the original loop's bound: stays 0
				}
				if (a_status[i] >= 0) {
					v[i] = a_status[i];
				} else if (a_names[i] == 1) {
					v[i] = 0;
				} else if (a_names[i] == 0) {
					v[i] = 4;
				} else {
					v[i] = VirginDefault(c, static_cast<int>(i));
				}
			}
			c.StoreSeed();
			FirstUse("GetVirginStatusReadOrGenerated");
			return v;
		}

		// GetVirginStatus's last loop: a status the actor has a faction rank for keeps the rank
		std::vector<std::int32_t> GenVirginFromFactions(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<std::int32_t> a_status)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return {};
			}
			const auto list = Factions(c.gen.Form<RE::BGSListForm>("DOMListVirginFactions"));
			for (std::size_t i = 0; i < list.size() && i < a_status.size(); ++i) {
				if (In(a_actor, list[i])) {
					a_status[i] = Rank(a_actor, list[i]);
				}
			}
			return a_status;
		}

		// SetVirginStatusFactions
		bool GenSetVirginFactions(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<std::int32_t> a_status)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return false;
			}
			const auto list = Factions(c.gen.Form<RE::BGSListForm>("DOMListVirginFactions"));
			for (std::size_t i = 0; i < list.size() && i < a_status.size(); ++i) {
				if (a_status[i] >= 0) {
					UtilSetRank(a_actor, list[i], a_status[i]);
				}
			}
			FirstUse("SetVirginStatusFactions");
			return true;
		}

		// GetTrainingStatsFromFactionsOrRead after its relationship step, the actor's JSON file present:
		// a_training[i] = JsonUtil.GetFloatValue(file, __trainingNames[i], kNoJson), a_dates = "trauma", "enslaved",
		// a_counters[i] = JsonUtil.GetIntValue(file, __counterNames[i], kNoJsonInt). false = not handled, run Papyrus.
		bool GenTrainingFromJson(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::vector<float> a_training, std::vector<float> a_dates,
			std::vector<std::int32_t> a_counters)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor) || !TrainingNative(c) || a_dates.size() < 2) {
				return false;
			}
			auto*      a = a_actor;
			const auto json = [&](std::size_t i) { return i < a_training.size() ? a_training[i] : kNoJson; };

			const auto training = Factions(c.gen.Form<RE::BGSListForm>("DOMListTrainingFactions"));
			const auto m = static_cast<int>(c.gen.ArrayLength("__trainingNames")) - 2;
			for (int i = 6; i < static_cast<int>(training.size()) && i < m; ++i) {
				if (i < 18 || i > 25) {  // SetFactionOrJSONFloatValue
					UtilSetRank(a, training[i], static_cast<int>(TrainingFloat(a, training[i], json(i))));
				}
			}
			FactionOrJsonDate(a, a_dates[0], c.F("DOMTraumaInDays"), c.F("DOMTraumaInMonths"), c.F("DOMTraumaInYears"));
			FactionOrJsonDate(a, a_dates[1], c.F("DOMEnslavedInDays"), c.F("DOMEnslavedInMonths"), c.F("DOMEnslavedInYears"));

			for (const auto& stat : kPahStats) {  // Get*Training(fileName, akTarget), the file present
				float value;
				if (In(a, c.pah.Form<RE::TESFaction>(stat.hasFaction))) {
					const float rank1 = PahGet(c, stat);
					const float j = json(stat.jsonIndex);
					const float rank2 = j != kNoJson ? j : rank1;
					value = rank2 > rank1 ? rank2 : rank1;
				} else {
					const float j = json(stat.jsonIndex);
					value = j != kNoJson ? j : 0.0f;
				}
				UtilSetRank(a, c.F(stat.genFaction), static_cast<int>(value));
			}

			const auto counters = Factions(c.gen.Form<RE::BGSListForm>("DOMListCounterFactions"));
			const auto names = c.gen.ArrayLength("__counterNames");
			for (std::size_t i = 0; i < counters.size() && i < names; ++i) {  // GetFactionOrJSONIntValue
				UtilSetRank(a, counters[i], TrainingInt(a, counters[i], i < a_counters.size() ? a_counters[i] : kNoJsonInt));
			}
			auto*     nbSex = c.F("DOMNbSex");
			const int sex = Rank(a, nbSex);
			const int rape = Rank(a, c.F("DOMNbRape"));
			if (sex < rape) {
				SetRank(a, nbSex, rape);
			}
			FirstUse("GetTrainingStatsFromFactionsOrRead");
			return true;
		}

		// GetTrainingStatsFromFactions(akMind): the values it assigns, in one array. [0, a_statsLength): TRAINING_Stats
		// (only the indices the loop assigns are meaningful), then broken and enslaved timers, then the 13 DOM_PAH getters
		// in mind order (submission, fear, humiliation, anger, resignation, respect, pose, oral, vaginal, anal, combat,
		// house, work), then one rank per counter. Empty = not handled.
		std::vector<float> GenTrainingFromFactions(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::int32_t a_statsLength,
			std::int32_t a_countersLength)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor) || !TrainingNative(c) || a_statsLength < 0 || a_countersLength < 0) {
				return {};
			}
			auto* a = a_actor;
			std::vector<float> out(static_cast<std::size_t>(a_statsLength), 0.0f);
			const auto         training = Factions(c.gen.Form<RE::BGSListForm>("DOMListTrainingFactions"));
			const auto         m = static_cast<int>(c.gen.ArrayLength("__trainingNames")) - 2;
			for (int i = 6; i < static_cast<int>(training.size()) && i < m && i < a_statsLength; ++i) {
				if (i < 18 || i > 25) {
					out[i] = UtilRankFloat(a, training[i]);
				}
			}
			out.push_back(UtilRankDate(a, c.F("DOMTraumaInDays"), c.F("DOMTraumaInMonths"), c.F("DOMTraumaInYears")));
			out.push_back(UtilRankDate(a, c.F("DOMEnslavedInDays"), c.F("DOMEnslavedInMonths"), c.F("DOMEnslavedInYears")));
			// mind order: kPahStats 0-5 (submission..respect), 6 pose, 7 oral, 8 vaginal, 9 anal, 10 combat; house and
			// work are read from the generator's own factions with GetFactionRankFloat
			for (std::size_t i = 0; i < 11; ++i) {
				out.push_back(PahGet(c, kPahStats[i]));
			}
			out.push_back(UtilRankFloat(a, c.F("DOMTrainHouse")));
			out.push_back(UtilRankFloat(a, c.F("DOMTrainWorking")));
			const auto counters = Factions(c.gen.Form<RE::BGSListForm>("DOMListCounterFactions"));
			const auto names = c.gen.ArrayLength("__counterNames");
			for (std::size_t i = 0; i < counters.size() && i < names && i < static_cast<std::size_t>(a_countersLength); ++i) {
				out.push_back(static_cast<float>(UtilRankInt(a, counters[i])));
			}
			FirstUse("GetTrainingStatsFromFactions");
			return out;
		}

		// ------------------------------------------------------------------------------------------------ inventory

		// ObjectReference.GetNumItems / GetNthForm (SKSE) order: the base container's entries that are still there
		// (leveled lists skipped, the inventory change merged in), then the other inventory entries with a positive count
		std::vector<RE::TESForm*> InventoryForms(RE::TESObjectREFR* a_ref)
		{
			std::vector<RE::InventoryEntryData*> entries;
			if (auto* changes = a_ref->GetInventoryChanges(true); changes && changes->entryList) {
				for (auto* entry : *changes->entryList) {
					entries.push_back(entry);
				}
			}
			std::vector<bool>         used(entries.size(), false);
			std::vector<RE::TESForm*> out;
			if (const auto* container = a_ref->GetContainer()) {
				container->ForEachContainerObject([&](RE::ContainerObject& a_object) {
					auto* form = a_object.obj;
					if (!form || form->Is(RE::FormType::LeveledItem)) {
						return RE::BSContainer::ForEachResult::kContinue;
					}
					std::int32_t count = a_object.count;
					for (std::size_t i = 0; i < entries.size(); ++i) {
						if (!used[i] && entries[i] && entries[i]->object == form) {
							count += entries[i]->countDelta;
							used[i] = true;
							break;
						}
					}
					if (count > 0) {
						out.push_back(form);
					}
					return RE::BSContainer::ForEachResult::kContinue;
				});
			}
			for (std::size_t i = 0; i < entries.size(); ++i) {
				if (!used[i] && entries[i] && entries[i]->object && entries[i]->countDelta > 0) {
					out.push_back(entries[i]->object);
				}
			}
			return out;
		}

		std::uint32_t SlotMask(const RE::TESForm* a_form)
		{
			const auto* armor = a_form ? a_form->As<RE::TESObjectARMO>() : nullptr;
			return armor ? armor->GetSlotMask().underlying() : 0;
		}

		// Actor.GetWornForm(mask) (SKSE): a worn armor using any of the mask's slots
		RE::TESForm* WornForm(RE::Actor* a_actor, std::uint32_t a_mask)
		{
			auto* changes = a_actor->GetInventoryChanges(true);
			if (!changes || !changes->entryList) {
				return nullptr;
			}
			for (auto* entry : *changes->entryList) {
				if (!entry || !entry->object || !(SlotMask(entry->object) & a_mask) || !entry->extraLists) {
					continue;
				}
				for (auto* extra : *entry->extraLists) {
					if (extra && (extra->HasType(RE::ExtraDataType::kWorn) || extra->HasType(RE::ExtraDataType::kWornLeft))) {
						return entry->object;
					}
				}
			}
			return nullptr;
		}

		std::int32_t ItemCount(RE::TESObjectREFR* a_ref, RE::TESForm* a_form)  // ObjectReference.GetItemCount(form)
		{
			auto* object = a_form ? a_form->As<RE::TESBoundObject>() : nullptr;
			if (!object) {
				return 0;
			}
			const auto counts = a_ref->GetInventoryCounts([&](RE::TESBoundObject& a_item) { return &a_item == object; });
			const auto it = counts.find(object);
			return it != counts.end() ? it->second : 0;
		}

		bool FormHasKeyword(const RE::TESForm* a_form, const RE::BGSKeyword* a_keyword)  // Form.HasKeyword
		{
			const auto* keywords = a_form && a_keyword ? a_form->As<RE::BGSKeywordForm>() : nullptr;
			return keywords && keywords->HasKeyword(a_keyword);
		}

		// ------------------------------------------------------------------------------------------------ ZaZ restraints

		// DOM_ZAZ.IsItemRestraint = hasKeywordWrist || hasKeywordArmbinder || hasKeywordYoke, each also asking DOM_ZAD
		struct Restraints
		{
			std::vector<RE::BGSKeyword*> keywords;

			bool Load(RE::TESQuest* a_zaz)
			{
				const auto zaz = Bound(a_zaz, "DOM_ZAZ");
				if (!zaz) {
					return false;
				}
				const auto zad = zaz.Child("DOMZad");
				for (const auto* name : { "PHHSHWornWrist", "zbfWornWrist", "sbcWornWrist", "DOMWornWrist", "zbfWornElbows", "DOMWornArmbinder", "PHHSHWornYoke",
						 "zbfWornYoke", "DOMWornYoke" }) {
					keywords.push_back(zaz.Form<RE::BGSKeyword>(name));
				}
				if (zad) {
					for (const auto* name : { "zad_DeviousCuffsFront", "zad_DeviousArmCuffs", "zad_DeviousArmbinderElbow", "zad_DeviousArmbinder", "zad_DeviousYoke" }) {
						keywords.push_back(zad.Form<RE::BGSKeyword>(name));
					}
				}
				return true;
			}

			bool Is(const RE::TESForm* a_form) const
			{
				return std::ranges::any_of(keywords, [&](const RE::BGSKeyword* kw) { return FormHasKeyword(a_form, kw); });
			}
		};

		// DOM_ZAZ.FindCuffs / GetEquippedCuffs: [found or None]; empty = not handled
		std::vector<RE::TESForm*> ZazFindCuffs(RE::StaticFunctionTag*, RE::TESQuest* a_zaz, RE::Actor* a_actor)
		{
			Restraints restraints;
			if (!a_actor || !restraints.Load(a_zaz)) {
				return {};
			}
			FirstUse("FindCuffs");
			if (auto* worn = WornForm(a_actor, 0x20000000); worn && restraints.Is(worn)) {
				return { worn };
			}
			const auto forms = InventoryForms(a_actor);
			for (auto it = forms.rbegin(); it != forms.rend(); ++it) {
				if (*it && restraints.Is(*it)) {
					return { *it };
				}
			}
			return { nullptr };
		}

		// DOM_ZAZ.IsItemRestraint: 1 / 0, -1 = not handled
		std::int32_t ZazIsRestraint(RE::StaticFunctionTag*, RE::TESQuest* a_zaz, RE::TESForm* a_form)
		{
			Restraints restraints;
			if (!restraints.Load(a_zaz)) {
				return -1;
			}
			return restraints.Is(a_form) ? 1 : 0;
		}

		// ------------------------------------------------------------------------------------------------ outfit transfer

		// DOM_Equip.SaveCurrentEquipment after its wait and Revert: what it adds to DOMSavedEquipment, in its order — every
		// inventory form, then each outfit part (an armor only when nothing is worn in its slots; Defeat devices skipped).
		// The rebuilt script adds them one by one with Papyrus AddForm, as DoM does (the engine function called from
		// here put forms outside the script-added ones and crashed Revert). Empty = not handled (or nothing to add).
		std::vector<RE::TESForm*> EquipSaveForms(RE::StaticFunctionTag*, RE::TESQuest* a_equip, RE::Actor* a_actor)
		{
			const auto equip = Bound(a_equip, "DOM_Equip");
			const auto zaz = equip ? equip.Child("DOMZaz") : Script();
			if (!a_actor || !zaz) {
				return {};
			}
			std::vector<RE::TESForm*> parts = InventoryForms(a_actor);
			auto*                     base = a_actor->GetActorBase();
			if (auto* outfit = base ? base->defaultOutfit : nullptr) {
				auto* defeat = zaz.Form<RE::BGSKeyword>("DefeatWornDevice");  // HasDefeat() = DefeatWornDevice != None
				for (auto* part : outfit->outfitItems) {
					if (!part || (defeat && FormHasKeyword(part, defeat))) {
						continue;
					}
					if (!part->Is(RE::FormType::Armor) || !WornForm(a_actor, SlotMask(part) & 0x00002FFF)) {
						parts.push_back(part);
					}
				}
			}
			if (parts.size() > 128) {
				return {};  // longer than a Papyrus array
			}
			FirstUse("SaveCurrentEquipment");
			return parts;
		}

		// DOM_Equip.RestoreCurrentEquipment: [the list, then every saved form the actor no longer has]; empty = not handled
		std::vector<RE::TESForm*> EquipMissing(RE::StaticFunctionTag*, RE::TESQuest* a_equip, RE::Actor* a_actor)
		{
			const auto equip = Bound(a_equip, "DOM_Equip");
			auto*      list = equip ? equip.Form<RE::BGSListForm>("DOMSavedEquipment") : nullptr;
			if (!a_actor || !list) {
				return {};
			}
			std::vector<RE::TESForm*> out{ list };
			list->ForEachForm([&](RE::TESForm* a_form) {
				if (ItemCount(a_actor, a_form) <= 0) {
					out.push_back(a_form);
				}
				return RE::BSContainer::ForEachResult::kContinue;
			});
			FirstUse("RestoreCurrentEquipment");
			return out;
		}

		// ------------------------------------------------------------------------------------------------ origin

		// DOM_Generator.Get{Place,Job,Employer,Trainer,Class}OfOriginIndex (0..4); -1 = not handled
		std::int32_t GenOriginIndex(RE::StaticFunctionTag*, RE::TESQuest* a_gen, RE::Actor* a_actor, std::int32_t a_kind)
		{
			Ctx c;
			if (!c.Load(a_gen, a_actor)) {
				return -1;
			}
			FirstUse("Get*OfOriginIndex");
			switch (a_kind) {
			case 0:
				return PlaceOfOrigin(c);
			case 1:
				return JobOfOrigin(c);
			case 2:
				return EmployerOfOrigin(c);
			case 3:
				return TrainerOfOrigin(c);
			case 4:
				return ClassOfOrigin(c);
			default:
				return -1;
			}
		}

		// ------------------------------------------------------------------------------------------------ DOM_Core

		int Reaction(RE::TESFaction* a_faction, const RE::TESForm* a_other)  // Faction.GetReaction(other)
		{
			if (!a_faction || !a_other) {
				return 0;
			}
			for (const auto* reaction : a_faction->reactions) {
				if (reaction && reaction->form == a_other) {
					return static_cast<int>(reaction->fightReaction);
				}
			}
			return 0;  // not listed: neutral
		}

		// DOM_Core.RemoveFromEnemyFactions (patched into the Patches DOM_Core.pex): drops the actor from WEPlayerEnemy and
		// from every faction hostile to the player or to Whiterun's crime faction (DOM_Core.IsEnemyFaction). false = not
		// handled, the Papyrus body runs.
		bool CleanEnemyFactions(RE::StaticFunctionTag*, RE::TESQuest* a_core, RE::Actor* a_actor)
		{
			const auto core = Bound(a_core, "DOM_Core");
			const auto gen = core ? core.Child("DOMGenerator") : Script();
			auto*      player = core ? core.Form<RE::TESFaction>("PlayerFaction") : nullptr;
			if (!a_actor || !gen || !player) {
				return false;
			}
			auto* whiterun = gen.Form<RE::TESFaction>("CrimeFactionWhiterun");
			std::vector<RE::TESFaction*> factions;  // Actor.GetFactions(-128, 127): every faction the actor lists
			a_actor->VisitFactions([&](RE::TESFaction* a_faction, std::int8_t) {
				if (a_faction) {
					factions.push_back(a_faction);
				}
				return false;
			});
			if (auto* enemy = core.Form<RE::TESFaction>("WEPlayerEnemy"); enemy && In(a_actor, enemy)) {
				Remove(a_actor, enemy);
			}
			for (auto* faction : factions) {
				if (Reaction(faction, player) == 1 || (whiterun && Reaction(faction, whiterun) == 1)) {
					Remove(a_actor, faction);
				}
			}
			FirstUse("RemoveFromEnemyFactions");
			return true;
		}

		// mode 2: the native result next to the Papyrus original's, and the generator seed after each
		void VerifyFloats(RE::StaticFunctionTag*, RE::BSFixedString a_what, RE::Actor* a_actor, std::vector<float> a_native, std::vector<float> a_papyrus,
			std::int32_t a_seedNative, std::int32_t a_seedPapyrus)
		{
			bool same = a_native.size() == a_papyrus.size() && a_seedNative == a_seedPapyrus;
			for (std::size_t i = 0; same && i < a_native.size(); ++i) {
				same = a_native[i] == a_papyrus[i];
			}
			const auto list = [](const std::vector<float>& v) {
				std::string s;
				for (const auto x : v) {
					s += std::format("{}{:.4f}", s.empty() ? "" : " ", x);
				}
				return s;
			};
			if (same) {
				logger::info("verify {} {}: same ({})", a_what.c_str(), Who(a_actor), list(a_native));
			} else {
				logger::warn("verify {} {}: DIFFERENT\n  native  {} seed {}\n  papyrus {} seed {}", a_what.c_str(), Who(a_actor), list(a_native), a_seedNative,
					list(a_papyrus), a_seedPapyrus);
			}
		}

		void VerifyInts(RE::StaticFunctionTag*, RE::BSFixedString a_what, RE::Actor* a_actor, std::vector<std::int32_t> a_native,
			std::vector<std::int32_t> a_papyrus, std::int32_t a_seedNative, std::int32_t a_seedPapyrus)
		{
			std::vector<float> n(a_native.begin(), a_native.end());
			std::vector<float> p(a_papyrus.begin(), a_papyrus.end());
			VerifyFloats(nullptr, a_what, a_actor, n, p, a_seedNative, a_seedPapyrus);
		}
	}

	void Configure(const Settings& a_settings)
	{
		g_settings = a_settings;
		logger::info("generator: mode {} ({})", g_settings.mode, g_settings.mode == 0 ? "Papyrus" : g_settings.mode == 1 ? "native" : "native, compared with Papyrus");
	}

	bool RegisterPapyrus(RE::BSScript::IVirtualMachine* a_vm)
	{
		constexpr auto cls = "DiaryOfMineFramework";
		a_vm->RegisterFunction("GeneratorMode", cls, GeneratorMode, true);
		a_vm->RegisterFunction("ActorJsonNames", cls, ActorJsonNames);
		a_vm->RegisterFunction("GenTraitsGenerated", cls, GenTraitsGenerated);
		a_vm->RegisterFunction("GenTraitsFromFactions", cls, GenTraitsFromFactions);
		a_vm->RegisterFunction("GenTraitsFromFactionsOr", cls, GenTraitsFromFactionsOr);
		a_vm->RegisterFunction("GenSetTraitFactions", cls, GenSetTraitFactions);
		a_vm->RegisterFunction("GenVirginGenerated", cls, GenVirginGenerated);
		a_vm->RegisterFunction("GenVirginReadOrGenerated", cls, GenVirginReadOrGenerated);
		a_vm->RegisterFunction("GenVirginFromFactions", cls, GenVirginFromFactions);
		a_vm->RegisterFunction("GenSetVirginFactions", cls, GenSetVirginFactions);
		a_vm->RegisterFunction("GenTrainingFromJson", cls, GenTrainingFromJson);
		a_vm->RegisterFunction("GenTrainingFromFactions", cls, GenTrainingFromFactions);
		a_vm->RegisterFunction("VerifyFloats", cls, VerifyFloats);
		a_vm->RegisterFunction("VerifyInts", cls, VerifyInts);
		a_vm->RegisterFunction("ZazFindCuffs", cls, ZazFindCuffs);
		a_vm->RegisterFunction("ZazIsRestraint", cls, ZazIsRestraint);
		a_vm->RegisterFunction("EquipSaveForms", cls, EquipSaveForms);
		a_vm->RegisterFunction("EquipMissing", cls, EquipMissing);
		a_vm->RegisterFunction("GenOriginIndex", cls, GenOriginIndex);
		a_vm->RegisterFunction("CleanEnemyFactions", cls, CleanEnemyFactions);
		return true;
	}
}
