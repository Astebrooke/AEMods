local MOD_NAME = minetest.get_current_modname() or "imps";

--[[	*************************************************************************

		Function that [does the thing] to rifts, and improves with the quality of
		the Rift Interaction Device. (to be updated here)

		*************************************************************************	]]



--[[	*************************************************************************

		Crystallizer for extracting imps essence

		*************************************************************************	]]

minetest.register_tool("imps:crystallizer1", {
	description = "Experimental Rift Interaction Device", -- Used to craft pedestals and other specially-designed blocks
	inventory_image = "imps_crystallizer.png",
	groups = {imps_RID = 1},
	wield_scale = {x=1.5,y=1.5,z=0.4},

	--[[ The function that determines whether or not the node is a rift and, if it is, crystallizes the rift.]]
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
				local riftLvl = nodeDef.groups["imps_rift"]
					if riftLvl == 1 then
						minetest.remove_node(pos)
						local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
						minetest.add_item(pos, shardStack)
					elseif riftLvl == 2 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_nature") and itemstack.groups["imps_RID"] < 1 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 3 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_air" or "_earth" or "_fire" or "_water") and itemstack.groups["imps_RID"] < 2 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 4 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_spirit") and itemstack.groups["imps_RID"] < 3 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 5 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_void") and itemstack.groups["imps_RID"] < 4 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					else
						minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
					end
			end
		if used then
			itemstack:add_wear(65536 / 249)
		end
	return itemstack
end
})
minetest.register_tool("imps:crystallizer2", {
	description = "Nature-Attuned Rift Interaction Device",
	inventory_image = "imps_crystallizer.png^imps_cry_t1.png",
	groups = {imps_RID = 2},
	wield_scale = {x=1.5,y=1.5,z=0.4},
	-- call crystallization function, adding interaction with Tier 1 Stable Rifts (Nature)
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
				local riftLvl = nodeDef.groups["imps_rift"]
					if riftLvl == 1 then
						minetest.remove_node(pos)
						local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
						minetest.add_item(pos, shardStack)
					elseif riftLvl == 2 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_nature") and itemstack.groups["imps_RID"] < 1 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					else
						minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
					end
			end
		if used then
			itemstack:add_wear(65536 / 249)
		end
	return itemstack
end
})
minetest.register_tool("imps:crystallizer3", {
	description = "Elementally-Attuned Rift Interaction Device",
	inventory_image = "imps_crystallizer.png^imps_cry_t2.png",
	groups = {imps_RID = 3},
	wield_scale = {x=1.5,y=1.5,z=0.4},
	-- call crystallization function, adding interaction with Tier 2 Stable Rifts (Air, Earth, Fire, Water)
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
				local riftLvl = nodeDef.groups["imps_rift"]
					if riftLvl == 1 then
						minetest.remove_node(pos)
						local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
						minetest.add_item(pos, shardStack)
					elseif riftLvl == 2 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_nature") and itemstack.groups["imps_RID"] < 1 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 3 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_air" or "_earth" or "_fire" or "_water") and itemstack.groups["imps_RID"] < 2 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					else
						minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
					end
			end
		if used then
			itemstack:add_wear(65536 / 249)
		end
	return itemstack
end
})
minetest.register_tool("imps:crystallizer4", {
	description = "Spirit-Attuned Rift Interaction Device",
	inventory_image = "imps_crystallizer.png^imps_cry_t3.png",
	groups = {imps_RID = 4},
	wield_scale = {x=1.5,y=1.5,z=0.4},
	-- call crystallization function, adding interaction with Tier 3 Stable Rifts (Spirit)
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
				local riftLvl = nodeDef.groups["imps_rift"]
					if riftLvl == 1 then
						minetest.remove_node(pos)
						local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
						minetest.add_item(pos, shardStack)
					elseif riftLvl == 2 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_nature") and itemstack.groups["imps_RID"] < 1 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 3 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_air" or "_earth" or "_fire" or "_water") and itemstack.groups["imps_RID"] < 2 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 4 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_spirit") and itemstack.groups["imps_RID"] < 3 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					else
						minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
					end
			end
		if used then
			itemstack:add_wear(65536 / 249)
		end
	return itemstack
end
})
minetest.register_tool("imps:crystallizer5", {
	description = "Void-Attuned Rift Interaction Device",
	inventory_image = "imps_crystallizer.png^imps_cry_t4.png",
	groups = {imps_RID = 5},
	wield_scale = {x=1.5,y=1.5,z=0.4},
	-- call crystallization function, adding interaction with Tier 4 Stable Rifts (Void)
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
				local riftLvl = nodeDef.groups["imps_rift"]
					if riftLvl == 1 then
						minetest.remove_node(pos)
						local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count = math.random(1,5) }
						minetest.add_item(pos, shardStack)
					elseif riftLvl == 2 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_nature") and itemstack.groups["imps_RID"] < 1 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 3 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_air" or "_earth" or "_fire" or "_water") and itemstack.groups["imps_RID"] < 2 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 4 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_spirit") and itemstack.groups["imps_RID"] < 3 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					elseif riftLvl == 5 then
						if string.starts(node.name, "imps:stable_") and string.ends(node.name, "_void") and itemstack.groups["imps_RID"] < 4 then
							local shardStack = {name = MOD_NAME .. ":" .. "crystal_" .. nodeDef.rift_type, count - math.random(10,20) }
						else
							minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
						end
					else
						minetest.chat_send_all("Your R.I.D. is not powerful enough to affect this rift")
					end
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
minetest.register_craft({
	type = "shaped",
	output = "imps:crystallizer2 1",
	recipe = {
		{"","imps:crystal_nature"},
		{"imps:crystallizer1","" }
	},
})
minetest.register_craft({
	type = "shaped",
	output = "imps:crystallizer3 1",
	recipe = {
		{"imps:crystal_water",""                  ,"imps:crystal_earth"},
		{""                  ,"imps:crystallizer2",""                  },
		{"imps:crystal_fire" ,""                  ,"imps:crystal_air"  },
	},
})
minetest.register_craft({
	type = "shaped",
	output = "imps:crystallizer4 1",
	recipe = {
		{"","imps:crystal_spirit"},
		{"imps:crystallizer3","" }
	},
})
minetest.register_craft({
	type = "shaped",
	output = "imps:crystallizer5 1",
	recipe = {
		{"","imps:crystal_void"},
		{"imps:crystallizer4","" }
	},
})
