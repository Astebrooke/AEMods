--[[	**************************
		
		Non-tool craft items
		
		**************************	]]

-- Items used to craft the stone nodes necessary for progression
minetest.register_craftitem("aebase:granite_fragment", {
	description = "Fragments of Flecked Granite",
	inventory_image = "granfrag.png",
	stack_max = 360,
})
minetest.register_craftitem("aebase:marble_fragment", {
	description = "Fragments of Speckled Marble",
	inventory_image = "marbfrag.png",
	stack_max = 360,
})
minetest.register_craftitem("aebase:pestle", {
	description = "a Simple Mortar and Pestle",
	inventory_image = "aebase_pestle1.png",
	groups = {aepestle = 1},
	stack_max = 1,
})
minetest.register_craftitem("aebase:binding_paste", {
	description = "Binding Agent Paste",
	inventory_image = "aebase_bindpaste.png",
	stack_max = 100,
})
minetest.register_craftitem("aebase:binding_agent", {
	description = "Binding Agent",
	inventory_image = "aebase_bindagent.png",
	groups = {aebinder = 1},
	stack_max = 100,
})

	
-- Items used for inventory consolidation
minetest.register_craftitem("aebase:gran_cluster", {
	description = "Cluster of Flecked Granite Fragments",
	inventory_image = "granclust.png",
	stack_max = 180,
})
minetest.register_craftitem("aebase:marb_cluster", {
	description = "Cluster of Speckled Marble Fragments",
	inventory_image = "marbclust.png",
	stack_max = 180,
})
