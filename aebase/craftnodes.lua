-- Flecked Granite recipes
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite 1",
	recipe = {
		{"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"},
		{"aebase:granite_fragment",    "group:aebinder"     ,"aebase:granite_fragment"},
		{"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_stairs 6",
	recipe = {
		{"aebase:granite",""            ,""            },
		{"aebase:granite","aebase:granite",""            },
		{"aebase:granite","aebase:granite","aebase:granite"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_stairs 6",
	recipe = {
		{""            ,""            ,"aebase:granite"},
		{""            ,"aebase:granite","aebase:granite"},
		{"aebase:granite","aebase:granite","aebase:granite"},
	}
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
	output = "aebase:granite_bricks 4",
	recipe = {
		{"aebase:granite","aebase:granite"},
		{"aebase:granite","aebase:granite"},
	}
})
minetest.register_craft({
	type = "shaped",
	output = "aebase:granite_brick_slab 6",
	recipe = {
		{"aebase:granite_brick","aebase:granite_brick","aebase:granite_brick"},
	}
})

-- Speckled Marble recipes
minetest.register_craft({
	type = "shaped",
	output = "aebase:marble 1",
	recipe = {
		{"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"},
		{"aebase:marble_fragment",    "group:aebinder"    ,"aebase:marble_fragment"},
		{"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"},
	}
})
