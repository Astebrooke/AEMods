--[[------------------------------------------------------------
      
	       Astebrooke Enterprises Base Mod Platform
   A lua mod providing the materials used across other AE mods
   
                  -=Astebrooke Enterprises=-

--]]------------------------------------------------------------

local MOD_NAME = minetest.get_current_modname() or "aebase";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

aebase = {}

dofile(MOD_PATH .. "/" .. "nodes.lua")
dofile(MOD_PATH .. "/" .. "craftnodes.lua")
dofile(MOD_PATH .. "/" .. "items.lua")
dofile(MOD_PATH .. "/" .. "tools.lua")
dofile(MOD_PATH .. "/" .. "crafting.lua")

-- Call worldgen for new blocks
minetest.register_ore({
	ore_type		= "scatter",
	ore				= "aebase:granite_in_stone",
	wherein			= "default:stone",
	clust_scarcity	= 12*12*12,
	clust_num_ores	= 48,
	clust_size		= 16,
	height_min		= -31,000,
	height_max		= 512,
})
minetest.register_ore({
	ore_type		= "scatter",
	ore				= "aebase:speck_marble_in_stone",
	wherein			= "aebase:granite_in_stone",
	clust_scarcity	= 6*6*6,
	clust_num_ores	= 12,
	clust_size		= 10,
	height_min		= -31,000,
	height_max		= 512,
})