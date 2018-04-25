--[[	**************************
		
		Recipes for non-tool items
		
		**************************	]]

-- Fragments to Clusters
minetest.register_craft({
	type = "shapeless",
	output = "aebase:gran_cluster 1",
	recipe = {"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:gran_cluster 2",
	recipe = {"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:gran_cluster 3",
	recipe = {"aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment","aebase:granite_fragment"}
})

minetest.register_craft({
	type = "shapeless",
	output = "aebase:marb_cluster 1",
	recipe = {"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:marb_cluster 2",
	recipe = {"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:marb_cluster 3",
	recipe = {"aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment","aebase:marble_fragment"}
})
-- Clusters to Fragments
minetest.register_craft({
	type = "shapeless",
	output = "aebase:granite_fragment 3",
	recipe = {"aebase:gran_cluster"}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:marble_fragment 3",
	recipe = {"aebase:marb_cluster"}
})

-- Binding Agent Recipes
minetest.register_craft({
	type = "shaped",
	output = "aebase:pestle 1",
	recipe = {
		{"","default:stick"},
		{"default:stone",""},
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "aebase:binding_paste 6",
	recipe = {"group:leaves","group:leaves","group:leaves","aebase:pestle"},
	replacements = {
		{"aebase:pestle","aebase:pestle"}
	},	
})


--[[	**************************
		
		Recipes for tool items
		
		**************************	]]

-- 


--[[	**************************
		
		Recipes for smelting
		
		**************************	]]

-- Paste into glue
minetest.register_craft({
	type = "cooking",
	output = "aebase:binding_agent",
	recipe = "aebase:binding_paste",
})