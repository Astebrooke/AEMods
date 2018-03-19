--[[
		Banners in varying styles for use in decoration of castles and similar structures
]]--

-- Selection box for banners
local tapestry_cbox = {
	type = "fixed",
	fixed = {
		{ -0.5, 0.4, 0.49, 0.5, 0.5, 0.5 },
	}
}
minetest.register_node("aedeco:banner_point", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_point.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_point 1",
	recipe = {
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"farming:cotton","farming:cotton","              "},
		{"              ","farming:cotton","              "},
	},
})
minetest.register_node("aedeco:banner_halfpoint", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_halfpoint.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_halfpoint 1",
	recipe = {
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"              ","farming:cotton","              "},
	},
})
minetest.register_node("aedeco:banner_quarterpoint", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_quarterpoint.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_quarterpoint 1",
	recipe = {
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"farming:cotton","farming:cotton","              "},
	},
})
minetest.register_node("aedeco:banner_roundpoint", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_roundpoint.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_roundpoint 1",
	recipe = {
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"              ","farming:cotton","farming:cotton"},
	},
})
minetest.register_node("aedeco:banner_taper", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_taper.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_taper 1",
	recipe = {
		{"farming:cotton","farming:cotton","farming:cotton"},
		{"              ","farming:cotton","              "},
		{"              ","farming:cotton","              "},
	},
})
minetest.register_node("aedeco:banner_taperskinny", {
	description = "a moderately long banner",
	drawtype = "mesh",
	mesh = "aedeco_banner_taperskinny.obj",
	tiles = {
		"wool_white.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = {oddly_breakable_by_hand = 3, flammable = 3},
	selection_box = tapestry_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:banner_taperskinny 1",
	recipe = {
		{"farming:cotton","farming:cotton"},
		{"              ","farming:cotton"},
		{"              ","farming:cotton"},
	},
})