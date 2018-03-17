--[[	**************************
		
		Chisel for imps-related nodes
		
		**************************	]]

minetest.register_tool("imps:chisel", {
	description = "Otherworldly Chisel", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "imp_chisel.png",
	
	--[[ The function that determines whether or not the block is a base block for creating the pedestals and,
	if they are, creates the pedestal in place of the original block.]]
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

	if node.name == "imps:starmarble" then
		minetest.swap_node(pos, {name = "imps:base_pedestal"})
		used = true
	elseif node.name == "imps:stylstarmarble" then
		minetest.swap_node(pos, {name = "imps:star_pedestal"})
		used = true
	end
	
	if used then
		itemstack:add_wear(65536 / 149)
	end
		return itemstack
	end
})

--[[	**************************
		
		Diviner for extracting imps essence
		
		**************************	]]

