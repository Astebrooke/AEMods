--[[	**************************
		
				Solid Blocks
		
		**************************	]]
		
-- Worldgen-Only block nodes
minetest.register_node("imps:infused_stone_with_iron",{
	description = "Odd Iron Ore",
	tiles = {"default_stone.png^imps_inf_iron.png"},
	groups = {cracky = 3, imps_infused = 1, not_in_craft_guide = 1},
	drop = "imps:infused_iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

-- Worldgen-Only liquid nodes (currently unused)


-- Speckled Marble nodes
minetest.register_node("imps:starmarble", {
	description = "Star-Engraved Marble",
	tiles = {
		"tilestar.png",
		"tileto.png",
		"tilexo.png",
		"tilexo.png",
		"tilexo.png",
		"tilexo.png"
	},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("imps:stylstarmarble", {
	description = "Fancy Star-Engraved Marble",
	tiles = {
		"tilestar.png",
		"tileto.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png",
		"tilestylized.png"
	},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

--