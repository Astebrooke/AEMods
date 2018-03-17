-- Columns and other similar decorations, by -=Astebrooke Enterprises=-

minetest.register_node("aedeco:column_granite_base", {
	tiles = {
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.4375, -0.3125, 0.3125, -0.3125, 0.3125}, -- baseplate_2
			{-0.25, -0.3125, -0.25, 0.25, -0.1875, 0.25}, -- baseplate_3
			{-0.1875, -0.1875, -0.1875, 0.1875, -0.125, 0.1875}, -- baseplate_4
			{-0.1875, -0.125, -0.125, 0.1875, 0.5, 0.125}, -- Xvector
			{-0.125, -0.125, -0.1875, 0.125, 0.5, 0.1875}, -- ZVector
			{-0.375, -0.5, -0.375, 0.375, -0.4375, 0.375}, -- baseplate_1
		}
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:column_granite_base 1",
	recipe = {
		{"aedeco:column_granite_center"},
		{"aebase:granite_halfslab"},
		{"aebase:granite_panel"},
	}
})
minetest.register_node("aedeco:column_granite_cap", {
	tiles = {
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, 0.375, -0.25, 0.3125, 0.4375, 0.25}, -- capplate_2X
			{-0.25, 0.3125, -0.1875, 0.25, 0.375, 0.1875}, -- capplate_3X
			{-0.1875, 0.25, -0.1875, 0.1875, 0.3125, 0.1875}, -- baseplate_4
			{-0.1875, -0.5, -0.125, 0.1875, 0.25, 0.125}, -- Xvector
			{-0.125, -0.5, -0.1875, 0.125, 0.25, 0.1875}, -- ZVector
			{-0.25, 0.4375, -0.375, 0.25, 0.5, 0.375}, -- capplate_1Z
			{-0.375, 0.4375, -0.25, 0.375, 0.5, 0.25}, -- capplate_1X
			{-0.3125, 0.4375, -0.3125, 0.3125, 0.5, 0.3125}, -- capplate_1ZX
			{-0.25, 0.375, -0.3125, 0.25, 0.4375, 0.3125}, -- capplate_2Z
			{-0.1875, 0.3125, -0.25, 0.1875, 0.375, 0.25}, -- capplate_3Z
		}
	}
})
minetest.register_node("aedeco:column_granite_center", {
	tiles = {
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.125, 0.1875, 0.5, 0.125}, -- Xvector
			{-0.125, -0.5, -0.1875, 0.125, 0.5, 0.1875}, -- ZVector
		}
	}
})
minetest.register_node("aedeco:column_granite_center_detail", {
	tiles = {
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png",
		"aebase_granite.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.125, 0.1875, 0.5, 0.125}, -- Xvector
			{-0.125, -0.5, -0.1875, 0.125, 0.5, 0.1875}, -- ZVector
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}, -- centerblock
			{-0.25, -0.25, -0.0625, 0.25, 0.25, 0.0625}, -- Xbumpout
			{-0.0625, -0.25, -0.25, 0.0625, 0.25, 0.25}, -- Zbumpout
		}
	}
})

