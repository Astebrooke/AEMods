-- GENERATED CODE
-- Node Box Editor, version 0.9.0
-- Namespace: test

minetest.register_node("test:star_pedestal", {
	tiles = {
		"imp_tilestar.png",
		"imp_tileto.png",
		"imp_tilexo.png",
		"imp_tilexo.png",
		"imp_tilexo.png",
		"imp_tilexo.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- pane_top
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375}, -- pane_d1
			{-0.3125, 0.3125, -0.3125, 0.3125, 0.375, 0.3125}, -- pane_d2
			{-0.25, 0.25, -0.25, 0.25, 0.3125, 0.25}, -- pane_d3
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.25, 0.1875}, -- pane_col
			{-0.3125, -0.375, -0.3125, 0.3125, -0.3125, 0.3125}, -- pane_b1
			{-0.375, -0.4375, -0.375, 0.375, -0.375, 0.375}, -- pane_b2
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- pane_b3
		}
	}
})

