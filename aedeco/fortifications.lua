minetest.register_node("aedeco:arrow_slit", {
	description = "Arrow Slit",
	drawtype = "mesh",
	mesh = "arrow_slit.obj",
	tiles = {
		"default_stone_brick.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:arrow_slit 1",
	recipe = {
		{"default:stonebrick","default:stonebrick","default:stonebrick"},
		{"default:stonebrick","                  ","default:stonebrick"},
		{"default:stonebrick","                  ","default:stonebrick"},
	},
})
minetest.register_node("aedeco:portcullis_receptacle", {
	description = "Portcullis Receptacle",
	drawtype = "mesh",
	mesh = "portcul_recep.obj",
	tiles = {
		"default_stone_brick.png",
		"default_silver_sandstone_block.png",
		"default_junglewood.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node,
})
minetest.register_craft({
	type = "shaped",
	output = "aedeco:portcullis_receptacle 1",
	recipe = {
		{"default:stonebrick","default:stonebrick","default:stonebrick"},
		{"default:stonebrick","                  ","default:stonebrick"},
		{"default:stonebrick","default:stonebrick","default:stonebrick"},
	},
})