minetest.register_node("bridges:clean_trap_glass",{
  description = ("Clean Trap Glass"),
  drawtype = "glasslike_framed_optional",
  tiles = {"default_glass.png", "default_glass_detail.png"},
  paramtype = "light",
  paramtype2 = "glasslikeliquidlevel",
  sunlight_propagates = true,
  walkable = false,
  groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
  sounds = default.node_sound_glass_defaults(),
})
minetest.register_node("bridges:bordered_clean_trap_glass",{
  description = ("Bordered Clean Trap Glass"),
  drawtype = "glasslike_framed_optional",
  tiles = {"default_glass.png"},
  paramtype = "light",
  paramtype2 = "glasslikeliquidlevel",
  sunlight_propagates = true,
  walkable = false,
  groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
  sounds = default.node_sound_glass_defaults(),
})
minetest.register_node("bridges:clean_trap_stone",{
  description = ("Clean Trap Stone"),
  tiles = {"default_stone.png"},
  walkable = false,
  groups = {cracky = 3},
  sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("bridges:trap_rack",{
  description = ("Suspicious Netherrack"),
  tiles = {"nether_rack.png"},
  walkable = false,
  groups = {cracky = 3},
  sounds = default.node_sound_stone_defaults(),
})


-- moreblocks compatibility
if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("bridges", "clean_trap_glass", "bridges:clean_trap_glass", {
		description = "Clean Trap Glass",
    drawtype = "glasslike_framed_optional",
    tiles = {"default_glass.png"},
    groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
    sounds = default.node_sound_glass_defaults(),
  })
  stairsplus:register_all("bridges", "bordered_clean_trap_glass", "bridges:bordered_clean_trap_glass", {
		description = "Bordered Clean Trap Glass",
    drawtype = "glasslike_framed_optional",
    tiles = {"default_glass.png"},
    groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
    sounds = default.node_sound_glass_defaults(),
  })
  stairsplus:register_all("bridges", "clean_trap_stone", "bridges:clean_trap_stone", {
		description = "Clean Trap Stone",
    tiles = {"default_stone.png"},
    walkable = false,
    groups = {cracky = 3},
    sounds = default.node_sound_stone_defaults(),
  })
  stairsplus:register_all("bridges", "trap_rack", "bridges:trap_rack", {
		description = "Suspicious Netherrack",
    tiles = {"nether_rack.png"},
    walkable = false,
    groups = {cracky = 3},
    sounds = default.node_sound_stone_defaults(),
  })
end
