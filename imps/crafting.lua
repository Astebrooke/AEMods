--[[	**************************
		
		Recipes for non-tool items
		
		**************************	]]

-- Infusion Crafting
minetest.register_craft({
	type = "shapeless",
	output = "imps:pestle 1",
	recipe = {"aebase:pestle","group:impessence","group:impessence","group:impessence"},
})
minetest.register_craft({
	type = "shapeless",
	output = "imps:binding_paste 1",
	recipe = {"aebase:binding_paste","group:impessence"},
})

-- Replacement Recipes
minetest.register_craft({
	type = "shapeless",
	output = "aebase:binding_paste 1",
	recipe = {"group:leaves","group:leaves","group:leaves","group:aepestle"},
	replacements = {
		{"aebase:pestle","aebase:pestle"},
		{"imps:pestle","imps:pestle"},
	},	
})

--[[	**************************
		
		Recipes for tool items
		
		**************************	]]

-- Tools used for interaction with imps


--[[	**************************
		
		Recipes for smelting
		
		**************************	]]

-- Replacement Smelting Recipes
minetest.register_craft({
	type = "cooking",
	output = "imps:binding_agent",
	recipe = "imps:binding_paste",
})

minetest.register_craft({
	type = "cooking",
	output = "imps:infused_steel",
	recipe = "imps:infused_iron_lump",
})