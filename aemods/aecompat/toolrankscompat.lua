local toolRk = minetest.get_modpath("toolranks")

if toolRk then
  dofile(toolRk .. "/" .. "init.lua")
  if minetest.get_modpath("magmatools") then
    minetest.override_item("magmatools:pick_magma", {
      original_description = "Magma Pickaxe",
      description = toolranks.create_description("Magma Pickaxe", 0, 1),
      after_use = toolranks.new_afteruse})
    minetest.override_item("magmatools:axe_magma", {
      original_description = "Magma Axe",
      description = toolranks.create_description("Magma Axe", 0, 1),
      after_use = toolranks.new_afteruse})
    minetest.override_item("magmatools:shovel_magma", {
      original_description = "Magma Shovel",
      description = toolranks.create_description("Magma Shovel", 0, 1),
      after_use = toolranks.new_afteruse})
  end
  if minetest.get_modpath("icetools") then
    minetest.override_item("icetools:pick_ice", {
      original_description = "Ice Pickaxe",
      description = toolranks.create_description("Ice Pickaxe", 0, 1),
      after_use = toolranks.new_afteruse})
    minetest.override_item("icetools:axe_ice", {
      original_description = "Ice Axe",
      description = toolranks.create_description("Ice Axe", 0, 1),
      after_use = toolranks.new_afteruse})
    minetest.override_item("icetools:shovel_ice", {
      original_description = "Ice Shovel",
      description = toolranks.create_description("Ice Shovel", 0, 1),
      after_use = toolranks.new_afteruse})
  end
end
