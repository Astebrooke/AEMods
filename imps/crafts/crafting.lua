local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local impElems = {"nature", "air", "earth", "fire", "water", "spirit", "void"}-- These are the different aspects associated with imps

--[[	**************************

		Recipes for non-tool items

		**************************	]]

-- Infusion/Rifts Crafting
minetest.register_craft({
	type = "shapeless",
	output = "imps:pestle 1",
	recipe = {"aebase:pestle","group:impessence","group:impessence","group:impessence"},
})
minetest.register_craft({
	type = "shapeless",
	output = "imps:binding_paste 1",
	recipe = {"aebase:binding_paste","group:imppowder"},
})
minetest.register_craft({
	type = "shaped",
	output = "imps:foci_empty",
	recipe = {
		{"aebase:marble_fragment","imps:binding_agent"     ,"aebase:marble_fragment"},
		{"group:imppowder"       ,"vessels:glass_fragments","group:imppowder"       },
		{"aebase:marble_fragment","imps:infused_steel"     ,"aebase:marble_fragment"},
	},
})

for _ , itemElem in pairs(impElems) do -- This registers all seven crystal-to-powder recipes at once.
	minetest.register_craft({
		type = "shapeless",
		output = MOD_NAME .. ":" .. "powder_" .. itemElem .. " 3",
		recipe = {"imps:pestle",MOD_NAME .. ":" .. "crystal_" .. itemElem},
		replacements = {
			{"imps:pestle","imps:pestle"}
		}
	})
end
for _ , itemElem in pairs(impElems) do -- This registers all seven aligned focus recipes at once.
	minetest.register_craft({
		type = "shapeless",
		output = MOD_NAME .. ":" .. "foci_" .. itemElem .. " 1",
		recipe = {"group:imps_RID","imps:crystal_" .. itemElem,"imps:foci_empty","imps:binding_agent"},
		replacements = {
			{"imps:crystallizer1","imps:crystallizer1"},
			{"imps:crystallizer2","imps:crystallizer2"},
			{"imps:crystallizer3","imps:crystallizer3"},
			{"imps:crystallizer4","imps:crystallizer4"},
			{"imps:crystallizer5","imps:crystallizer5"},
		}
	})
end

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
