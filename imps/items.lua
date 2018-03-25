--[[	**************************
		
		Recipes for non-tool items
		
		**************************	]]

-- These are the different aspects associated with imps, and the essences required to activate their powers
minetest.register_craftitem("imps:crystal_air", {
	description = "a cloudy crystal", -- Essence used for air recipes and rituals
	inventory_image = "orb_air.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_earth", {
	description = "an earthen crystal", -- Essence used for earth recipes and rituals
	inventory_image = "orb_earth.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_fire", {
	description = "a blazing crystal", -- Essence used for fire recipes and rituals
	inventory_image = "orb_fire.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_nature", {
	description = "a lively crystal", -- Essence used for recipes and rituals of nature
	inventory_image = "orb_nature.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_void", {
	description = "an extremely empty crystal", -- Essence used for recipes and rituals of the Void
	inventory_image = "orb_void.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_spirit", {
	description = "an ephemeral crystal", -- Essence used for spirit recipes and rituals
	inventory_image = "orb_spirit.png",
	groups = {impessence = 1},
})
minetest.register_craftitem("imps:crystal_water", {
	description = "a shimmering crystal", -- Essence used for water recipes and rituals
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
minetest.register_craftitem("imps:infused_iron_lump", {
	description = "Odd Iron Lump",
	inventory_image = "default_iron_lump.png^bubble.png",		-- ^imps_infused_ore.png (replace ^bubble.png when this exists)
	stack_max = 99,
})

