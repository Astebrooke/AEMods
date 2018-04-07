--[[	**************************
		
		Recipes for non-tool items
		
		**************************	]]

-- These are the different aspects associated with imps, and the essences required to activate their powers
minetest.register_craftitem("imps:crystal_air", {
	description = "a crystal infused with the essence of air", -- Essence used for air recipes and rituals
	inventory_image = "imps_crystal_air.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_earth", {
	description = "a crystal infused with the essence of earth", -- Essence used for earth recipes and rituals
	inventory_image = "imps_crystal_earth.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_fire", {
	description = "a crystal infused with the essence of fire", -- Essence used for fire recipes and rituals
	inventory_image = "imps_crystal_fire.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_nature", {
	description = "a crystal infused with the essence of nature", -- Essence used for recipes and rituals of nature
	inventory_image = "imps_crystal_nature.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_void", {
	description = "a crystal infused with the essence of the void", -- Essence used for recipes and rituals of the Void
	inventory_image = "imps_crystal_void.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_spirit", {
	description = "a crystal infused with the essence of the spirit", -- Essence used for spirit recipes and rituals
	inventory_image = "imps_crystal_spirit.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})
minetest.register_craftitem("imps:crystal_water", {
	description = "a crystal infused with the essence of water", -- Essence used for water recipes and rituals
	inventory_image = "imps_crystal_water.png",
	groups = {impessence = 1, not_in_craft_guide = 1},
})


-- Imp-related craftitem Upgrades
minetest.register_craftitem("imps:pestle", {
	description = "Infused Mortar & Pestle",
	inventory_image = "imps_pestle.png",
	groups = {aepestle = 1},
	stack_max = 1,
})
minetest.register_craftitem("imps:binding_paste", {
	description = "Infused Binding Agent Paste",
	inventory_image = "imps_bindpaste.png",
	stack_max = 100,
})
minetest.register_craftitem("imps:binding_agent", {
	description = "Infused Binding Paste",
	inventory_image = "imps_bindagent.png",
	groups = {aebinder = 1},
	stack_max = 100,
})
minetest.register_craftitem("imps:infused_iron_lump", {
	description = "Odd Iron Lump",
	inventory_image = "default_iron_lump.png^imps_inf_ore.png",
	groups = {not_in_craft_guide = 1},
})

minetest.register_craftitem("imps:infused_steel", {
	description = "an otherworldly steel",
	inventory_image = "default_steel_ingot.png^imps_inf_ingot.png",
})