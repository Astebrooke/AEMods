local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local impElems = {"nature", "air", "earth", "fire", "water", "spirit", "void"}-- These are the different aspects associated with imps

local pedestal_cbox = { -- Collision boxes for pedestals
	type = "fixed",
	fixed = {
		{ -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
	}
}

-- This is a decorative pedestal that isn't used for rituals, but is crafted with an empty focus to make a star pedestal
minetest.register_node("imps:base_pedestal", {
	description = "Star Marble Pedestal",
	drawtype = "mesh",
	mesh = "imps_pedestal.obj",
	tiles = {
		"tilestar.png",
		"tilestylized.png",
		"tilexo.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1, not_in_craft_guide = 1},
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node,
})

-- This is the pedestal used to create stable rifts by placing an aspect-aligned focus above and activating with the RID
minetest.register_node("imps:star_pedestal", {
	drawtype = "mesh",
	mesh = "imps_aligned_pedestal.obj",
	tiles = {
		"tilestar.png",
		"tilestylized.png",
		"tileto.png",
	},
	groups = {cracky = 1, not_in_craft_guide = 1},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node,
})

-- These are the seven aspect-aligned pedestals that are generated upon opening a stable rift
for _ , pedElem in pairs(impElems) do -- This registers all seven crystal-to-powder recipes at once.
	minetest.register_node(MOD_NAME .. ":" .. pedElem .. "_pedestal", {
		description = "an " .. pedElem .. " aligned pedestal",
		drawtype = "mesh",
		mesh = "imps_aligned_pedestal.obj",
		tiles = {
			"tilestar_" .. pedElem .. ".png",
			"tilestylized.png",
			"tileto.png"
		},
		groups = {cracky = 1, not_in_craft_guide = 1},
		paramtype = "light",
		paramtype2 = "facedir",
		sounds = default.node_sound_stone_defaults(),
		on_place = minetest.rotate_node,
	})
end


-- This entry left in just in case someone wants the nodebox for something.
-- minetest.register_node("imps:original_pedestal", {
-- 	tiles = {
-- 		"tilestar.png",
-- 		"tileto.png",
-- 		"tilestylized.png",
-- 		"tilestylized.png",
-- 		"tilestylized.png",
-- 		"tilestylized.png"
-- 	},
-- 	groups = {cracky = 1, not_in_craft_guide = 1},
-- 	drawtype = "nodebox",
-- 	paramtype = "light",
-- 	sounds = default.node_sound_stone_defaults(),
-- 	node_box = {
-- 		type = "fixed",
-- 		fixed = {
-- 			{0.125, 0.4375, 0.125, 0.5, 0.5, 0.5}, -- top_corner1
-- 			{0.25, 0.4375, -0.125, 0.5, 0.5, 0.125}, -- top_line1
-- 			{0.125, 0.4375, -0.5, 0.5, 0.5, -0.125}, -- top_corner2
-- 			{-0.125, 0.4375, -0.5, 0.125, 0.5, -0.25}, -- top_line2
-- 			{-0.5, 0.4375, -0.5, -0.125, 0.5, -0.125}, -- top_corner3
-- 			{-0.5, 0.4375, -0.125, -0.25, 0.5, 0.125}, -- top_line3
-- 			{-0.5, 0.4375, 0.125, -0.125, 0.5, 0.5}, -- top_corner4
-- 			{-0.125, 0.4375, 0.25, 0.125, 0.5, 0.5}, -- top_line4
-- 			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, -0.125}, -- bowl_line1
-- 			{-0.4375, 0.375, 0.125, 0.4375, 0.4375, 0.4375}, -- bowl_line2
-- 			{0.125, 0.375, -0.125, 0.4375, 0.4375, 0.125}, -- bowl_line3
-- 			{-0.4375, 0.375, -0.125, -0.125, 0.4375, 0.125}, -- bowl_line4
-- 			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375}, -- bowl_bottom
-- 			{-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}, -- column_base
-- 			{-0.125, -0.3125, -0.25, 0.125, 0.3125, 0.25}, -- column_panel1
-- 			{-0.25, -0.3125, -0.125, 0.25, 0.3125, 0.125}, -- column_panel2
-- 			{-0.3125, -0.375, -0.3125, 0.3125, -0.3125, 0.3125}, -- column_base1
-- 			{-0.375, -0.4375, -0.375, 0.375, -0.375, 0.375}, -- column_base2
-- 			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- pedestal_base
-- 		}
-- 	}
-- })
