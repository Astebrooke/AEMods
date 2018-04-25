local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local impElems = {"nature", "air", "earth", "fire", "water", "spirit", "void"}-- These are the different aspects associated with imps

-- Speckled Marble recipes
minetest.register_craft({
	type = "shaped",
	output = "imps:starmarble 1",
	recipe = {
		{"aebase:marble","aebase:marble"},
		{"aebase:marble","aebase:marble"},
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "imps:stylstarmarble 1",
	recipe = {"imps:starmarble","imps:chisel"},
	replacements = {
		{"imps:chisel","imps:chisel"},
	}
})

-- Star Pedestal recipe
minetest.register_craft({
	type = "shapeless",
	output = "imps:star_pedestal 1",
	recipe = {"imps:base_pedestal","imps:foci_empty"},
})
