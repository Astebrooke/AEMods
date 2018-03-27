-- Flecked Granite recipes
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite 1",
	recipe = {
		{"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"},
		{"aebase:granite_fragment","group:aebinder"         ,"aebase:granite_fragment"},
		{"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"},
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:granite 1",
	recipe = {"aebase:granite_slab","aebase:granite_slab"},
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_slab 6",
	recipe = {
		{"aebase:granite","aebase:granite","aebase:granite"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_halfslab 4",
	recipe = {
		{"aebase:granite_slab","aebase:granite_slab"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_quarterslab 4",
	recipe = {
		{"aebase:granite_halfslab","aebase:granite_halfslab"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_panel 4",
	recipe = {
		{"aebase:granite_quarterslab","aebase:granite_quarterslab"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_bricks 4",
	recipe = {
		{"aebase:granite","aebase:granite"},
		{"aebase:granite","aebase:granite"},
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:granite_bricks 1",
	recipe = {"aebase:granite_brick_slab","aebase:granite_brick_slab"},
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_brick_slab 6",
	recipe = {
		{"aebase:granite_bricks","aebase:granite_bricks","aebase:granite_bricks"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_brick_halfslab 4",
	recipe = {
		{"aebase:granite_brick_slab","aebase:granite_brick_slab"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_brick_quarterslab 4",
	recipe = {
		{"aebase:granite_brick_halfslab","aebase:granite_brick_halfslab"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_brick_panel 4",
	recipe = {
		{"aebase:granite_brick_quarterslab","aebase:granite_brick_quarterslab"},
	}
})

-- Speckled Marble recipes
minetest.register_craft({
	type = "shaped",
	output = "aebase:marble 1",
	recipe = {
		{"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"},
		{"aebase:marble_fragment","group:aebinder"        ,"aebase:marble_fragment"},
		{"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"},
	}
})
