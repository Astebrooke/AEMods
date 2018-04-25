local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local impElems = {"nature", "air", "earth", "fire", "water", "spirit", "void"} -- These are the different aspects associated with imps

--[[	**************************

		Recipes for non-tool items

		**************************	]]

for _ , itemElem in pairs(impElems) do -- This registers all seven aspects of crystals at once
	minetest.register_craftitem(MOD_NAME .. ":" .. "crystal_" .. itemElem, {
	description = "a crystal infused with the essence of " .. itemElem,
	inventory_image = "imps_crystal_" .. itemElem .. ".png",
	groups = {impessence = 1, not_in_craft_guide = 1},
	})
end
for _ , itemElem in pairs(impElems) do -- This registers all seven aspects of powders at once
	minetest.register_craftitem(MOD_NAME .. ":" .. "powder_" .. itemElem, {
	description = "a powdered crystal infused with the essence of " .. itemElem,
	inventory_image = "imps_powder_" .. itemElem .. ".png",
	groups = {imppowder = 1, not_in_craft_guide = 1},
	})
end

-- Crystal Foci for creating stable rifts
minetest.register_craftitem("imps:foci_empty", {
	description = "an empty focal ring",
	inventory_image = "imps_foci_empty.png",
	groups = {impsfoci},
})

-- imps-related craftitem Upgrades
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
