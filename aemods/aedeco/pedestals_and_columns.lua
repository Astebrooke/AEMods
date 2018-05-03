--[[ Columns and other similar decorations, by -=Astebrooke Enterprises=- ]]--

-- Collision/Selection Box so the nodeboxes don't look all fugly.
local pedestal_cbox = { -- Collision boxes for pedestals
	type = "fixed",
	fixed = {
		{ -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
	}
}

-- These models created with RubenWardy's NodeBox Editor

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
		},
	},
	selection_box = pedestal_cbox,
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
		},
	},
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
		},
	},
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
		},
	},
})

minetest.register_node("aedeco:blankped", {
	tiles = {
		"aebase_marble.png",
	},
	groups = {cracky = 1, not_in_craft_guide = 1},
	drawtype = "nodebox",
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.125, 0.4375, 0.125, 0.5, 0.5, 0.5}, -- top_corner1
			{0.25, 0.4375, -0.125, 0.5, 0.5, 0.125}, -- top_line1
			{0.125, 0.4375, -0.5, 0.5, 0.5, -0.125}, -- top_corner2
			{-0.125, 0.4375, -0.5, 0.125, 0.5, -0.25}, -- top_line2
			{-0.5, 0.4375, -0.5, -0.125, 0.5, -0.125}, -- top_corner3
			{-0.5, 0.4375, -0.125, -0.25, 0.5, 0.125}, -- top_line3
			{-0.5, 0.4375, 0.125, -0.125, 0.5, 0.5}, -- top_corner4
			{-0.125, 0.4375, 0.25, 0.125, 0.5, 0.5}, -- top_line4
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, -0.125}, -- bowl_line1
			{-0.4375, 0.375, 0.125, 0.4375, 0.4375, 0.4375}, -- bowl_line2
			{0.125, 0.375, -0.125, 0.4375, 0.4375, 0.125}, -- bowl_line3
			{-0.4375, 0.375, -0.125, -0.125, 0.4375, 0.125}, -- bowl_line4
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375}, -- bowl_bottom
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}, -- column_base
			{-0.125, -0.3125, -0.25, 0.125, 0.3125, 0.25}, -- column_panel1
			{-0.25, -0.3125, -0.125, 0.25, 0.3125, 0.125}, -- column_panel2
			{-0.3125, -0.375, -0.3125, 0.3125, -0.3125, 0.3125}, -- column_base1
			{-0.375, -0.4375, -0.375, 0.375, -0.375, 0.375}, -- column_base2
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- pedestal_base
		},
	},
	selection_box = pedestal_cbox,
})
