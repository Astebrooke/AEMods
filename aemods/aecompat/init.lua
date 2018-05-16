--[[------------------------------------------------------------

			Astebrooke Enterprises Compatibility Patch
			For leveling all the tools you could want!

				  -=Astebrooke Enterprises=-

--]]------------------------------------------------------------

local MOD_NAME = minetest.get_current_modname() or "aecompat";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

aecompat = {}

dofile(MOD_PATH .. "/" .. "toolrankscompat.lua")
dofile(MOD_PATH .. "/" .. "impscompat.lua")
