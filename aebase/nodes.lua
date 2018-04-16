--[[	**************************

				Solid Blocks

		**************************	]]

-- Worldgen-Only block nodes
minetest.register_node("aebase:granite_in_stone", {
	tiles = {"default_stone.png^granite_in_stone.png"},
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = {cracky=3, level=1, not_in_craft_guide = 1},
	drop = {
			max_items = 6,
			items = {
					{items = {'aebase:granite_fragment'}},
					{items = {'aebase:granite_fragment'}, rarity = 2},
					{items = {'aebase:granite_fragment'}, rarity = 3},
					{items = {'aebase:granite_fragment'}, rarity = 4},
					{items = {'aebase:granite_fragment'}, rarity = 5},
					{items = {'aebase:granite_fragment'}, rarity = 6},
				}
			},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("aebase:speck_marble_in_stone", {
	tiles = {"default_stone.png^marble_in_stone.png"},
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = {cracky=2, level=2, not_in_craft_guide=1},
	drop = {
			max_items = 10,
			items = {
					{items = {'aebase:marble_fragment'}},
					{items = {'aebase:marble_fragment'}, rarity = 2},
					{items = {'aebase:marble_fragment'}, rarity = 3},
					{items = {'aebase:marble_fragment'}, rarity = 4},
					{items = {'aebase:marble_fragment'}, rarity = 5},
					{items = {'aebase:marble_fragment'}, rarity = 6},
					{items = {'aebase:marble_fragment'}, rarity = 7},
					{items = {'aebase:marble_fragment'}, rarity = 8},
					{items = {'aebase:marble_fragment'}, rarity = 9},
					{items = {'aebase:marble_fragment'}, rarity = 10},
				}
			},
	sounds = default.node_sound_stone_defaults(),
})


-- Flecked Granite nodes
minetest.register_node("aebase:granite", {
	description = "Flecked Granite",
	tiles = {"aebase_granite.png"},
	paramtype2 = "facedir",
	groups = {cracky=3, level=1, not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
})



-- Flecked Granite Brick nodes
minetest.register_node("aebase:granite_bricks", {
	description = "Flecked Granite Bricks",
	tiles = {"granite_bricks.png"},
	groups = {cracky=3, level=1, not_in_craft_guide=1},
	paramtype2 = "facedir",
	sounds = default.node_sound_stone_defaults(),
})



-- Speckled Marble nodes
minetest.register_node("aebase:marble", {
	description = "Speckled Marble",
	tiles = {"aebase_marble.png"},
	paramtype2 = "facedir",
	groups = {cracky=2, level=2, not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
})


-- moreblocks compatibility
if minetest.get_modpath("moreblocks") then

		stairsplus:register_all("aebase", "granite", "aebase:granite", {
			description = "Flecked Granite",
			tiles = {"aebase_granite.png"},
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
		})

		stairsplus:register_all("aebase", "granite_bricks", "aebase:granite_bricks", {
			description = "Flecked Granite Brick",
			tiles = {"granite_bricks.png"},
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
		})

		stairsplus:register_all("aebase", "marble", "aebase:marble", {
			description = "Speckled Marble",
			tiles = {"aebase_marble.png"},
			groups = {cracky=2, level=2, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
		})
else
		-- If moreblocks mod is not installed, then register nodeboxes
		minetest.register_node("aebase:granite_stairs", {
			description = "Granite Stairs",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_stairs_inv.png",
			wield_image = "aebase_granite_stairs_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.25, -0.25, -0.5, 0.5, 8.19564e-008, 0.5}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0.5}, -- NodeBox7
					{0.25, 0.25, -0.5, 0.5, 0.5, 0.5}, -- NodeBox8
				}
			}
		})
		minetest.register_node("aebase:granite_stairs_corner_in", {
			description = "Inside Corner - Granite Stairs",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_stairs_ci_inv.png",
			wield_image = "aebase_granite_stairs_ci_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.5, -0.25, -0.5, 0.5, 1.15484e-007, 0.25}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0.5}, -- NodeBox7
					{-0.5, 0.25, -0.5, 0.5, 0.5, -0.25}, -- NodeBox8
					{-0.25, -0.25, 0.25, 0.5, 1.15484e-007, 0.5}, -- NodeBox9
					{-0.5, 0, -0.5, -0, 0.25, 0}, -- NodeBox10
					{0.25, 0.25, -0.25, 0.5, 0.5, 0.5}, -- NodeBox11
				}
			}
		})
		minetest.register_node("aebase:granite_stairs_corner_out", {
			description = "Outside Corner - Granite Stairs",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_stairs_co_inv.png",
			wield_image = "aebase_granite_stairs_co_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.25, -0.25, -0.5, 0.5, 1.15484e-007, 0.25}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0}, -- NodeBox7
					{0.25, 0.25, -0.5, 0.5, 0.5, -0.25}, -- NodeBox8
				}
			}
		})
		minetest.register_node("aebase:granite_slab", {
			description = "Granite Slab",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, 0, 0.5}, -- NodeBox1
				}
			}
		})
		minetest.register_node("aebase:granite_halfslab", {
			description = "Granite Half-Slab",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
				}
			}
		})
		minetest.register_node("aebase:granite_quarterslab", {
			description = "Granite Quarter-Slab",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, -- NodeBox1
				}
			}
		})
		minetest.register_node("aebase:granite_panel", {
			description = "Granite Panel",
			tiles = {"aebase_granite.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
				}
			}
		})
		-- Granite Brick variants
		minetest.register_node("aebase:granite_brick_stairs", {
			description = "Granite Brick Stairs",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_brick_stairs_inv.png",
			wield_image = "aebase_granite_brick_stairs_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.25, -0.25, -0.5, 0.5, 8.19564e-008, 0.5}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0.5}, -- NodeBox7
					{0.25, 0.25, -0.5, 0.5, 0.5, 0.5}, -- NodeBox8
				}
			}
		})
		minetest.register_node("aebase:granite_brick_stairs_corner_in", {
			description = "Inside Corner - Granite Brick Stairs",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_brick_stairs_ci_inv.png",
			wield_image = "aebase_granite_brick_stairs_ci_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.5, -0.25, -0.5, 0.5, 1.15484e-007, 0.25}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0.5}, -- NodeBox7
					{-0.5, 0.25, -0.5, 0.5, 0.5, -0.25}, -- NodeBox8
					{-0.25, -0.25, 0.25, 0.5, 1.15484e-007, 0.5}, -- NodeBox9
					{-0.5, 0, -0.5, -0, 0.25, 0}, -- NodeBox10
					{0.25, 0.25, -0.25, 0.5, 0.5, 0.5}, -- NodeBox11
				}
			}
		})
		minetest.register_node("aebase:granite_brick_stairs_corner_out", {
			description = "Outside Corner - Granite Brick Stairs",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			inventory_image = "aebase_granite_brick_stairs_co_inv.png",
			wield_image = "aebase_granite_brick_stairs_co_inv.png",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
					{-0.25, -0.25, -0.5, 0.5, 1.15484e-007, 0.25}, -- NodeBox6
					{0, 0, -0.5, 0.5, 0.25, 0}, -- NodeBox7
					{0.25, 0.25, -0.5, 0.5, 0.5, -0.25}, -- NodeBox8
				}
			}
		})
		minetest.register_node("aebase:granite_brick_slab", {
			description = "Granite Brick Slab",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, 0, 0.5}, -- NodeBox1
				}
			}
		})
		minetest.register_node("aebase:granite_brick_halfslab", {
			description = "Granite Brick Half-Slab",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
				}
			}
		})
		minetest.register_node("aebase:granite_brick_quarterslab", {
			description = "Granite Brick Quarter Slab",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, -- NodeBox1
				}
			}
		})
		minetest.register_node("aebase:granite_brick_panel", {
			description = "Granite Brick Panel",
			tiles = {"granite_bricks.png"},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky=3, level=1, not_in_craft_guide=1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
				}
			}
		})
end

-- Demonstration Backdrop (for displaying objects or nodes in a purely black environment)
minetest.register_node("aebase:backdrop_black", {
	description = "A solid backdrop for images",
	tiles = {"aebase_backdrop.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {oddly_breakable_by_hand = 3, not_in_craft_guide = 1},
})
