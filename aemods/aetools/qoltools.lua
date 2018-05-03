--[[	**************************

		Tools for Quality of Life

		**************************	]]

-- Allows tools to affect drops
local old_handle_node_drops = minetest.handle_node_drops
local crushRes = {}
			crushRes["default:cobble"] = "default:gravel"
			crushRes["default:gravel"] = "default:sand"
			crushRes["default:desert_cobble"] = "default:desert_sand"
			crushRes["default:sandstone"] = "default:sand"
			crushRes["default:desert_sandstone"] = "default:desert_sand"
local trowel_nodes = {}
			trowel_nodes["default:dirt_with_grass"] = true
			trowel_nodes["default:dirt_with_dry_grass"] = true
			trowel_nodes["default:dirt_with_snow"] = true
			trowel_nodes["default:dirt_with_rainforest_litter"] = true
			trowel_nodes["farming:soil"] = true
			trowel_nodes["farming:soil_wet"] = true

function minetest.handle_node_drops(pos, drops, digger)
  local tool = digger:get_wielded_item():get_name()
  if tool == 'aetools:sledge'--[[ or (tool == 'someother:tool')]] then
    local newdrops = { }
		for _, drop in ipairs(drops) do
      local stack = ItemStack(drop)
			local product = crushRes[stack:get_name()]
			if product then
				local stack2 = ItemStack({name = product, count = stack:get_count()})
				table.insert(newdrops, stack2)
			else
        table.insert(newdrops, stack)
      end
  	end
  	drops = newdrops
	elseif tool == 'aetools:trowel' then
		local node_name = minetest.get_node(pos).name
		if trowel_nodes[node_name] then
			drops = { {name = node_name, count = 1} }
		end
	end
  return old_handle_node_drops(pos, drops, digger)
end


-- Sledgehammer
minetest.register_tool("aetools:sledge", {
	description = "rock crushing hammer",
	inventory_image = "aetools_sledge.png",
	wield_scale = {x = 2, y = 2, z = 0.75},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groupcaps = {
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=75, maxlevel=2},
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.80}, uses=75, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	type = "shaped",
	output = "aetools:sledge",
	recipe = {
		{"","default:steel_ingot"             ,""},
		{"","default:stick","default:steel_ingot"},
		{"default:stick"                   ,"",""},
	},
})
-- Trowel (used to carefully dig up special dirt, )
minetest.register_tool("aetools:trowel", {
	description = "trowel for careful gardening",
	inventory_image = "aetools_trowel.png",
	wield_scale = {x = 2, y = 1.5, z = 0.75},
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {times={[1]=4.00, [2]=2.10, [3]=1.50}, uses=65, maxlevel=2},
		},
		damage_groups = {fleshy=1},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	type = "shaped",
	output = "aetools:trowel 1",
	recipe = {
		{""      ,"default:stick"},
		{"default:steel_ingot",""},
	},
})

-- Chisel (modifies shapes of other nodes)
minetest.register_tool("aetools:chisel", {
	description = "Otherworldly Chisel", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "aetools_chisel.png",

	--[[ The function that determines whether or not the targeted node is a viable target for changing
			 into a new form.]]
	on_use = function(itemstack, user, pointed_thing)

	if not pointed_thing.under then
		return itemstack
	end

	local pos = pointed_thing.under
	local node = minetest.get_node(pos)

	if not node then
		return itemstack
	end

	local used = false

	if node.name == "aebase:marble" then
			minetest.swap_node(pos, {name = "aedeco:blankped"})
			used = true
	end

	if minetest.get_modpath("imps") then
		if node.name == "imps:starmarble" then
			minetest.swap_node(pos, {name = "imps:base_pedestal"})
			used = true
		elseif node.name == "imps:stylstarmarble" then
			minetest.swap_node(pos, {name = "imps:star_pedestal"})
			used = true
		end
	end

	if used then
		itemstack:add_wear(65536 / 249)
	end
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "aetools:chisel 1",
	recipe = {
		{""    ,"default:steel_ingot"},
		{"aebase:marble_fragment", ""},
	},
})

-- Sickle (farms 3x3 planted items on right-click, to avoid digging the farmland)


-- Builder's Wand
	--[[checks material of pointed_thing.under and, if the node.name are in the inventory, builds one row in the direction of the face clicked,
		up to 9 per click in a spiral from the center, so if in a square it builds a square, if in a line it skips everything that isn't the same
		material and makes another circuit, up to 4 blocks in each direction.
		# = focal point X = same material, O = not same material

		O O O O O O O O O
		X O O O O O O O O
		O X O O O O O O O				O O O O O
		O O X O O O O O O				O X X X O
		O O O X # X X X X	or		O X # X O
		O O O O O O O O O		  	O X X X O
		O O O O O O O O O			  O O O O O
		O O O O O O O O O
		O O O O O O O O O
	  ]]

--
