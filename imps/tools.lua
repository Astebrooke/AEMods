local MOD_NAME = minetest.get_current_modname() or "imps";

--[[	**************************
		
		Tools used in progression
		
		**************************	]]

	

--[[	**************************
		
		Diviner for extracting imps essence
		
		**************************	]]

minetest.register_tool("imps:diviner1", {
	description = "Experimental Rift-Interaction Device", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "aebase_chisel.png^granfrag.png", --"imps_diviner.png", (use this once created)
	
	--[[ The function that determines whether or not the block is a base block for creating the pedestals and,
	if they are, creates the pedestal in place of the original block.]]
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

-- This is just a placeholder recipe for now
minetest.register_craft({
	type = "shapeless",
	output = "imps:diviner1 1",
	recipe = {"aebase:marble_fragment", "imps:infused_steel"},
})
