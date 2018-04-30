minetest.register_craft({
  type = "shapeless",
  output = "bridges:clean_trap_glass",
  recipe = {"moreblocks:sweeper","moreblocks:trap_glass"},
})
minetest.register_craft({
  type = "shaped",
  output = "bridges:bordered_clean_trap_glass",
  recipe = {
    {""             ,"default:stick"           ,""             },
    {"default:stick","bridges:clean_trap_glass","default:stick"},
    {""             ,"default:stick"           ,""             },
  },
})
minetest.register_craft({
	output = "bridges:clean_trap_stone",
	type = "shapeless",
	recipe = {"moreblocks:sweeper","moreblocks:trap_stone"},
})
minetest.register_craft({
	output = "bridges:trap_rack",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "nether:rack"},
})
