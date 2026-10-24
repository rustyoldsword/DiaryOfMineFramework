#include "Panel.h"

#include "Actions.h"
#include "BaboBridge.h"
#include "Forms.h"
#include "SceneGuard.h"
#include "Slave.h"

#pragma warning(push)
#pragma warning(disable : 4099 5054)
#include <SKSEMenuFramework.h>
#pragma warning(pop)

namespace DOMFW::Panel
{
	namespace
	{
		namespace im = ImGuiMCP;
		namespace dl = ImGuiMCP::ImDrawListManager;
		using ImGuiMCP::ImU32;
		using ImGuiMCP::ImVec2;
		using A = Actions::Action;
		using K = Actions::Kind;

		ImVec2 operator+(ImVec2 a, ImVec2 b) { return { a.x + b.x, a.y + b.y }; }
		ImVec2 operator-(ImVec2 a, ImVec2 b) { return { a.x - b.x, a.y - b.y }; }

		// dungeon materials (design/slave-panel.html), alpha tuned for drawing over the game
		namespace C
		{
			constexpr ImU32 Soot = IM_COL32(20, 17, 16, 246);
			constexpr ImU32 SootTop = IM_COL32(31, 27, 23, 246);
			constexpr ImU32 Stone = IM_COL32(31, 27, 23, 255);
			constexpr ImU32 Stone2 = IM_COL32(41, 36, 31, 255);
			constexpr ImU32 Leather = IM_COL32(58, 44, 34, 255);
			constexpr ImU32 LeatherHover = IM_COL32(74, 56, 41, 255);
			constexpr ImU32 LeatherPress = IM_COL32(87, 65, 49, 255);
			constexpr ImU32 Track = IM_COL32(10, 9, 8, 255);
			constexpr ImU32 IronDark = IM_COL32(46, 44, 41, 255);
			constexpr ImU32 Iron = IM_COL32(94, 90, 84, 255);
			constexpr ImU32 IronLight = IM_COL32(141, 135, 125, 255);
			constexpr ImU32 Bone = IM_COL32(232, 221, 199, 255);
			constexpr ImU32 BoneDim = IM_COL32(185, 173, 149, 255);
			constexpr ImU32 BoneFaint = IM_COL32(151, 140, 120, 255);
			constexpr ImU32 Unlit = IM_COL32(94, 87, 75, 255);
			constexpr ImU32 Torch = IM_COL32(217, 154, 69, 255);
			constexpr ImU32 TorchBright = IM_COL32(242, 193, 120, 255);
			constexpr ImU32 TorchGlow = IM_COL32(217, 154, 69, 56);
			constexpr ImU32 TorchDim = IM_COL32(196, 146, 86, 255);  // section titles: torchlit, a step below the active state
			constexpr ImU32 Ember = IM_COL32(181, 101, 43, 255);
			constexpr ImU32 InkOnTorch = IM_COL32(28, 19, 10, 255);
			constexpr ImU32 Blood = IM_COL32(169, 64, 47, 255);
			constexpr ImU32 BloodText = IM_COL32(229, 131, 112, 255);
			constexpr ImU32 BloodHover = IM_COL32(74, 38, 32, 255);
			constexpr ImU32 Verdigris = IM_COL32(127, 179, 168, 255);
			constexpr ImU32 VerdigrisDark = IM_COL32(79, 122, 115, 255);
			constexpr ImU32 SealHi = IM_COL32(196, 90, 70, 255);
			constexpr ImU32 SealLo = IM_COL32(125, 42, 31, 255);
			constexpr ImU32 Shade = IM_COL32(0, 0, 0, 150);
		}

		struct State
		{
			bool                     open{ false };
			bool                     closedByUser{ false };
			bool                     collapsed{ false };      // folded to one line (F4, Esc, close): the game's dialogue is used; kept across dialogues
			bool                     slaveDialogue{ false };  // a dialogue with one of the player's slaves is open
			RE::FormID               target{ 0 };
			Slave::View              view;
			std::size_t              tab{ 0 };
			float                    scroll{ 0.0f };  // of the open section, in pixels; back to 0 on a tab change
			std::optional<A>         confirm;
			std::string              toast;
			std::chrono::steady_clock::time_point toastUntil{};
		};

		std::mutex                                 g_lock;
		State                                      g_state;
		Settings                                   g_settings;
		SKSEMenuFramework::Model::WindowInterface* g_window{ nullptr };

		// ---- the game's own dialogue window and cursor, hidden behind the panel ----------------------------------
		// The dialogue menu turns its own movie visible again while it updates its topics (hiding the movie flickered),
		// so its drawing is skipped instead: DialogueMenu::PostDisplay does nothing while the panel is open. The menu
		// itself stays open and working, DoM and the engine see the usual dialogue. The cursor menu has no such
		// updates and is hidden through its movie. The panel's SKSE Menu Framework window takes the input meanwhile.
		std::atomic_bool g_hideDialogue{ false };
		bool             g_vanillaHidden{ false };

		struct DialogueDisplay
		{
			static void PostDisplay(RE::IMenu* a_menu)
			{
				if (!g_hideDialogue.load()) {
					_original(a_menu);
				}
			}
			static inline REL::Relocation<decltype(&PostDisplay)> _original;

			static void Install()
			{
				REL::Relocation<std::uintptr_t> vtable{ RE::VTABLE_DialogueMenu[0] };
				_original = vtable.write_vfunc(0x6, PostDisplay);
				logger::info("panel: dialogue drawing hook installed");
			}
		};

		void SetMovieVisible(const RE::BSFixedString& a_menu, bool a_visible)
		{
			auto* ui = RE::UI::GetSingleton();
			if (auto menu = ui ? ui->GetMenu(a_menu) : nullptr; menu && menu->uiMovie) {
				menu->uiMovie->SetVisible(a_visible);
			}
		}

		void HideVanilla(bool a_hide)
		{
			g_hideDialogue = a_hide;
			if (a_hide) {
				SetMovieVisible(RE::CursorMenu::MENU_NAME, false);
				if (!g_vanillaHidden) {
					logger::info("panel: dialogue window and cursor hidden");
				}
				g_vanillaHidden = true;
			} else if (g_vanillaHidden) {
				SetMovieVisible(RE::CursorMenu::MENU_NAME, true);  // the cursor menu outlives the dialogue: inventory needs it back
				g_vanillaHidden = false;
				logger::info("panel: dialogue window and cursor shown again");
			}
		}

		// the 100 ms tick would let the dialogue window show for a moment; react to its opening at once
		class MenuWatch : public RE::BSTEventSink<RE::MenuOpenCloseEvent>
		{
		public:
			RE::BSEventNotifyControl ProcessEvent(const RE::MenuOpenCloseEvent* a_event, RE::BSTEventSource<RE::MenuOpenCloseEvent>*) override
			{
				if (a_event && a_event->menuName == RE::DialogueMenu::MENU_NAME) {
					SKSE::GetTaskInterface()->AddTask([] { Refresh(); });
				}
				return RE::BSEventNotifyControl::kContinue;
			}
		};

		// ---- fonts, icons ---------------------------------------------------------------------------------------
		struct Fonts
		{
			im::ImFont* body{ nullptr };
			im::ImFont* display{ nullptr };
			im::ImFont* icons{ nullptr };
		};

		Fonts GetFonts()
		{
			Fonts f;
			f.body = im::GetFont();
			SKSEMenuFramework::PushFont("Cinzel-SemiBold");
			f.display = im::GetFont();
			im::PopFont();
			SKSEMenuFramework::PushFont("fa-solid-900");  // as RaceMenu Atelier: FontAwesome::PushSolid() left the font unchanged here
			f.icons = im::GetFont();
			im::PopFont();
			if (f.icons == f.body) {
				f.icons = nullptr;
			}
			return f;
		}

		im::ImTextureID Texture(std::string_view a_id)
		{
			static std::unordered_map<std::string, im::ImTextureID> cache;
			std::string key(a_id);
			auto it = cache.find(key);
			if (it == cache.end()) {
				const auto path = std::format("Data/Interface/DiaryOfMineFramework/icons/{}.png", key);
				im::ImTextureID texture = nullptr;
				if (std::filesystem::exists(std::filesystem::current_path() / path)) {
					texture = SKSEMenuFramework::LoadTexture(path);
				}
				it = cache.emplace(key, texture).first;
			}
			return it->second;
		}

		// FontAwesome stand-ins until the generated icons are in place (see design/icon-manifest.md)
		std::uint32_t Glyph(std::string_view a_id)
		{
			static const std::unordered_map<std::string_view, std::uint32_t> map{
				{ "tab_orders", 0xf024 }, { "tab_nature", 0xf06e }, { "tab_clothes", 0xf553 }, { "tab_restrain", 0xf0c1 }, { "tab_treat", 0xf0e3 },
				{ "tab_labour", 0xf6e3 }, { "tab_train", 0xf02d }, { "tab_intimacy", 0xf004 }, { "tab_group", 0xf0c0 },
				{ "cmd_follow", 0xf554 }, { "cmd_wait", 0xf254 }, { "cmd_stand", 0xf183 }, { "cmd_dress", 0xf553 }, { "cmd_strip", 0xf506 },
				{ "cmd_tie", 0xf0c1 }, { "cmd_untie", 0xf127 }, { "cmd_bag", 0xf290 },
				{ "come_here", 0xf061 }, { "look_at_me", 0xf06e }, { "turn_around", 0xf2f1 }, { "follow_actor", 0xf500 }, { "order_to", 0xf0ae },
				{ "pose", 0xf6c0 }, { "sexy_pose", 0xf005 }, { "walk_on_four", 0xf1b0 }, { "inventory", 0xf49e },
				{ "respectful", 0xf521 }, { "silent", 0xf6a9 }, { "fight_for_me", 0xf6de }, { "read_personality", 0xf2bb }, { "read_feelings", 0xf075 },
				{ "read_mood", 0xf11a }, { "read_status", 0xf15c },
				{ "naked", 0xf070 }, { "wear_armor", 0xf3ed }, { "hold_weapons", 0xf0ad }, { "rip_off", 0xf0c4 }, { "rip_off_all", 0xf0c4 },
				{ "order_strip", 0xf553 }, { "strip_all", 0xf553 }, { "re_equip", 0xf553 },
				{ "tie_up", 0xf0c1 }, { "chains", 0xf0c1 }, { "post", 0xf05b }, { "cage", 0xf6d9 }, { "cross", 0xf654 }, { "pillory", 0xf6d9 },
				{ "wheel", 0xf013 }, { "gag", 0xf131 }, { "blindfold", 0xf070 }, { "cuffs", 0xf0c1 }, { "bag", 0xf290 }, { "untie", 0xf127 },
				{ "punish", 0xf0e3 }, { "threaten", 0xf071 }, { "insult", 0xf556 }, { "praise", 0xf164 }, { "comfort", 0xf4be }, { "flatter", 0xf075 },
				{ "promise", 0xf2b5 }, { "bathing", 0xf2cd }, { "drink", 0xf000 }, { "mark", 0xf5bf }, { "brand", 0xf06d },
				{ "work_sweep", 0xf51a }, { "work_mine", 0xf6e3 }, { "work_wood", 0xf1bb }, { "work_cook", 0xf2e7 }, { "work_forage", 0xf06c },
				{ "work_harvest", 0xf4d8 }, { "work_create", 0xf7d9 }, { "jail", 0xf6d9 },
				{ "attention", 0xf683 }, { "kiss", 0xf598 }, { "inspect", 0xf002 }, { "masturbate", 0xf004 }, { "climax", 0xf005 },
				{ "sex", 0xf004 }, { "rape", 0xf6de },
				{ "badge_tied", 0xf0c1 }, { "badge_gag", 0xf131 }, { "badge_blindfold", 0xf070 }, { "badge_collar", 0xf192 },
				{ "badge_cuffs", 0xf0c1 }, { "badge_marked", 0xf5bf }, { "badge_branded", 0xf06d }, { "badge_naked", 0xf506 },
				{ "ui_prev", 0xf053 }, { "ui_next", 0xf054 }, { "ui_close", 0xf00d }
			};
			if (a_id.starts_with("dist_")) {
				return 0xf0b2;
			}
			if (a_id.starts_with("all_")) {
				return 0xf0c0;
			}
			const auto it = map.find(a_id);
			return it != map.end() ? it->second : 0xf128;
		}

		ImVec2 TextSize(im::ImFont* a_font, float a_size, const char* a_text)
		{
			return im::ImFontManger::CalcTextSizeA(a_font, a_size, FLT_MAX, 0.0f, a_text, nullptr, nullptr);
		}

		void Text(im::ImDrawList* a_list, im::ImFont* a_font, float a_size, ImVec2 a_pos, ImU32 a_col, const char* a_text)
		{
			dl::AddText(a_list, a_font, a_size, { std::floor(a_pos.x), std::floor(a_pos.y) }, a_col, a_text);
		}

		// one picture serves several places (design/icon-manifest.md)
		std::string_view Art(std::string_view a_id)
		{
			static const std::unordered_map<std::string_view, std::string_view> alias{
				{ "bag", "cmd_bag" }, { "untie", "cmd_untie" }, { "tie_up", "cmd_tie" },
				{ "all_orders", "tab_orders" }, { "all_status", "tab_nature" }, { "all_treat", "tab_treat" }, { "all_train", "tab_train" },
				{ "all_clothes", "tab_clothes" }, { "all_upkeep", "bathing" }, { "all_attention", "attention" }
			};
			const auto it = alias.find(a_id);
			return it != alias.end() ? it->second : a_id;
		}

		void Icon(im::ImDrawList* a_list, const Fonts& a_fonts, std::string_view a_id, ImVec2 a_center, float a_size, ImU32 a_col)
		{
			if (auto texture = Texture(Art(a_id))) {
				const float h = a_size * 0.5f;
				dl::AddImage(a_list, texture, { a_center.x - h, a_center.y - h }, { a_center.x + h, a_center.y + h }, { 0, 0 }, { 1, 1 }, a_col);
				return;
			}
			if (!a_fonts.icons) {
				return;
			}
			const auto glyph = FontAwesome::UnicodeToUtf8(Glyph(a_id));
			const float size = a_size * 0.8f;
			const auto  extent = TextSize(a_fonts.icons, size, glyph.c_str());
			Text(a_list, a_fonts.icons, size, { a_center.x - extent.x * 0.5f, a_center.y - extent.y * 0.5f }, a_col, glyph.c_str());
		}

		// ---- materials ------------------------------------------------------------------------------------------
		void Plate(im::ImDrawList* a_list, ImVec2 a_min, ImVec2 a_max, float a_u)
		{
			dl::AddRectFilled(a_list, a_min + ImVec2{ 0, a_u * 0.35f }, a_max + ImVec2{ a_u * 0.15f, a_u * 0.6f }, C::Shade, 4.0f, 0);
			dl::AddRectFilledMultiColor(a_list, a_min, a_max, C::SootTop, C::SootTop, C::Soot, C::Soot);
			const float b = std::max(2.0f, a_u * 0.1f);
			dl::AddRect(a_list, a_min, a_max, IM_COL32(0, 0, 0, 255), 3.0f, 0, 1.0f);
			dl::AddRect(a_list, a_min + ImVec2{ 1, 1 }, a_max - ImVec2{ 1, 1 }, C::Iron, 3.0f, 0, b);
			dl::AddLine(a_list, a_min + ImVec2{ 3, 1 + b * 0.5f }, { a_max.x - 3, a_min.y + 1 + b * 0.5f }, C::IronLight, b * 0.5f);
			dl::AddLine(a_list, { a_min.x + 3, a_max.y - 1 - b * 0.5f }, a_max - ImVec2{ 3, 1 + b * 0.5f }, C::IronDark, b * 0.5f);
			const float r = std::max(2.5f, a_u * 0.16f);
			const float in = b + r + 2.0f;
			for (const ImVec2 c : { a_min + ImVec2{ in, in }, ImVec2{ a_max.x - in, a_min.y + in }, ImVec2{ a_min.x + in, a_max.y - in }, a_max - ImVec2{ in, in } }) {
				dl::AddCircleFilled(a_list, c, r + 1.0f, C::IronDark, 12);
				dl::AddCircleFilled(a_list, c - ImVec2{ r * 0.25f, r * 0.25f }, r * 0.65f, C::IronLight, 12);
			}
		}

		void Divider(im::ImDrawList* a_list, float a_x0, float a_x1, float a_y, float a_u)
		{
			const float mid = (a_x0 + a_x1) * 0.5f;
			dl::AddRectFilledMultiColor(a_list, { a_x0, a_y }, { mid, a_y + 1 }, IM_COL32(94, 90, 84, 0), C::Iron, C::Iron, IM_COL32(94, 90, 84, 0));
			dl::AddRectFilledMultiColor(a_list, { mid, a_y }, { a_x1, a_y + 1 }, C::Iron, IM_COL32(94, 90, 84, 0), IM_COL32(94, 90, 84, 0), C::Iron);
			const float d = a_u * 0.22f;
			dl::AddQuadFilled(a_list, { mid, a_y - d }, { mid + d, a_y }, { mid, a_y + d }, { mid - d, a_y }, C::IronLight);
			dl::AddQuadFilled(a_list, { mid, a_y - d * 0.5f }, { mid + d * 0.5f, a_y }, { mid, a_y + d * 0.5f }, { mid - d * 0.5f, a_y }, C::Soot);
		}

		void Bar(im::ImDrawList* a_list, ImVec2 a_min, ImVec2 a_max, int a_value, ImU32 a_from, ImU32 a_to)
		{
			dl::AddRectFilled(a_list, a_min, a_max, C::Track, 1.0f, 0);
			dl::AddRect(a_list, a_min, a_max, C::IronDark, 1.0f, 0, 1.0f);
			const float w = (a_max.x - a_min.x - 2.0f) * std::clamp(a_value, 0, 100) / 100.0f;
			if (w > 0.5f) {
				dl::AddRectFilledMultiColor(a_list, a_min + ImVec2{ 1, 1 }, { a_min.x + 1 + w, a_max.y - 1 }, a_from, a_to, a_to, a_from);
			}
		}

		// ---- interaction ----------------------------------------------------------------------------------------
		struct Frame
		{
			im::ImDrawList* list;
			Fonts           fonts;
			float           u;
			const Slave::View& view;
			std::size_t&       tab;
			std::vector<std::function<void()>> clicks;  // applied after drawing, under the lock
			const char*        tooltip{ nullptr };
		};

		bool Hit(Frame& a_f, const char* a_id, ImVec2 a_min, ImVec2 a_size, const char* a_tip, bool& a_hovered)
		{
			im::SetCursorScreenPos(a_min);
			const bool clicked = im::InvisibleButton(a_id, a_size);
			a_hovered = im::IsItemHovered();
			if (a_hovered && a_tip) {
				a_f.tooltip = a_tip;
			}
			return clicked;
		}

		void Toast(std::string a_text)
		{
			g_state.toast = std::move(a_text);
			g_state.toastUntil = std::chrono::steady_clock::now() + std::chrono::milliseconds(1800);
		}

		// close button / Esc: the panel and the dialogue end together (only the toggle key goes to the game's dialogue);
		// g_lock held by the caller
		void CloseAll(const char* a_why)
		{
			g_state.confirm.reset();
			g_state.open = false;
			logger::info("panel: closed with the dialogue ({})", a_why);
			SKSE::GetTaskInterface()->AddTask([] {
				if (auto* queue = RE::UIMessageQueue::GetSingleton()) {
					queue->AddMessage(RE::DialogueMenu::MENU_NAME, RE::UI_MESSAGE_TYPE::kHide, nullptr);
				}
			});
		}

		void Run(const A& a_action)
		{
			if (a_action.blocked) {
				if (const char* why = a_action.blocked(g_state.view)) {
					Toast(why);
					return;
				}
			}
			if (a_action.confirm) {
				g_state.confirm = a_action;
				return;
			}
			Actions::Request(a_action, g_state.target);
			if (a_action.kind == K::Button || a_action.kind == K::More) {
				g_state.closedByUser = true;
				g_state.open = false;
			} else {
				Toast(std::format("{}: {}", g_state.view.name, a_action.label));
			}
		}

		// a leather button with an icon and a label; state lights it with torchlight
		void Button(Frame& a_f, const A& a_action, ImVec2 a_min, ImVec2 a_size, bool a_iconTop)
		{
			const bool lit = a_action.on && a_action.on(a_f.view);
			const bool blocked = a_action.blocked && a_action.blocked(a_f.view) && !lit;
			bool       hovered = false;
			const std::string id = std::format("##{}", a_action.id);
			std::string tip = a_action.tip ? a_action.tip : "";
			if (blocked) {
				tip = a_action.blocked(a_f.view);
			} else if (a_action.kind == K::More) {
				tip += tip.empty() ? "" : "\n";
				tip += "The last choice opens Diary of Mine's wheel";
			}
			static thread_local std::string tipStore;
			const bool clicked = Hit(a_f, id.c_str(), a_min, a_size, nullptr, hovered);
			if (hovered && !tip.empty()) {
				tipStore = tip;
				a_f.tooltip = tipStore.c_str();
			}
			const ImVec2 max = a_min + a_size;
			ImU32        fill = blocked ? C::Stone : (hovered ? (a_action.danger ? C::BloodHover : C::LeatherHover) : C::Leather);
			dl::AddRectFilled(a_f.list, a_min, max, fill, 3.0f, 0);
			dl::AddRect(a_f.list, a_min, max, lit ? C::Torch : (a_action.danger ? C::Blood : C::IronDark), 3.0f, 0, lit ? 1.5f : 1.0f);
			if (lit) {
				dl::AddRectFilled(a_f.list, a_min + ImVec2{ 1, 1 }, max - ImVec2{ 1, 1 }, C::TorchGlow, 3.0f, 0);
			}
			const ImU32 ink = blocked ? C::BoneFaint : (lit ? C::TorchBright : (a_action.danger ? C::BloodText : (hovered ? C::Bone : C::BoneDim)));
			const float u = a_f.u;
			if (a_iconTop) {
				Icon(a_f.list, a_f.fonts, a_action.id, { a_min.x + a_size.x * 0.5f, a_min.y + u * 1.05f }, u * 1.35f, ink);
				const float size = u * 0.92f;
				const auto  ext = TextSize(a_f.fonts.body, size, a_action.label);
				Text(a_f.list, a_f.fonts.body, size, { a_min.x + (a_size.x - ext.x) * 0.5f, max.y - ext.y - u * 0.3f }, ink, a_action.label);
			} else {
				Icon(a_f.list, a_f.fonts, a_action.id, { a_min.x + u * 0.95f, a_min.y + a_size.y * 0.5f }, u * 1.05f, ink);
				const float size = u * 1.0f;
				const auto  ext = TextSize(a_f.fonts.body, size, a_action.label);
				Text(a_f.list, a_f.fonts.body, size, { a_min.x + u * 1.85f, a_min.y + (a_size.y - ext.y) * 0.5f }, blocked ? C::BoneFaint : (a_action.danger ? C::BloodText : C::Bone), a_action.label);
				if (a_action.kind == K::More) {
					const auto e2 = TextSize(a_f.fonts.body, size, ">");
					Text(a_f.list, a_f.fonts.body, size, { max.x - e2.x - u * 0.45f, a_min.y + (a_size.y - e2.y) * 0.5f }, C::BoneFaint, ">");
				}
			}
			if (clicked) {
				a_f.clicks.push_back([action = a_action] { Run(action); });
			}
		}

		// a switch row: label on the left, an iron switch lit by torchlight on the right
		void Toggle(Frame& a_f, const A& a_action, ImVec2 a_min, ImVec2 a_size)
		{
			const bool on = a_action.on && a_action.on(a_f.view);
			bool       hovered = false;
			const std::string id = std::format("##{}", a_action.id);
			const bool clicked = Hit(a_f, id.c_str(), a_min, a_size, a_action.tip, hovered);
			const ImVec2 max = a_min + a_size;
			const float  u = a_f.u;
			dl::AddRectFilled(a_f.list, a_min, max, hovered ? C::Stone2 : C::Stone, 3.0f, 0);
			Icon(a_f.list, a_f.fonts, a_action.id, { a_min.x + u * 0.95f, a_min.y + a_size.y * 0.5f }, u * 1.05f, on ? C::TorchBright : C::BoneDim);
			const float size = u * 1.0f;
			const auto  ext = TextSize(a_f.fonts.body, size, a_action.label);
			Text(a_f.list, a_f.fonts.body, size, { a_min.x + u * 1.85f, a_min.y + (a_size.y - ext.y) * 0.5f }, C::Bone, a_action.label);
			const ImVec2 sMin{ max.x - u * 2.4f, a_min.y + (a_size.y - u * 1.0f) * 0.5f };
			const ImVec2 sMax{ max.x - u * 0.5f, sMin.y + u * 1.0f };
			dl::AddRectFilled(a_f.list, sMin, sMax, C::Track, 3.0f, 0);
			dl::AddRect(a_f.list, sMin, sMax, on ? C::Torch : C::Iron, 3.0f, 0, 1.0f);
			const float k = u * 0.7f;
			const float kx = on ? sMax.x - k - 3.0f : sMin.x + 3.0f;
			dl::AddRectFilled(a_f.list, { kx, sMin.y + (u - k) * 0.5f }, { kx + k, sMin.y + (u + k) * 0.5f }, on ? C::Torch : C::IronLight, 2.0f, 0);
			if (clicked) {
				a_f.clicks.push_back([action = a_action] { Run(action); });
			}
		}

		// ---- the three plates -----------------------------------------------------------------------------------
		struct Layout
		{
			float u, x, y, w, gap, pad;
		};

		float LedgerHeight(const Layout& a_l) { return a_l.pad * 2 + a_l.u * 9.4f; }
		float CommandsHeight(const Layout& a_l) { return a_l.pad * 2 + a_l.u * 3.1f; }

		std::string KeyName(std::uint32_t a_code);

		void DrawLedger(Frame& a_f, const Layout& a_l, float a_top)
		{
			const auto& v = a_f.view;
			const float u = a_l.u;
			const ImVec2 min{ a_l.x, a_top };
			const ImVec2 max{ a_l.x + a_l.w, a_top + LedgerHeight(a_l) };
			Plate(a_f.list, min, max, u);
			const float x0 = min.x + a_l.pad, x1 = max.x - a_l.pad;
			float       y = min.y + a_l.pad;

			// wax seal with the slave's initial
			const ImVec2 seal{ x0 + u * 0.95f, y + u * 0.95f };
			dl::AddCircleFilled(a_f.list, seal, u * 0.95f, C::SealLo, 32);
			dl::AddCircleFilled(a_f.list, seal - ImVec2{ u * 0.15f, u * 0.15f }, u * 0.72f, C::SealHi, 32);
			dl::AddCircle(a_f.list, seal, u * 0.78f, IM_COL32(0, 0, 0, 60), 32, 2.0f);
			const char initial[2]{ v.name.empty() ? '?' : v.name[0], 0 };
			const auto ie = TextSize(a_f.fonts.display, u * 0.95f, initial);
			Text(a_f.list, a_f.fonts.display, u * 0.95f, seal - ImVec2{ ie.x * 0.5f, ie.y * 0.5f }, IM_COL32(240, 201, 182, 255), initial);

			Text(a_f.list, a_f.fonts.display, u * 1.4f, { x0 + u * 2.3f, y - u * 0.05f }, C::Bone, v.name.c_str());
			const std::string sub = std::format("SLAVE{}", v.onDuty ? "  ·  ON DUTY" : "");
			Text(a_f.list, a_f.fonts.body, u * 0.85f, { x0 + u * 2.3f, y + u * 1.35f }, C::BoneDim, sub.c_str());
			// how to get the game's own dialogue back (the folded line says how to return)
			const std::string hint = std::format("Press {} to hide and return to the dialogue menu", KeyName(g_settings.toggleKey));
			const float       hw = TextSize(a_f.fonts.body, u * 0.75f, hint.c_str()).x;
			Text(a_f.list, a_f.fonts.body, u * 0.75f, { x1 - hw, y + u * 1.45f }, C::BoneFaint, hint.c_str());

			// close
			bool hovered = false;
			const ImVec2 cMin{ x1 - u * 1.4f, y };
			if (Hit(a_f, "##close", cMin, { u * 1.4f, u * 1.4f }, "Close the panel and end the dialogue", hovered)) {
				a_f.clicks.push_back([] { CloseAll("close button"); });
			}
			dl::AddRectFilled(a_f.list, cMin, cMin + ImVec2{ u * 1.4f, u * 1.4f }, hovered ? C::LeatherHover : C::Leather, 3.0f, 0);
			dl::AddRect(a_f.list, cMin, cMin + ImVec2{ u * 1.4f, u * 1.4f }, C::IronDark, 3.0f, 0, 1.0f);
			Icon(a_f.list, a_f.fonts, "ui_close", cMin + ImVec2{ u * 0.7f, u * 0.7f }, u * 0.9f, hovered ? C::Bone : C::BoneDim);

			y += u * 2.25f;
			Divider(a_f.list, x0, x1, y, u);
			y += u * 0.45f;

			// label / value pairs: the label faint, the value in bone
			auto pair = [&](float a_x, const char* a_label, const std::string& a_value) {
				Text(a_f.list, a_f.fonts.body, u * 0.9f, { a_x, y }, C::BoneFaint, a_label);
				const float lw = TextSize(a_f.fonts.body, u * 0.9f, a_label).x + u * 0.45f;
				Text(a_f.list, a_f.fonts.body, u * 0.98f, { a_x + lw, y - u * 0.05f }, C::Bone, a_value.c_str());
			};
			pair(x0, "Mood", v.mood.empty() ? std::string("unknown") : v.mood);
			if (!v.nature.empty()) {
				pair(x0 + (x1 - x0) * 0.42f, "Nature", v.nature);
			}
			y += u * 1.4f;

			const std::array<std::pair<const char*, int>, 4> meters{ { { "Submission", v.submission }, { "Fear", v.fear }, { "Respect", v.respect }, { "Resignation", v.resignation } } };
			const float colW = (x1 - x0 - u * 0.8f) * 0.5f;
			for (std::size_t i = 0; i < meters.size(); ++i) {
				const float mx = x0 + (i % 2) * (colW + u * 0.8f);
				const float my = y + (i / 2) * u * 1.75f;
				Text(a_f.list, a_f.fonts.body, u * 0.9f, { mx, my }, C::BoneDim, meters[i].first);
				const std::string num = std::to_string(meters[i].second);
				const auto ne = TextSize(a_f.fonts.body, u * 0.9f, num.c_str());
				Text(a_f.list, a_f.fonts.body, u * 0.9f, { mx + colW - ne.x, my }, C::Bone, num.c_str());
				Bar(a_f.list, { mx, my + u * 1.05f }, { mx + colW, my + u * 1.38f }, meters[i].second, C::Ember, C::Torch);
			}
			y += u * 3.6f;

			struct Badge
			{
				const char* id;
				bool        on;
				const char* onTip;
				const char* offTip;
			};
			const std::array<Badge, 8> badges{ {
				{ "badge_tied", v.tied, "Tied up", "Not tied" },
				{ "badge_gag", v.gag, "Gagged", "Not gagged" },
				{ "badge_blindfold", v.blindfold, "Blindfolded", "Not blindfolded" },
				{ "badge_collar", v.collar, "Collared", "No collar" },
				{ "badge_cuffs", v.cuffs, "Cuffed", "Not cuffed" },
				{ "badge_marked", v.marked, "Marked", "Not marked" },
				{ "badge_branded", v.branded, "Branded", "Not branded" },
				{ "badge_naked", v.naked, "Kept naked", "Clothes allowed" },
			} };
			// what is on the slave right now, in words; nothing on = one faint line
			float bx = x0;
			int   shown = 0;
			for (const auto& b : badges) {
				if (!b.on) {
					continue;
				}
				const float  tw = TextSize(a_f.fonts.body, u * 0.9f, b.onTip).x;
				const ImVec2 bSize{ tw + u * 2.3f, u * 1.45f };
				if (bx + bSize.x > x1) {
					break;
				}
				const ImVec2 bMin{ bx, y };
				dl::AddRectFilled(a_f.list, bMin, bMin + bSize, C::TorchGlow, 3.0f, 0);
				dl::AddRect(a_f.list, bMin, bMin + bSize, IM_COL32(217, 154, 69, 150), 3.0f, 0, 1.0f);
				Icon(a_f.list, a_f.fonts, b.id, bMin + ImVec2{ u * 0.85f, bSize.y * 0.5f }, u * 0.95f, C::TorchBright);
				const auto te = TextSize(a_f.fonts.body, u * 0.9f, b.onTip);
				Text(a_f.list, a_f.fonts.body, u * 0.9f, bMin + ImVec2{ u * 1.65f, (bSize.y - te.y) * 0.5f }, C::Bone, b.onTip);
				bx += bSize.x + u * 0.3f;
				++shown;
			}
			if (!shown) {
				Text(a_f.list, a_f.fonts.body, u * 0.9f, { x0, y + u * 0.25f }, C::BoneFaint, "Not restrained, not marked");
			}

			// toast: what the last click did
			if (!g_state.toast.empty() && std::chrono::steady_clock::now() < g_state.toastUntil) {
				const auto te = TextSize(a_f.fonts.body, u * 0.9f, g_state.toast.c_str());
				Text(a_f.list, a_f.fonts.body, u * 0.9f, { x1 - te.x, y + u * 0.35f }, C::TorchBright, g_state.toast.c_str());
			}
		}

		void DrawCommands(Frame& a_f, const Layout& a_l, float a_top)
		{
			const float u = a_l.u;
			const ImVec2 min{ a_l.x, a_top };
			const ImVec2 max{ a_l.x + a_l.w, a_top + CommandsHeight(a_l) };
			Plate(a_f.list, min, max, u);
			const auto& bar = Actions::Commands(a_f.view);
			const float gap = u * 0.3f;
			const float w = (a_l.w - a_l.pad * 2 - gap * (bar.size() - 1)) / bar.size();
			for (std::size_t i = 0; i < bar.size(); ++i) {
				Button(a_f, bar[i], { min.x + a_l.pad + i * (w + gap), min.y + a_l.pad }, { w, u * 3.1f }, true);
			}
		}

		void DrawNature(Frame& a_f, float a_x, float& a_y, float a_w)
		{
			const auto& v = a_f.view;
			const float u = a_f.u;
			auto rows = [&](const char* a_title, const std::array<int, 6>& a_values, const std::array<const char*, 6>& a_names, ImU32 a_from, ImU32 a_to) {
				Text(a_f.list, a_f.fonts.display, u * 0.85f, { a_x, a_y }, C::TorchDim, a_title);
				a_y += u * 1.3f;
				for (std::size_t i = 0; i < 6; ++i) {
					Text(a_f.list, a_f.fonts.body, u * 0.92f, { a_x, a_y }, C::BoneDim, a_names[i]);
					const std::string num = std::to_string(a_values[i]);
					const auto ne = TextSize(a_f.fonts.body, u * 0.92f, num.c_str());
					Text(a_f.list, a_f.fonts.body, u * 0.92f, { a_x + a_w - ne.x, a_y }, C::Bone, num.c_str());
					Bar(a_f.list, { a_x + u * 7.6f, a_y + u * 0.35f }, { a_x + a_w - u * 1.8f, a_y + u * 0.7f }, a_values[i], a_from, a_to);
					a_y += u * 1.2f;
				}
				a_y += u * 0.45f;
			};
			rows("PERSONALITY (HEXACO)", v.hexaco, { "Honesty", "Emotionality", "Extraversion", "Agreeableness", "Conscientiousness", "Openness" }, C::VerdigrisDark, C::Verdigris);
			rows("TRAINING", v.training, { "Humiliation", "Anger", "Pose", "House", "Combat", "Work" }, C::Ember, C::Torch);
		}

		// draws (or, with a_draw false, only measures) the open section of the book; returns its height
		float BookContent(Frame& a_f, const Actions::Tab& a_tab, float a_x, float a_y, float a_w, bool a_draw)
		{
			const float u = a_f.u;
			float       y = a_y;
			if (a_draw) {
				Text(a_f.list, a_f.fonts.display, u * 1.05f, { a_x, y }, C::Bone, a_tab.title);
			}
			y += u * 1.55f;
			if (std::string_view(a_tab.id) == "tab_nature") {
				if (a_draw) {
					DrawNature(a_f, a_x, y, a_w);
				} else {
					y += 2 * (u * 1.3f + 6 * u * 1.2f + u * 0.45f);
				}
			}
			for (const auto& section : a_tab.sections) {
				if (a_draw) {
					Text(a_f.list, a_f.fonts.display, u * 0.82f, { a_x, y }, C::TorchDim, section.title);
					const float tw = TextSize(a_f.fonts.display, u * 0.82f, section.title).x;
					dl::AddLine(a_f.list, { a_x + tw + u * 0.5f, y + u * 0.5f }, { a_x + a_w, y + u * 0.5f }, C::IronDark, 1.0f);
				}
				y += u * 1.3f;
				if (section.row) {
					// a strip of options: chips in a dark iron track
					float cx = a_x;
					const float h = u * 1.6f;
					for (const auto& opt : section.actions) {
						const float cw = TextSize(a_f.fonts.body, u * 0.95f, opt.label).x + u * 1.3f;
						if (cx + cw > a_x + a_w) {
							cx = a_x;
							y += h + u * 0.2f;
						}
						if (a_draw) {
							bool hov = false;
							const ImVec2 cMin{ cx, y };
							if (Hit(a_f, std::format("##{}", opt.id).c_str(), cMin, { cw, h }, nullptr, hov)) {
								a_f.clicks.push_back([action = opt] { Run(action); });
							}
							dl::AddRectFilled(a_f.list, cMin, cMin + ImVec2{ cw, h }, hov ? C::LeatherHover : C::Track, 3.0f, 0);
							dl::AddRect(a_f.list, cMin, cMin + ImVec2{ cw, h }, C::IronDark, 3.0f, 0, 1.0f);
							const auto te = TextSize(a_f.fonts.body, u * 0.95f, opt.label);
							Text(a_f.list, a_f.fonts.body, u * 0.95f, cMin + ImVec2{ (cw - te.x) * 0.5f, (h - te.y) * 0.5f }, hov ? C::Bone : C::BoneDim, opt.label);
						}
						cx += cw + u * 0.2f;
					}
					y += h + u * 0.55f;
					continue;
				}
				// switches take a full row each, buttons share a grid
				std::vector<const A*> buttons;
				for (const auto& action : section.actions) {
					if (action.kind == K::Toggle) {
						if (a_draw) {
							Toggle(a_f, action, { a_x, y }, { a_w, u * 1.85f });
						}
						y += u * 2.0f;
					} else {
						buttons.push_back(&action);
					}
				}
				if (!buttons.empty()) {
					const int   cols = std::max(1, static_cast<int>(a_w / (u * 8.5f)));
					const float gap = u * 0.25f;
					const float bw = (a_w - gap * (cols - 1)) / cols;
					const float bh = u * 1.85f;
					for (std::size_t i = 0; i < buttons.size(); ++i) {
						const float bx = a_x + (i % cols) * (bw + gap);
						const float by = y + (i / cols) * (bh + gap);
						if (a_draw) {
							Button(a_f, *buttons[i], { bx, by }, { bw, bh }, false);
						}
					}
					y += ((buttons.size() + cols - 1) / cols) * (bh + gap);
				}
				y += u * 0.5f;
			}
			return y - a_y;
		}

		float BookHeight(Frame& a_f, const Layout& a_l)
		{
			const auto& tabs = Actions::Tabs();
			const float u = a_l.u;
			const float railH = tabs.size() * u * 2.55f + u * 0.6f;
			const float contentW = a_l.w - u * 4.6f - a_l.pad * 1.6f;
			const float contentH = BookContent(a_f, tabs[std::min(a_f.tab, tabs.size() - 1)], 0, 0, contentW, false) + u * 0.8f;
			return std::max(railH, contentH) + a_l.pad + u * 1.3f;
		}

		void DrawBook(Frame& a_f, const Layout& a_l, float a_top, float a_height)
		{
			const auto& tabs = Actions::Tabs();
			const float u = a_l.u;
			const ImVec2 min{ a_l.x, a_top };
			const ImVec2 max{ a_l.x + a_l.w, a_top + a_height };
			Plate(a_f.list, min, max, u);
			const float railW = u * 4.6f;
			const float footH = u * 1.3f;
			const ImVec2 cMin{ min.x + a_l.pad * 0.5f + railW, min.y + a_l.pad * 0.5f };
			const ImVec2 cMax{ max.x - a_l.pad * 0.5f, max.y - footH };
			dl::AddRectFilled(a_f.list, cMin, cMax, C::Stone2, 2.0f, 0);
			dl::AddLine(a_f.list, { cMin.x, cMin.y }, { cMin.x, cMax.y }, C::IronDark, 1.0f);

			float ty = min.y + a_l.pad * 0.5f + u * 0.3f;
			for (std::size_t i = 0; i < tabs.size(); ++i) {
				const auto& t = tabs[i];
				const bool   selected = i == a_f.tab;
				const ImVec2 tMin{ min.x + a_l.pad * 0.5f + u * 0.2f, ty };
				const ImVec2 tSize{ railW - u * 0.2f, u * 2.4f };
				bool hov = false;
				if (Hit(a_f, std::format("##{}", t.id).c_str(), tMin, tSize, t.tip, hov)) {
					a_f.clicks.push_back([i] { g_state.tab = i; g_state.scroll = 0.0f; });
				}
				if (selected) {
					dl::AddRectFilled(a_f.list, tMin, tMin + tSize + ImVec2{ 1, 0 }, C::Stone2, 3.0f, 0);
					dl::AddLine(a_f.list, tMin, { tMin.x + tSize.x, tMin.y }, C::IronDark, 1.0f);
					dl::AddLine(a_f.list, { tMin.x, tMin.y + tSize.y }, tMin + tSize, C::IronDark, 1.0f);
				} else if (hov) {
					dl::AddRectFilled(a_f.list, tMin, tMin + tSize, IM_COL32(58, 44, 34, 130), 3.0f, 0);
				}
				const ImU32 ink = selected ? C::TorchBright : (hov ? C::Bone : C::BoneFaint);
				Icon(a_f.list, a_f.fonts, t.id, { tMin.x + tSize.x * 0.5f, tMin.y + u * 0.85f }, u * 1.0f, ink);
				const auto le = TextSize(a_f.fonts.body, u * 0.82f, t.label);
				Text(a_f.list, a_f.fonts.body, u * 0.82f, { tMin.x + (tSize.x - le.x) * 0.5f, tMin.y + u * 1.6f }, ink, t.label);
				ty += u * 2.55f;
			}

			// the section scrolls with the mouse wheel when it is taller than the space left on screen; drawing and
			// clicks are clipped to the page, a thin iron bar on the right shows where you are
			const auto&  tab = tabs[std::min(a_f.tab, tabs.size() - 1)];
			const float  contentW = cMax.x - cMin.x - u * 1.4f;
			const float  top = cMin.y + u * 0.55f;
			const float  full = BookContent(a_f, tab, 0, 0, contentW, false);
			const float  viewH = cMax.y - top - u * 0.3f;
			const float  maxScroll = std::max(0.0f, full - viewH);
			if (auto* io = im::GetIO(); io && maxScroll > 0.0f && io->MouseWheel != 0.0f && io->MousePos.x >= cMin.x && io->MousePos.x <= cMax.x &&
										io->MousePos.y >= cMin.y && io->MousePos.y <= cMax.y) {
				g_state.scroll -= io->MouseWheel * u * 2.5f;
			}
			g_state.scroll = std::clamp(g_state.scroll, 0.0f, maxScroll);
			im::PushClipRect(cMin, cMax, true);
			BookContent(a_f, tab, cMin.x + u * 0.7f, top - g_state.scroll, contentW, true);
			im::PopClipRect();
			if (maxScroll > 0.0f) {
				const float trackX = cMax.x - u * 0.3f;
				const float trackTop = cMin.y + u * 0.3f, trackBot = cMax.y - u * 0.3f;
				const float trackH = trackBot - trackTop;
				const float thumbH = std::max(u * 1.5f, trackH * viewH / full);
				const float thumbY = trackTop + (trackH - thumbH) * (g_state.scroll / maxScroll);
				dl::AddRectFilled(a_f.list, { trackX - u * 0.08f, trackTop }, { trackX + u * 0.08f, trackBot }, C::IronDark, 2.0f, 0);
				dl::AddRectFilled(a_f.list, { trackX - u * 0.13f, thumbY }, { trackX + u * 0.13f, thumbY + thumbH }, C::Torch, 2.0f, 0);
			}

			dl::AddLine(a_f.list, { min.x + a_l.pad * 0.5f, max.y - footH }, { max.x - a_l.pad * 0.5f, max.y - footH }, C::IronDark, 1.0f);
			Text(a_f.list, a_f.fonts.body, u * 0.8f, { min.x + a_l.pad, max.y - footH + u * 0.25f }, C::BoneFaint, std::format("Esc ends the dialogue  ·  {} switches to the game's dialogue", KeyName(g_settings.toggleKey)).c_str());
		}

		void DrawConfirm(Frame& a_f, const Layout& a_l, const A& a_action)
		{
			const float u = a_l.u;
			const ImVec2 size{ a_l.w * 0.9f, u * 6.6f };
			const ImVec2 min{ a_l.x + a_l.w * 0.05f, a_l.y + u * 10.0f };
			dl::AddRectFilled(a_f.list, { a_l.x - u, a_l.y - u }, { a_l.x + a_l.w + u, min.y + size.y + u * 30.0f }, IM_COL32(0, 0, 0, 120), 0.0f, 0);
			Plate(a_f.list, min, min + size, u);
			const std::string title = std::format("{} {}?", a_action.label, a_f.view.name);
			Text(a_f.list, a_f.fonts.display, u * 1.15f, min + ImVec2{ u * 1.0f, u * 0.9f }, C::TorchBright, title.c_str());
			Text(a_f.list, a_f.fonts.body, u * 0.8f, min + ImVec2{ u * 1.0f, u * 2.5f }, C::BoneDim, a_action.tip ? a_action.tip : "");
			const ImVec2 bSize{ u * 5.0f, u * 1.6f };
			const ImVec2 okMin{ min.x + size.x - u * 1.0f - bSize.x, min.y + size.y - u * 1.0f - bSize.y };
			const ImVec2 noMin{ okMin.x - u * 0.5f - bSize.x, okMin.y };
			bool hov = false;
			if (Hit(a_f, "##confirm_no", noMin, bSize, nullptr, hov)) {
				a_f.clicks.push_back([] { g_state.confirm.reset(); });
			}
			dl::AddRectFilled(a_f.list, noMin, noMin + bSize, hov ? C::LeatherHover : C::Leather, 3.0f, 0);
			auto te = TextSize(a_f.fonts.body, u * 0.86f, "Cancel");
			Text(a_f.list, a_f.fonts.body, u * 0.86f, noMin + ImVec2{ (bSize.x - te.x) * 0.5f, (bSize.y - te.y) * 0.5f }, C::Bone, "Cancel");
			if (Hit(a_f, "##confirm_ok", okMin, bSize, nullptr, hov)) {
				a_f.clicks.push_back([] {
					auto action = *g_state.confirm;
					g_state.confirm.reset();
					action.confirm = false;
					Run(action);
				});
			}
			dl::AddRectFilled(a_f.list, okMin, okMin + bSize, hov ? C::SealHi : C::Blood, 3.0f, 0);
			te = TextSize(a_f.fonts.body, u * 0.86f, a_action.label);
			Text(a_f.list, a_f.fonts.body, u * 0.86f, okMin + ImVec2{ (bSize.x - te.x) * 0.5f, (bSize.y - te.y) * 0.5f }, IM_COL32(246, 220, 212, 255), a_action.label);
		}

		// the world goes on behind the panel (as behind the game's own dialogue): undo SKSE Menu Framework's time freeze,
		// but not while its own control panel is open too
		void KeepTimeRunning()
		{
			if (g_settings.pauseGame) {
				return;
			}
			if (auto* smf = SKSEMenuFramework::GetMainWindow(); smf && smf->IsOpen.load()) {
				return;
			}
			if (auto* main = RE::Main::GetSingleton(); main && main->GetRuntimeData().freezeTime) {
				main->GetRuntimeData().freezeTime = false;
				static bool logged = false;
				if (!logged) {
					logged = true;
					logger::info("panel: SKSE Menu Framework time freeze lifted (PauseGame=0)");
				}
			}
		}

		void __stdcall Render()
		{
			std::scoped_lock lock(g_lock);
			if (!g_state.open || !g_state.view.valid) {
				return;
			}
			KeepTimeRunning();
			auto* io = im::GetIO();
			if (!io) {
				return;
			}
			const float h = io->DisplaySize.y > 0 ? io->DisplaySize.y : 1080.0f;
			Layout      l;
			l.u = std::max(12.0f, h * (24.0f / 1080.0f) * g_settings.scale);
			l.w = std::clamp(io->DisplaySize.x * 0.3f, l.u * 24.0f, l.u * 34.0f);
			l.x = io->DisplaySize.x * 0.03f;
			l.y = h * 0.07f;
			l.gap = l.u * 0.6f;
			l.pad = l.u * 0.8f;

			im::SetNextWindowPos({ l.x - l.u, l.y - l.u });
			im::SetNextWindowSize({ l.w + l.u * 2.5f, h - l.y });
			const auto flags = im::ImGuiWindowFlags_NoDecoration | im::ImGuiWindowFlags_NoMove | im::ImGuiWindowFlags_NoSavedSettings |
			                   im::ImGuiWindowFlags_NoBackground | im::ImGuiWindowFlags_NoScrollWithMouse | im::ImGuiWindowFlags_NoFocusOnAppearing;
			if (im::Begin("##DOMFW.SlavePanel", nullptr, flags)) {
				Frame f{ im::GetWindowDrawList(), GetFonts(), l.u, g_state.view, g_state.tab };
				float y = l.y;
				if (g_state.confirm) {
					DrawLedger(f, l, y);
					f.clicks.clear();
					DrawConfirm(f, l, *g_state.confirm);
				} else {
					DrawLedger(f, l, y);
					y += LedgerHeight(l) + l.gap;
					DrawCommands(f, l, y);
					y += CommandsHeight(l) + l.gap;
					// never past the bottom of the screen: a longer section scrolls inside the book
					DrawBook(f, l, y, std::min(BookHeight(f, l), h - y - l.u * 0.6f));
				}
				if (f.tooltip) {
					im::SetTooltip("%s", f.tooltip);
				}
				for (auto& click : f.clicks) {
					click();
				}
			}
			im::End();
			if (!g_state.open && g_window) {
				g_window->IsOpen = false;
			}
		}

		// ---- folded panel: one line where the panel was, the game's dialogue and cursor in use ------------------
		std::string KeyName(std::uint32_t a_code)
		{
			if (a_code >= 0x3B && a_code <= 0x44) {
				return std::format("F{}", a_code - 0x3A);
			}
			if (a_code == 0x57 || a_code == 0x58) {
				return std::format("F{}", a_code - 0x4C);
			}
			return std::format("key 0x{:X}", a_code);
		}

		void __stdcall RenderFolded()
		{
			{
				std::scoped_lock lock(g_lock);
				if (!g_state.slaveDialogue || !g_state.collapsed) {
					return;
				}
			}
			auto* io = im::GetIO();
			auto* list = im::GetForegroundDrawList();
			if (!io || !list) {
				return;
			}
			const float h = io->DisplaySize.y > 0 ? io->DisplaySize.y : 1080.0f;
			const float u = std::max(12.0f, h * (24.0f / 1080.0f) * g_settings.scale);
			const auto  fonts = GetFonts();
			const auto  text = std::format("Press {} to show the slave panel", KeyName(g_settings.toggleKey));
			const float size = u * 0.9f;
			const auto  measured = TextSize(fonts.body, size, text.c_str());
			const ImVec2 min{ io->DisplaySize.x * 0.03f, h * 0.07f };
			const ImVec2 max = min + ImVec2{ measured.x + u * 1.6f, measured.y + u * 0.9f };
			dl::AddRectFilled(list, min, max, C::Soot, 4.0f, 0);
			dl::AddRect(list, min, max, C::Iron, 4.0f, 0, 1.0f);
			Text(list, fonts.body, size, min + ImVec2{ u * 0.8f, u * 0.45f }, C::Bone, text.c_str());
		}

		// ---- the knocked-out menu: E on an actor knocked out by Knockout Extensions opens one menu instead of Diary of
		// Mine's perk choices, Knockout Finish Off's and Knockout Extensions' own looting. Diary of Mine's choices go to
		// DOM_Keys.DOMFWKnockedOutChoice, which first wakes the actor fully (the knocked-out line: nothing of DoM runs on a
		// ragdoll); Search and Finish off are done here.
		constexpr int kSearch = -1;
		constexpr int kFinishOff = -2;
		constexpr int kLeave = -3;

		struct KoOption
		{
			const char* id;
			const char* label;
			const char* tip;
			int         choice;
			bool        danger{ false };
		};

		const std::array<KoOption, 8> kKoOptions{ {
			{ "chains", "Enslave", "Make them your slave (Diary of Mine)", 0 },
			{ "cmd_tie", "Tie up", "Tie them up where they lie", 1 },
			{ "cmd_bag", "Put in a sack", "Carry them off in a sack", 2 },
			{ "promise", "Hire", "Offer them a place as your slaver (Diary of Mine)", 3 },
			{ "inventory", "Search", "Go through their belongings", kSearch },
			{ "come_here", "Wake up", "Bring them round", 4 },
			{ "punish", "Finish off", "Kill them. A witnessed kill is a murder.", kFinishOff, true },
			{ "ui_close", "Leave", "Leave them be", kLeave },
		} };

		struct KoMenu
		{
			bool        open{ false };
			RE::FormID  target{ 0 };
			std::string name;
			const char* noKill{ nullptr };  // why Finish off is not offered
		};

		std::mutex                                 g_koLock;
		KoMenu                                     g_ko;
		SKSEMenuFramework::Model::WindowInterface* g_koWindow{ nullptr };

		bool IsKnockedOut(RE::Actor* a_actor)
		{
			const auto* state = a_actor ? a_actor->AsActorState() : nullptr;
			return state && !a_actor->IsPlayerRef() && a_actor->Is3DLoaded() && state->GetLifeState() == RE::ACTOR_LIFE_STATE::kUnconcious;
		}

		void FinishOff(RE::Actor* a_actor)
		{
			auto* player = RE::PlayerCharacter::GetSingleton();
			auto* state = a_actor->AsActorState();
			if (!player || !state || a_actor->IsEssential()) {
				return;
			}
			// alive for the moment of the kill: the engine's kill then runs as on any living actor (death, credit,
			// crime); Knockout Extensions drops an actor that is no longer unconscious and does not raise it again
			if (state->GetLifeState() == RE::ACTOR_LIFE_STATE::kUnconcious) {
				a_actor->SetLifeState(RE::ACTOR_LIFE_STATE::kAlive);
			}
			a_actor->KillImpl(player, 1000.0f, true, false);
			const auto after = state->GetLifeState();
			if (after != RE::ACTOR_LIFE_STATE::kDying && after != RE::ACTOR_LIFE_STATE::kDead) {
				a_actor->KillImmediate();
				logger::info("knockout menu: {} {:08X} finished off (KillImmediate, life state was {})", a_actor->GetName(), a_actor->GetFormID(), static_cast<int>(after));
				return;
			}
			logger::info("knockout menu: {} {:08X} finished off by the player", a_actor->GetName(), a_actor->GetFormID());
		}

		void RunKnockedOut(int a_choice, RE::FormID a_target)
		{
			auto* actor = RE::TESForm::LookupByID<RE::Actor>(a_target);
			if (!actor || a_choice == kLeave) {
				return;
			}
			if (a_choice >= 0) {
				Actions::CallKnockedOut(actor, a_choice);
			} else if (a_choice == kSearch) {
				logger::info("knockout menu: searching {} {:08X}", actor->GetName(), actor->GetFormID());
				RE::ContainerMenu::OpenMenu(actor, actor->GetCrimeFaction() ? RE::ContainerMenu::ContainerMode::kSteal : RE::ContainerMenu::ContainerMode::kLoot);
			} else if (a_choice == kFinishOff && IsKnockedOut(actor)) {
				FinishOff(actor);
			}
		}

		// g_koLock held by the caller
		void CloseKnockedOut()
		{
			g_ko.open = false;
			if (g_koWindow) {
				g_koWindow->IsOpen = false;
			}
		}

		void ChooseKnockedOut(std::size_t a_index)
		{
			if (a_index >= kKoOptions.size()) {
				return;
			}
			const auto& option = kKoOptions[a_index];
			RE::FormID  target;
			{
				std::scoped_lock lock(g_koLock);
				if (!g_ko.open || (option.choice == kFinishOff && g_ko.noKill)) {
					return;
				}
				target = g_ko.target;
				CloseKnockedOut();
			}
			logger::info("knockout menu: {}", option.label);
			SKSE::GetTaskInterface()->AddTask([choice = option.choice, target] { RunKnockedOut(choice, target); });
		}

		bool AnyMenuOpen()
		{
			auto* ui = RE::UI::GetSingleton();
			if (!ui) {
				return true;
			}
			for (const auto& name : { RE::Console::MENU_NAME, RE::DialogueMenu::MENU_NAME, RE::ContainerMenu::MENU_NAME, RE::InventoryMenu::MENU_NAME,
				     RE::MagicMenu::MENU_NAME, RE::BarterMenu::MENU_NAME, RE::MessageBoxMenu::MENU_NAME, RE::TweenMenu::MENU_NAME, RE::JournalMenu::MENU_NAME,
				     RE::MapMenu::MENU_NAME, RE::StatsMenu::MENU_NAME, RE::FavoritesMenu::MENU_NAME, RE::LockpickingMenu::MENU_NAME,
				     RE::SleepWaitMenu::MENU_NAME, RE::BookMenu::MENU_NAME, RE::GiftMenu::MENU_NAME, RE::LoadingMenu::MENU_NAME }) {
				if (ui->IsMenuOpen(name)) {
					return true;
				}
			}
			return false;
		}

		// main thread (the input queue). true = the event is used here
		bool KnockedOutInput(const RE::ButtonEvent& a_button)
		{
			auto*      events = RE::UserEvents::GetSingleton();
			const bool activate = events && a_button.QUserEvent() == events->activate;
			{
				std::scoped_lock lock(g_koLock);
				if (g_ko.open) {
					if (activate) {
						return true;  // E again does nothing while the menu is up
					}
					if (a_button.GetDevice() != RE::INPUT_DEVICE::kKeyboard) {
						return false;
					}
					const auto code = a_button.GetIDCode();
					if (code == 0x01) {  // Esc
						CloseKnockedOut();
						return true;
					}
					if (code < 0x02 || code > 0x09) {  // 1..8
						return false;
					}
				} else {
					if (!g_settings.knockoutMenu || !g_koWindow || !activate || AnyMenuOpen()) {
						return false;
					}
					auto* pick = RE::CrosshairPickData::GetSingleton();
					auto  ref = pick ? pick->GetActiveTarget().get() : RE::NiPointer<RE::TESObjectREFR>{};
					auto* actor = ref ? ref->As<RE::Actor>() : nullptr;
					if (!IsKnockedOut(actor)) {
						return false;
					}
					g_ko.open = true;
					g_ko.target = actor->GetFormID();
					g_ko.name = actor->GetName();
					g_ko.noKill = actor->IsEssential()                              ? "Essential - cannot be killed" :
					              Forms::InFaction(actor, Forms::Get().actor) ? "A Diary of Mine slave or slaver" :
					                                                                nullptr;
					g_koWindow->IsOpen = true;
					logger::info("knockout menu: open for {} {:08X}", g_ko.name, g_ko.target);
					return true;
				}
			}
			ChooseKnockedOut(a_button.GetIDCode() - 0x02);
			return true;
		}

		void __stdcall RenderKnockedOut()
		{
			std::size_t chosen = kKoOptions.size();
			{
				std::scoped_lock lock(g_koLock);
				if (!g_ko.open) {
					return;
				}
				auto* actor = RE::TESForm::LookupByID<RE::Actor>(g_ko.target);
				if (!IsKnockedOut(actor)) {  // woke up, died or unloaded meanwhile
					CloseKnockedOut();
					return;
				}
				KeepTimeRunning();
				auto* io = im::GetIO();
				if (!io) {
					return;
				}
				const float h = io->DisplaySize.y > 0 ? io->DisplaySize.y : 1080.0f;
				const float u = std::max(12.0f, h * (24.0f / 1080.0f) * g_settings.scale);
				const float pad = u * 0.8f, rowH = u * 1.9f, w = u * 17.0f;
				const float hgt = pad * 2 + u * 2.6f + rowH * kKoOptions.size();
				const ImVec2 min{ (io->DisplaySize.x - w) * 0.5f, (h - hgt) * 0.5f };
				im::SetNextWindowPos({ min.x - u, min.y - u });
				im::SetNextWindowSize({ w + u * 2.5f, hgt + u * 2.5f });
				const auto flags = im::ImGuiWindowFlags_NoDecoration | im::ImGuiWindowFlags_NoMove | im::ImGuiWindowFlags_NoSavedSettings |
				                   im::ImGuiWindowFlags_NoBackground | im::ImGuiWindowFlags_NoScrollWithMouse;
				if (im::Begin("##DOMFW.KnockedOut", nullptr, flags)) {
					auto* list = im::GetWindowDrawList();
					const auto fonts = GetFonts();
					Plate(list, min, min + ImVec2{ w, hgt }, u);
					float y = min.y + pad;
					Text(list, fonts.display, u * 1.25f, { min.x + pad, y }, C::Bone, g_ko.name.c_str());
					Text(list, fonts.body, u * 0.8f, { min.x + pad, y + u * 1.45f }, C::BoneDim, "KNOCKED OUT");
					y += u * 2.4f;
					Divider(list, min.x + pad, min.x + w - pad, y, u);
					y += u * 0.2f;
					const char* tooltip = nullptr;
					for (std::size_t i = 0; i < kKoOptions.size(); ++i) {
						const auto& o = kKoOptions[i];
						const bool  off = o.choice == kFinishOff && g_ko.noKill;
						const ImVec2 rMin{ min.x + pad * 0.6f, y };
						const ImVec2 rSize{ w - pad * 1.2f, rowH - u * 0.2f };
						im::SetCursorScreenPos(rMin);
						const bool clicked = im::InvisibleButton(std::format("##ko{}", i).c_str(), rSize);
						const bool hovered = im::IsItemHovered();
						if (hovered) {
							tooltip = off ? g_ko.noKill : o.tip;
							if (!off) {
								dl::AddRectFilled(list, rMin, rMin + rSize, o.danger ? C::BloodHover : C::LeatherHover, 3.0f, 0);
							}
						}
						const ImU32 col = off ? C::Unlit : (o.danger ? C::BloodText : (hovered ? C::Bone : C::BoneDim));
						Text(list, fonts.body, u * 0.75f, { rMin.x + u * 0.3f, rMin.y + (rSize.y - u * 0.75f) * 0.5f }, C::BoneFaint, std::to_string(i + 1).c_str());
						Icon(list, fonts, o.id, { rMin.x + u * 1.9f, rMin.y + rSize.y * 0.5f }, u * 1.15f, col);
						Text(list, fonts.body, u * 0.95f, { rMin.x + u * 3.0f, rMin.y + (rSize.y - u * 0.95f) * 0.5f }, col, o.label);
						if (clicked && !off) {
							chosen = i;
						}
						y += rowH;
					}
					if (tooltip) {
						im::SetTooltip("%s", tooltip);
					}
				}
				im::End();
			}
			if (chosen < kKoOptions.size()) {
				ChooseKnockedOut(chosen);
			}
		}

		bool __stdcall OnInput(RE::InputEvent* a_event)
		{
			const auto* button = a_event ? a_event->AsButtonEvent() : nullptr;
			if (!button || !button->IsDown()) {
				return false;
			}
			if (KnockedOutInput(*button)) {
				return true;
			}
			if (button->GetDevice() != RE::INPUT_DEVICE::kKeyboard) {
				return false;
			}
			constexpr std::uint32_t kEscape = 0x01;
			if (button->GetIDCode() == kEscape) {
				// Esc on the open panel: an open "are you sure" is cancelled, otherwise panel and dialogue close at once
				std::scoped_lock lock(g_lock);
				if (!g_state.slaveDialogue || !g_state.open) {
					return false;
				}
				if (g_state.confirm) {
					g_state.confirm.reset();
				} else {
					CloseAll("Esc");
				}
				return true;
			}
			if (button->GetIDCode() != g_settings.toggleKey) {
				return false;
			}
			{
				std::scoped_lock lock(g_lock);
				if (!g_state.slaveDialogue) {
					return false;
				}
				g_state.collapsed = !g_state.collapsed;
				if (!g_state.collapsed) {
					g_state.closedByUser = false;
				} else {
					g_state.open = false;
				}
				logger::info("panel: {} ({})", g_state.collapsed ? "folded" : "unfolded", KeyName(g_settings.toggleKey));
			}
			SKSE::GetTaskInterface()->AddTask([] { Refresh(); });
			return true;
		}

		void PushStyle()
		{
			im::PushStyleColor(im::ImGuiCol_PopupBg, IM_COL32(26, 22, 19, 250));
			im::PushStyleColor(im::ImGuiCol_Border, C::Iron);
			im::PushStyleColor(im::ImGuiCol_Text, C::BoneDim);
		}

		void __stdcall RenderStyled()
		{
			PushStyle();
			Render();
			im::PopStyleColor(3);
		}

		void __stdcall RenderKnockedOutStyled()
		{
			PushStyle();
			RenderKnockedOut();
			im::PopStyleColor(3);
		}
	}

	void Install(const Settings& a_settings)
	{
		g_settings = a_settings;
		if (!SKSEMenuFramework::IsInstalled()) {
			logger::warn("panel: SKSE Menu Framework is not installed - no slave panel, no knocked-out menu");
			return;
		}
		// blocking windows: only a blocking SKSE Menu Framework window gets ImGui input and its cursor (Hooks.cpp Render:
		// EnableImGuiInput / MouseDrawCursor only when ShouldTheGameBePaused). Its pause is Main::freezeTime, set once when
		// the first blocking window opens (GameLock.cpp, FreezeTimeOnMenu); KeepTimeRunning clears it unless PauseGame=1
		if (g_settings.knockoutMenu) {
			g_koWindow = SKSEMenuFramework::AddWindow(RenderKnockedOutStyled, true);
			if (g_koWindow) {
				g_koWindow->IsOpen = false;
			}
			logger::info("knockout menu: on (E on an actor knocked out by Knockout Extensions)");
		}
		SKSEMenuFramework::AddInputEvent(OnInput);
		if (!g_settings.enabled) {
			logger::info("panel: off");
			return;
		}
		g_window = SKSEMenuFramework::AddWindow(RenderStyled, true);
		if (g_settings.hideDialogue) {
			DialogueDisplay::Install();
			static MenuWatch watch;
			RE::UI::GetSingleton()->AddEventSink<RE::MenuOpenCloseEvent>(&watch);
		}
		SKSEMenuFramework::AddHudElement(RenderFolded);
		if (g_window) {
			g_window->IsOpen = false;
		}
		logger::info("panel: window registered (scale {}, hide dialogue {}, pause game {})", g_settings.scale, g_settings.hideDialogue, g_settings.pauseGame);
	}

	void Refresh()
	{
		if (!g_window) {
			return;
		}
		// the knocked-out menu is the one place where the player decides to take someone over: hold the shared flag
		// while it is open, mirrored every tick so it cannot stay set after the menu closes
		{
			std::scoped_lock koLock(g_koLock);
			SceneGuard::SetBit(SceneGuard::kKnockout, g_ko.open, "knocked-out menu");
		}
		auto*      ui = RE::UI::GetSingleton();
		const bool dialogue = ui && ui->IsMenuOpen(RE::DialogueMenu::MENU_NAME);
		RE::Actor* speaker = nullptr;
		if (dialogue) {
			if (auto* topics = RE::MenuTopicManager::GetSingleton()) {
				auto ref = topics->speaker.get();
				speaker = ref ? ref->As<RE::Actor>() : nullptr;
			}
		}
		// not during DoM's first-capture dialogue: the panel would cover the lines that make the slave
		const bool slave = speaker && Slave::IsPlayerSlave(speaker) && !Slave::IsJustCaptured(speaker);
		Slave::View view = slave ? Slave::Read(speaker) : Slave::View{};


		std::scoped_lock lock(g_lock);
		g_state.slaveDialogue = dialogue && slave;
		if (!dialogue) {
			g_state.open = false;
			g_state.closedByUser = false;
			g_state.confirm.reset();
		} else if (slave && !g_state.closedByUser && !g_state.collapsed) {
			if (!g_state.open || g_state.target != speaker->GetFormID()) {
				logger::info("panel: open for {} {:08X}", view.name, speaker->GetFormID());
			}
			if (g_state.target != speaker->GetFormID()) {
				g_state.confirm.reset();
			}
			g_state.open = true;
			g_state.target = speaker->GetFormID();
			g_state.view = std::move(view);
		} else {
			g_state.open = false;
		}
		g_window->IsOpen = g_state.open;
		HideVanilla(g_settings.hideDialogue && g_state.open);
	}

	void Reset()
	{
		HideVanilla(false);
		std::scoped_lock lock(g_lock);
		g_state = State{};
		if (g_window) {
			g_window->IsOpen = false;
		}
	}
}
