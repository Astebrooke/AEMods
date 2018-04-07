local MOD_NAME = minetest.get_current_modname() or "imps";
local MOD_PATH = minetest.get_modpath(MOD_NAME);

local VMBuffer = {}


-- Register all the different types of nodes - using a single for-loop

local rifts = {"air", "earth", "fire", "nature", "spirit", "void", "water"}

for _ , riftType in pairs(rifts) do
  minetest.register_node(MOD_NAME .. ":" .. "rift_" .. riftType, {
  	description = riftType .. " Rift",

	rift_type = riftType,
  	drawtype = "plantlike",
    use_texture_alpha = not (riftType == "water"),
  	tiles = {"imps_rift_" .. riftType .. ".png"},  -- todo: more pngs for diff rift types
  	groups = {imps_rift = 1, not_in_craft_guide = 1},
	paramtype = "light",
  	sunlight_propagates = true,
    is_ground_content = false,
  	walkable = false,
  	sounds = default.node_sound_leaves_defaults(),
    diggable = false,
    drop = {},
    light_source = 4, -- faint glow
  	selection_box = {
  		type = "fixed",
  		fixed = {-5 / 16, -7 / 16, -5 / 16,
                5 / 16, 7 / 16, 5 / 16},
  	},
  })
end

-- generation stuff, and rarity settings
-- Rarity is interpreted as 1 in [Rarity] potential nodes locations will contain a rift

local rarityAir = 250
local rarityEarth = 1200 -- generate above stone/drygrass, which is very common, so Rarity needs to be higher
local rarityFire = 750 -- generates only above Lava, so Rarity is lower
local rarityWater = 1000  -- Generates above Water_source nodes, so rarity needs to be pretty high
local rarityNature = 1000 -- generates above grass/drygrass - so rarity needs to be pretty high

local limitOnePerGen = true   -- limits generation to make only 1 node per generated chunk (aka 1 max per call to on_generated)

local function checkChance(rarity)
  local rnd = math.random(1, rarity)
  return rnd == 1
end


local cRiftAir = minetest.get_content_id(MOD_NAME .. ":rift_air")
local cRiftEarth = minetest.get_content_id(MOD_NAME .. ":rift_earth")
local cRiftFire = minetest.get_content_id(MOD_NAME .. ":rift_fire")
local cRiftWater = minetest.get_content_id(MOD_NAME .. ":rift_water")
local cRiftNature = minetest.get_content_id(MOD_NAME .. ":rift_nature")


local cAir = minetest.get_content_id("air")
local cWater = minetest.get_content_id("default:water_source")
local cLava = minetest.get_content_id("default:lava_source")
local cGrass1 = minetest.get_content_id("default:dirt_with_grass")
local cGrass2 = minetest.get_content_id("default:dirt_with_dry_grass")
local cGrass3 = minetest.get_content_id("default:dirt_with_rainforest_litter")
local cStone = minetest.get_content_id("default:stone")
local cSilSand = minetest.get_content_id("default:silver_sand")
local cDesSand = minetest.get_content_id("default:desert_sand")
local cDesStone = minetest.get_content_id("default:desert_stone")
local cSnow = minetest.get_content_id("default:snow")

local vmdata = {}

minetest.register_on_generated(
function(minp, maxp, blockseed)

  if minp.y > 20 then return end  -- hard-coded limit to not generate above this height

  -- These vars are used to limit generating 1 per call - if value set above
  local genAir = true
  local genEarth = true
  local genFire = true
  local genWater = true
  local genNature = true

  -- Get the vmanip mapgen object and the nodes and VoxelArea
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	vm:get_data(vmdata)
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}

  local somethingGenerated = false

  for i in area:iter(
  		minp.x, minp.y, minp.z,
  		maxp.x, maxp.y, maxp.z) do
      local indexAbove = i + 1 * area.ystride

      if indexAbove >= 1 then

        -- Water Rift
        if genWater
          and vmdata[indexAbove] == cAir
          and vmdata[i] == cWater
          and checkChance(rarityWater) then
            vmdata[indexAbove] = cRiftWater
            somethingGenerated = true
            if limitOnePerGen then genWater = false end
        end

        -- Fire Rift
        if genFire
          and vmdata[indexAbove] == cAir
          and (vmdata[i] == cLava or vmdata[i] == cDesSand or vmdata[i] == cDesStone)
          and checkChance(rarityFire) then
            vmdata[indexAbove] = cRiftFire
            somethingGenerated = true
            if limitOnePerGen then genFire = false end
        end

        -- Earth Rift
        if genEarth
          and vmdata[indexAbove] == cAir
          and (vmdata[i] == cStone or vmdata[i] == cGrass2)
          and checkChance(rarityEarth) then
            vmdata[indexAbove] = cRiftEarth
            somethingGenerated = true
            if limitOnePerGen then getEarth = false end
        end

        -- Nature Rift
        if genNature
          and vmdata[indexAbove] == cAir
          and (vmdata[i] == cGrass1 or vmdata[i] == cGrass3)
          and checkChance(rarityNature) then
            vmdata[indexAbove] = cRiftNature
            somethingGenerated = true
            if limitOnePerGen then genNature = false end
        end

		-- Air Rift
        if genAir
          and vmdata[indexAbove] == cAir
          and (vmdata[i] == cSilSand or vmdata[i] == cSnow)
          and checkChance(rarityAir) then
            vmdata[indexAbove] = cRiftAir
            somethingGenerated = true
            if limitOnePerGen then genAir = false end
        end

      end

  	end

    if somethingGenerated then
      -- Return the changed nodes vmdata
    	vm:set_data(vmdata)
      -- the fix for the lights
    	vm:set_lighting{day=0, night=0}
    	vm:calc_lighting()
    	vm:write_to_map()
    end

end)
