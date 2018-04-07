local MOD_NAME = minetest.get_current_modname() or "imps";

--[[	**************************

		Tools used in progression

		**************************	]]



--[[	**************************

		Diviner for extracting imps essence

		**************************	]]

minetest.register_tool("imps:crystallizer1", {
	description = "Experimental Rift-Interaction Device", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "imps_crystallizer.png",
	wield_scale = {x=1.5,y=1.5,z=0.4},

	--[[ The function that determines whether or not the node is a rift and,
	if it is, crystallizes the rift.]]
	on_place = function(itemstack, user, pointed_thing)

	if not pointed_thing.under then
		return itemstack
	end

	local pos = pointed_thing.under
	local node = minetest.get_node(pos)

	if not node then
		return itemstack
	end

	local used = false

	local nodeDef = minetest.registered_nodes[node.name]

    if nodeDef.groups["imps_rift"] then
       minetest.remove_node(pos)
       local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
       minetest.add_item(pos, shardStack)
	end


	if used then
		itemstack:add_wear(65536 / 249)
	end
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "imps:crystallizer1 1",
	recipe = {
		{"imps:infused_steel",""                    ,"imps:infused_steel"},
		{""                  ,"default:mese_crystal",""                  },
		{""                  ,"aebase:marble_fragment",""                  },
	},
})
