--[[	**************************
		
		Chisel for nodes used in AE mods
		
		**************************	]]

minetest.register_tool("aebase:chisel", {
	description = "Otherworldly Chisel", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "aebase_chisel.png",
	
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
	
	if minetest.get_modpath("moreblocks") then
		if node.name == "imps:starmarble" then
			minetest.swap_node(pos, {name = "imps:base_pedestal"})
			used = true
		elseif node.name == "imps:stylstarmarble" then
			minetest.swap_node(pos, {name = "imps:star_pedestal"})
			used = true
		end
	else
		if node.name == "aebase:granite" then
			minetest.swap_node(pos, {name = "aebase:granite_stairs_corner_in"})
			used = true
		elseif node.name == "aebase:granite_stairs_corner_in" then
			minetest.swap_node(pos, {name = "aebase:granite_stairs"})
			used = true
		elseif node.name == "aebase:granite_stairs" then
			minetest.swap_node(pos, {name = "aebase:granite_stairs_corner_out"})
			used = true
		elseif node.name == "aebase:granite_stairs_corner_out" then
			minetest.swap_node(pos, {name = "aebase:granite_halfslab"})
			used = true
		elseif node.name == "aebase:granite_bricks" then
			minetest.swap_node(pos, {name = "aebase:granite_brick_stairs_corner_in"})
			used = true
		elseif node.name == "aebase:granite_brick_stairs_corner_in" then
			minetest.swap_node(pos, {name = "aebase:granite_brick_stairs"})
			used = true
		elseif node.name == "aebase:granite_brick_stairs" then
			minetest.swap_node(pos, {name = "aebase:granite_brick_stairs_corner_out"})
			used = true
		elseif node.name == "aebase:granite_brick_stairs_corner_out" then
			minetest.swap_node(pos, {name = "aebase:granite_brick_halfslab"})
			used = true
		elseif node.name == "imps:starmarble" then
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
	type = "shapeless",
	output = "aebase:chisel 1",
	recipe = {"aebase:marble_fragment", "default:steel_ingot"},
})
