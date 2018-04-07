--[[	**************************
		
		Tools for Quality of Life
		
		**************************	]]
		
-- Sledgehammer
minetest.register_tool("aetools:sledge", {
	description = "a rock crushing hammer",
	inventory_image = "aetools_sledge.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groups = {aesledge = 1},
		groupcaps = {
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=75, maxlevel=2},
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.80}, uses=75, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
})
-- Theoretically allows sledge to affect drops, not yet functioning
local old_handle_node_drops = minetest.handle_node_drops
local crushRes = {}
			crushRes["default:cobble"] = "default:gravel"
			crushRes["default:gravel"] = "default:sand"
			crushRes["default:stone_with_iron"] = "default:gravel"
			crushRes["default:desert_cobble"] = "default:desert_sand"
			crushRes["default:sandstone"] = "default:sand"
			crushRes["default:desert_sandstone"] = "default:desert_sand"
function minetest.handle_node_drops(pos, drops, digger)
    local tool = digger:get_wielded_item():get_name()
    if tool == ('aetools:sledge')--[[ or (tool == 'someother:tool')]] then
        local newdrops = { }
		for _, drop in ipairs(drops) do
            local stack = ItemStack(drop)
			local product = crushRes[drop.name]
			if product then
				local stack = ItemStack({name = product, count = drop.count})
				table.insert(crushRes, stack)
			else
                table.insert(newdrops, stack)
            end
        end
        drops = newdrops
    end
    return old_handle_node_drops(pos, drops, digger)
end

-- Sickle (farms 3x3 planted items on right-click, to avoid digging the farmland)


-- Builder's Wand 
	--[[checks material of pointed_thing.under and, if the node.name are in the inventory, builds one row in the direction of the face clicked,
		up to 9 per click in a spiral from the center, so if in a square it builds a square, if in a line it skips everything that isn't the same
		material and makes another circuit, up to 4 blocks in each direction.
		# = focal point X = same material, O = not same material
		
		O O O O O O O O O
		X O O O O O O O O
		O X O O O O O O O			O O O O O
		O O X O O O O O O			O X X X O
		O O O X # X X X X	or		O X # X O
		O O O O O O O O O			O X X X O
		O O O O O O O O O			O O O O O
		O O O O O O O O O
		O O O O O O O O O
	  ]]

-- 