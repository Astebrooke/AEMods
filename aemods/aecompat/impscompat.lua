local impsMod = minetest.get_modpath("imps")

if impsMod then
  --dofile(impsMod .. "/" .. "init.lua")
  if minetest.get_modpath("imps") then -- Update crafting recipes
    -- Replacement Recipes
    minetest.register_craft({
    	type = "shapeless",
    	output = "aebase:binding_paste 6",
    	recipe = {"group:leaves","group:leaves","group:leaves","group:aepestle"},
    	replacements = {
    		{"aebase:pestle","aebase:pestle"},
    		{"imps:pestle","imps:pestle"},
    	},
    })
  end
end
