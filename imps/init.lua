--[[------------------------------------------------------------

	  Interdimensional Metaphysical Parasites & Symbiotes
         As catalogued and presented by your friends at

                  -=Astebrooke Enterprises=-

--]]------------------------------------------------------------

local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local PLAYER_FILENAME = "playerpacts"
local PLAYER_FILE_SAVE_INTERVAL = 120 -- in seconds

imps = {}

dofile(MOD_PATH .. "/main/" .. "rifts.lua")
dofile(MOD_PATH .. "/main/" .. "nodes.lua")
dofile(MOD_PATH .. "/main/" .. "pedestals.lua")
dofile(MOD_PATH .. "/main/" .. "tools.lua")
dofile(MOD_PATH .. "/main/" .. "items.lua")
dofile(MOD_PATH .. "/crafts/" .. "craftnodes.lua")
dofile(MOD_PATH .. "/crafts/" .. "crafting.lua")


-- Call worldgen for new nodes

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "imps:infused_stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -31000,
	y_max          = 0,
})
