local MOD_NAME = minetest.get_current_modname() or "bridges";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

bridges = {}

dofile(MOD_PATH .. "/" .. "nodes.lua")
dofile(MOD_PATH .. "/" .. "craftnodes.lua")
