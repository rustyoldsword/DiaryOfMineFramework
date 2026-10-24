scriptname SlaveTats hidden
import NiOverride
import NetImmerse
string function VERSION() global
	Return ""
Endfunction
string function ROOT() global
	Return ""
Endfunction
string function PREFIX() global
	Return ""
Endfunction
int function SLOTS(string area) global
	Return 0
Endfunction
bool function simple_add_tattoo(Actor target, string section, string name, int color = 0, bool last = true, bool silent = false, float alpha = 1.0) global
	Return False
Endfunction
bool function simple_remove_tattoo(Actor target, string section, string name, bool last = true, bool silent = false) global
	Return False
Endfunction
bool function tattoo_matches(int template, int tattoo, bool include_configurable = false) global
	Return False
Endfunction
bool function is_tattoo(int tattoo) global
	Return False
Endfunction
int function find_tattoo(int array, int template) global
	Return 0
Endfunction
int function find_excluding_tattoo(int applied, int tattoo) global
	Return 0
Endfunction
int function find_required_tattoo(int applied, int tattoo) global
	Return 0
Endfunction
bool function has_required_plugin(int tattoo) global
	Return False
Endfunction
function _cache_tattoo(int cache, int tattoo) global
Endfunction
int function compile_cache() global
	Return 0
Endfunction
int function acquire_cache() global
	Return 0
Endfunction
function release_cache() global
Endfunction
function _append(int dest, int val) global
Endfunction
function _extend(int dest, int src) global
Endfunction
function _extend_matching(int dest, int src, int template, int applied = 0, string domain = "default") global
Endfunction
bool function query_available_tattoos(int template, int matches, int applied = 0, string domain = "default") global
	Return False
Endfunction
bool function query_applied_tattoos(Actor target, int template, int matches, string except_area = "", int except_slot = -1) global
	Return False
Endfunction
bool function query_applied_tattoos_with_attribute(Actor target, string attrib, int matches, string except_area = "", int except_slot = -1) global
	Return False
Endfunction
bool function has_applied_tattoos_with_attribute(Actor target, string attrib, string except_area = "", int except_slot = -1) global
	Return False
Endfunction
function notify(string mesg, bool silent = false) global
Endfunction
bool function remove_tattoos(Actor target, int template, bool ignore_lock = False, bool silent = False) global
	Return False
Endfunction
bool function _remove_tattoos(Actor target, int template, bool ignore_lock = False, bool silent = False) global
	Return False
Endfunction
bool function remove_tattoo_from_slot(Actor target, string area, int slot, bool ignore_lock = False, bool silent = False) global
	Return False
Endfunction
int function get_applied_tattoo_in_slot(Actor target, string area, int slot) global
	Return 0
Endfunction
bool function get_applied_tattoos_by_area(Actor target, int on_body, int on_face, int on_hands, int on_feet) global
	Return False
Endfunction
bool function external_slots(Actor target, string area, int matches) global
	Return False
Endfunction
int function _available_slot(Actor target, string area) global
	Return 0
Endfunction
bool function add_tattoo(Actor target, int tattoo, int slot = -1, bool ignore_lock = False, bool silent = False) global
	Return False
Endfunction
int function add_and_get_tattoo(Actor target, int tattoo, int slot = -1, bool ignore_lock = False, bool silent = False, bool try_upgrade = True) global
	Return 0
Endfunction
int function _add_and_get_tattoo(Actor target, int tattoo, int slot = -1, bool ignore_lock = False, bool silent = False) global
	Return 0
Endfunction
Form function get_form(int tattoo, string plugin_field, string formid_field, Form default = None) global
	Return None
Endfunction
bool function activate_tattoo_magic(Actor target, int tattoo, bool deactivate_first = false) global
	Return False
Endfunction
bool function deactivate_tattoo_magic(Actor target, int tattoo) global
	Return False
Endfunction
bool function deactivate_all_tattoo_magic(Actor target) global
	Return False
Endfunction
bool function refresh_tattoo_magic(Actor target, int template) global
	Return False
Endfunction
bool function upgrade_tattoos(Actor target) global
	Return False
Endfunction
bool function clear_overlay(Actor target, bool isFemale, string area, int slot) global
	Return False
Endfunction
bool function apply_overlay(Actor target, bool isFemale, string area, int slot, string path, int color, int glow, bool gloss, string bump = "", float alpha = 1.0) global
	Return False
Endfunction
function mark_actor(Actor target) global
Endfunction
bool function synchronize_tattoos(Actor target, bool silent = false) global
	Return False
Endfunction
function _log_jcontainer(int jc, string indent) global
Endfunction
function log_tattoo(string msg, int tattoo) global
Endfunction
