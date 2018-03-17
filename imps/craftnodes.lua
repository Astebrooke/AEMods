-- Speckled Marble recipes
minetest.register_craft({
	type = "shaped",
	output = "imps:starmarble 1",
	recipe = {
		{"aebase:marble","aebase:marble"},
		{"aebase:marble","aebase:marble"},
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "imps:stylstarmarble 1",
	recipe = {"imps:starmarble","imps:chisel"},
	replacements = {
		{"imps:chisel","imps:chisel"},
	}
})
