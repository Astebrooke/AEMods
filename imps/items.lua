--[[	**************************
		
		Recipes for non-tool items
		
		**************************	]]

-- These are the different aspects associated with imps, and the essences required to activate their powers
minetest.register_craftitem("imps:air_orb", {
	description = "Wispy IMP Essence", -- Essence used to call upon air imps
	inventory_image = "orb_air.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:earth_orb", {
	description = "Sturdy IMP Essence", -- Essence used to call upon earth imps
	inventory_image = "orb_earth.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:fire_orb", {
	description = "Enflamed IMP Essence", -- Essence used to call upon fire imps
	inventory_image = "orb_fire.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:nature_orb", {
	description = "Verdant IMP Essence", -- Essence used to call upon imps of nature
	inventory_image = "orb_nature.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:void_orb", {
	description = "Voracious IMP Essence", -- Essence used to call upon imps of the Void
	inventory_image = "orb_void.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:spirit_orb", {
	description = "Ephemeral IMP Essence", -- Essence used to call upon spirit imps
	inventory_image = "orb_spirit.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:water_orb", {
	description = "Watery IMP Essence", -- Essence used to call upon water imps
	inventory_image = "orb_water.png",
	groups = {impessence = 1},
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

--[[	**************************
		
		Recipes for tool items
		
		**************************	]]

