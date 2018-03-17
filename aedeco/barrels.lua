-- Better-looking barrels for decoration, by -=Astebrooke Enterprises=-


local barrel_cbox = {
	type = "fixed",
	fixed = {
		{ -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
	}
}
minetest.register_node("aedeco:barrel_acacia", {
	description = "Acacia Barrel",
	drawtype = "mesh",
	mesh = "barrel.obj",
	tiles = {
		"acacia_barrel.png",
		"acacia_cap.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = barrel_cbox,
	selection_box = barrel_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:barrel_acacia 1",
	recipe = {
		{"default:acacia_wood",  "doors:trapdoor"   ,"default:acacia_wood"},
		{"default:acacia_wood",  "              "   ,"default:acacia_wood"},
		{"default:acacia_wood","default:acacia_wood","default:acacia_wood"},
	}
})

minetest.register_node("aedeco:barrel_apple", {
	description = "Applewood Barrel",
	drawtype = "mesh",
	mesh = "barrel.obj",
	tiles = {
		"apple_barrel.png",
		"apple_cap.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = barrel_cbox,
	selection_box = barrel_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:barrel_apple 1",
	recipe = {
		{"default:wood","doors:trapdoor","default:wood"},
		{"default:wood","              ","default:wood"},
		{"default:wood","default:wood"  ,"default:wood"},
	}
})

minetest.register_node("aedeco:barrel_aspen", {
	description = "Aspenwood Barrel",
	drawtype = "mesh",
	mesh = "barrel.obj",
	tiles = {
		"aspen_barrel.png",
		"aspen_cap.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = barrel_cbox,
	selection_box = barrel_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:barrel_aspen 1",
	recipe = {
		{"default:aspen_wood",   "doors:trapdoor"   ,"default:aspen_wood"},
		{"default:aspen_wood",   "              "   ,"default:aspen_wood"},
		{"default:aspen_wood","default:aspen_wood"  ,"default:aspen_wood"},
	}
})

minetest.register_node("aedeco:barrel_jungle", {
	description = "Junglewood Barrel",
	drawtype = "mesh",
	mesh = "barrel.obj",
	tiles = {
		"jungle_barrel.png",
		"jungle_cap.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = barrel_cbox,
	selection_box = barrel_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:barrel_jungle 1",
	recipe = {
		{"default:junglewood",  "doors:trapdoor"  ,"default:junglewood"},
		{"default:junglewood",  "              "  ,"default:junglewood"},
		{"default:junglewood","default:junglewood","default:junglewood"},
	}
})

minetest.register_node("aedeco:barrel_pine", {
	description = "Pinewood Barrel",
	drawtype = "mesh",
	mesh = "barrel.obj",
	tiles = {
		"pine_barrel.png",
		"pine_cap.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = barrel_cbox,
	selection_box = barrel_cbox,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:barrel_pine 1",
	recipe = {
		{"default:pine_wood","doors:trapdoor"   ,"default:pine_wood"},
		{"default:pine_wood","              "   ,"default:pine_wood"},
		{"default:pine_wood","default:pine_wood","default:pine_wood"},
	}
})
