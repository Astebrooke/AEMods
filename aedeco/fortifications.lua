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
	output = "aedeco:portcullis_receptacle 5",
	recipe = {
		{"default:stonebrick","default:stonebrick","default:stonebrick"},
		{"default:stonebrick",""                  ,"default:stonebrick"},
		{"default:stonebrick","default:stonebrick","default:stonebrick"},
	},
})