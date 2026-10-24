#pragma once

#include "Slave.h"

// Panel buttons run Diary of Mine's own menu dispatchers (DOM_Keys.DOMDo*Menu) with the wheel choices queued here.
// The rebuilt DOM_Keys asks DiaryOfMineFramework.HasMenuChoice()/TakeMenuChoice() at the top of every Show*Menu, so each wheel
// on the path returns the queued index instead of opening; a wheel with nothing queued opens as usual (the last,
// dynamic level of "›" actions). Every DoM check (fleeing, busy inventory, slave or not) still runs.
namespace DOMFW::Actions
{
	enum class Kind
	{
		Button,  // runs and closes the dialogue
		More,    // runs, the last choice comes from DoM's own wheel
		Toggle,  // runs in place, the panel stays open
		Choice   // one option of a row (distances); runs in place
	};

	struct Action
	{
		const char*      id;     // also the icon file: Data/Interface/DiaryOfMineFramework/icons/<id>.png
		const char*      label;
		const char*      tip;
		const char*      func;   // DOM_Keys function; takes the slave unless noActor
		std::vector<int> choices;
		Kind             kind{ Kind::Button };
		bool             danger{ false };
		bool             confirm{ false };
		bool             noActor{ false };
		bool (*on)(const Slave::View&){ nullptr };           // Toggle / Choice: current state
		const char* (*blocked)(const Slave::View&){ nullptr };  // reason it cannot run now, or nullptr
	};

	struct Section
	{
		const char*         title;
		std::vector<Action> actions;
		bool                row{ false };  // options in one row (distances)
	};

	struct Tab
	{
		const char*          id;
		const char*          label;
		const char*          title;
		const char*          tip;
		std::vector<Section> sections;
	};

	const std::vector<Tab>&    Tabs();
	const std::vector<Action>& Commands(const Slave::View& a_view);  // the command bar, resolved for the slave's state

	// render thread: queue the action; the main thread runs it (after the dialogue closes, unless it stays open)
	void Request(const Action& a_action, RE::FormID a_target);
	void Tick();  // main thread: runs requests waiting for the dialogue to close

	bool RegisterPapyrus(RE::BSScript::IVirtualMachine* a_vm);

	// main thread. The knocked-out menu: wake with Knockout Extensions (1 woken, 0 not knocked out, -1 cannot wake), and
	// DOM_Keys.DOMFWKnockedOutChoice (0 enslave, 1 tie up, 2 sack, 3 hire, 4 wake up)
	std::int32_t WakeKnockedOutNow(RE::Actor* a_actor);
	bool         CallKnockedOut(RE::Actor* a_target, std::int32_t a_choice);
}
