
local pedestal_cbox = { -- Collision boxes for pedestals
	type = "fixed",
	fixed = {
		{ -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
	}
}

-- Not satisfied with this mesh, will most likely change .obj file in future release.
minetest.register_node("imps:base_pedestal", {
	description = "Star Marble Pedestal",
	drawtype = "mesh",
	mesh = "imps_pedestal.obj",
	tiles = {
		"tilestar.png",
		"tilestylized.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1, not_in_craft_guide = 1},
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node,
	collision_box = pedestal_cbox,
	selection_box = pedestal_cbox,
})

-- These pedestals were created using rubenwardy's nodebox editor, and due to complexity cause a lot of wasted processing power to render.
minetest.register_node("imps:star_pedestal", {
	tiles = {
		"tilestar.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})

minetest.register_node("imps:blankped", {
	tiles = {
		"tilestar.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:air_pedestal", {
	tiles = {
		"tilestar_air.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:earth_pedestal", {
	tiles = {
		"tilestar_earth.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:fire_pedestal", {
	tiles = {
		"tilestar_fire.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:nature_pedestal", {
	tiles = {
		"tilestar_nature.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:spirit_pedestal", {
	tiles = {
		"tilestar_spirit.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:void_pedestal", {
	tiles = {
		"tilestar_void.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
minetest.register_node("imps:water_pedestal", {
	tiles = {
		"tilestar_water.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
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
		}
	}
})
