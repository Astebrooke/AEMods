--[[------------------------------------------------------------

			Astebrooke Enterprises Tool Catalogue
				 For your every working need!

				  -=Astebrooke Enterprises=-

--]]------------------------------------------------------------

local MOD_NAME = minetest.get_current_modname() or "aetools";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

aetools = {}

dofile(MOD_PATH .. "/" .. "qoltools.lua")
dofile(MOD_PATH .. "/" .. "compat.lua")
