--[[	**************************

				Solid Blocks

		**************************	]]

		local impElems = {"nature", "air", "earth", "fire", "water", "spirit", "void"} -- These are the different aspects associated with imps

-- Worldgen-Only block nodes
minetest.register_node("imps:infused_stone_with_iron",{
	description = "Odd Iron Ore",
	tiles = {"default_stone.png^imps_inf_iron.png"},
	groups = {cracky = 3, imps_infused = 1, not_in_craft_guide = 1},
	drop = "imps:infused_iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

-- Ritual Stones

-- Rift Catalysts
for _ , itemElem in pairs(impElems) do -- This registers all seven aspects of rift catalyst at once
	minetest.register_node("imps:catalyst_" .. itemElem, {
	description = "a crystal catalyst infused with the essence of " .. itemElem,
	inventory_image = "imps_catalyst_" .. itemElem .. ".png",
	groups = {impscats = 1, not_in_craft_guide = 1},
	})
end

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
