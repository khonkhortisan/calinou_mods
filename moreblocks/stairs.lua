-- Stairs/Slabs/Panels/Microblocks -- code imported from the Stairs+ mod. :)

moreblocks = {}

-- Node will be called <modname>:stair_<subname>

function moreblocks.register_stair(modname, subname, recipeitem, groups, images, description, drop)
		minetest.register_node(modname .. ":stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})

		minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = {cracky=3, not_in_creative_inventory=1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_right_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_right_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_right_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_wall_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_inner", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		sunlight_propagates = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_inner_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_outer", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_outer_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_inner_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_outer_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 8",
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 8",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 2",
		recipe = {
			{modname .. ":stair_" .. subname, modname .. ":stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inverted", modname .. ":stair_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall"},
			{modname .. ":stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom", modname .. ":stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half 1"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half_inverted 1"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half", modname .. ":stair_" .. subname .. "_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half", modname .. ":stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half_inverted 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half_inverted", modname .. ":stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half_inverted 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half_inverted", modname .. ":stair_" .. subname .. "_half_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inner"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_outer"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inner_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_outer_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
			{modname .. ":stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inverted"},
		},
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone",
		recipe = modname .. ":stair_" .. subname .. "_cobble",
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone_wall",
		recipe = modname .. ":stair_" .. subname .. "_cobble_wall",
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone_wall_half",
		recipe = modname .. ":stair_" .. subname .. "_cobble_wall_half",
	})
end

-- Node will be called <modname>slab_<subname>

function moreblocks.register_slab(modname, subname, recipeitem, groups, images, description, drop, paramtype2)
	minetest.register_node(modname .. ":slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop,
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop,
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_inverted",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_three_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_three_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_wall 6",
		recipe = {
			{recipeitem},
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. " 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname},
			{modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname .. "_inverted"},
			{modname .. ":slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname .. "_wall", modname .. ":slab_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname},
			{modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 6",
		recipe = {
			{modname .. ":slab_" .. subname, modname .. ":slab_" .. subname, modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter"},
			{modname .. ":slab_" .. subname .. "_quarter"},
			{modname .. ":slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 6",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter"},
			{modname .. ":slab_" .. subname .. "_three_quarter"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter_wall 6",
		recipe = {
			{modname .. ":slab_" .. subname .. "_wall"},
			{modname .. ":slab_" .. subname .. "_wall"},
			{modname .. ":slab_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter_wall 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter_wall", modname .. ":slab_" .. subname .. "_quarter_wall", modname .. ":slab_" .. subname .. "_quarter_wall"},
		},
	})


	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone",
		recipe = modname .. ":slab_" .. subname .. "_cobble",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_quarter",
		recipe = modname .. ":stair_" .. subname .. "_cobble_quarter",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_three_quarter",
		recipe = modname .. ":slab_" .. subname .. "_cobble_three_quarter",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_wall",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_quarter_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_quarter_wall",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_three_quarter_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_three_quarter_wall",
	})
end

-- Node will be called <modname>panel_<subname>

function moreblocks.register_panel(modname, subname, recipeitem, groups, images, description, drop)
	minetest.register_node(modname .. ":panel_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":panel_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":panel_" .. subname .. "_vertical", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 8",
		recipe = {
			{recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_vertical 8",
		recipe = {
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_top 1",
		recipe = {
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 1",
		recipe = {
			{modname .. ":panel_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_vertical 2",
		recipe = {
			{modname .. ":panel_" .. subname .. "_bottom"},
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 2",
		recipe = {
			{modname .. ":panel_" .. subname .. "_vertical", modname .. ":panel_" .. subname .. "_vertical"},
		},
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_bottom",
		recipe = modname .. ":panel_" .. subname .. "_cobble_bottom",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_top",
		recipe = modname .. ":panel_" .. subname .. "_cobble_top",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_vertical",
		recipe = modname .. ":panel_" .. subname .. "_cobble_vertical",
	})
end

-- Node will be called <modname>micro_<subname>

function moreblocks.register_micro(modname, subname, recipeitem, groups, images, description, drop)
	minetest.register_node(modname .. ":micro_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":micro_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":micro_" .. subname.. "_top")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
	minetest.register_node(modname .. ":micro_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":micro_" .. drop .. "_top",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_bottom 8",
		recipe = {
			{"default:stick"},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_top 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_bottom 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":micro_" .. subname .. "_stone_bottom",
		recipe = modname .. ":micro_" .. subname .. "_cobble_bottom",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":micro_" .. subname .. "_stone_top",
		recipe = modname .. ":micro_" .. subname .. "_cobble_top",
	})
end

-- Nodes will be called <modname>:{stair,slab,panel,micro}_<subname>
function moreblocks.register_stair_and_slab_and_panel_and_micro(modname, subname, recipeitem, groups, images, desc_stair, desc_slab, desc_panel, desc_micro, drop, paramtype2)
	moreblocks.register_stair(modname, subname, recipeitem, groups, images, desc_stair, drop)
	moreblocks.register_slab(modname, subname, recipeitem, groups, images, desc_slab, drop, paramtype2)
	moreblocks.register_panel(modname, subname, recipeitem, groups, images, desc_panel, drop)
	moreblocks.register_micro(modname, subname, recipeitem, groups, images, desc_micro, drop)
end

moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "stonebrick", "moreblocks:stonebrick",
		{cracky=3},
		{"moreblocks_stonebrick.png"},
		"Stone Bricks Stairs",
		"Stone Bricks Slab",
		"Stone Bricks Panel",
		"Stone Bricks Microblock",
		"stonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironstonebrick", "moreblocks:ironstonebrick",
		{cracky=3},
		{"moreblocks_ironstonebrick.png"},
		"Iron Stone Bricks Stairs",
		"Iron Stone Bricks Slab",
		"Iron Stone Bricks Panel",
		"Iron Stone Bricks Microblock",
		"ironstonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "stonesquare", "moreblocks:stonesquare",
		{cracky=3},
		{"moreblocks_stonesquare.png"},
		"Stonesquare Stairs",
		"Stonesquare Slab",
		"Stonesquare Panel",
		"Stonesquare Microblock",
		"stonesquare",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "splitstonesquare", "moreblocks:splitstonesquare",
		{cracky=3},
		{"moreblocks_splitstonesquare_top.png", "moreblocks_splitstonesquare.png"},
		"Split Stonesquare Stairs",
		"Split Stonesquare Slab",
		"Split Stonesquare Panel",
		"Split Stonesquare Microblock",
		"splitstonesquare",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "junglewood", "moreblocks:junglewood",
		{snappy=1, choppy=2, oddly_breakable_by_hand=2,flammable=3},
		{"moreblocks_junglewood.png"},
		"Jungle Wood Stairs",
		"Jungle Wood Slab",
		"Jungle Wood Panel",
		"Jungle Wood Microblock",
		"junglewood",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "circlestonebrick", "moreblocks:circlestonebrick",
		{cracky=3},
		{"moreblocks_circlestonebrick.png"},
		"Circle Stone Brick Stairs",
		"Circle Stone Brick Slab",
		"Cricle Stone Brick Panel",
		"Circle Stone Brick Microblock",
		"circlestonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "plankstone", "moreblocks:plankstone",
		{cracky=3},
		{"moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png^[transformR90", "moreblocks_plankstone.png^[transformR90"},
		"Plankstone Stairs",
		"Plankstone Slab",
		"Plankstone Panel",
		"Plankstone Microblock",
		"plankstone",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "coalchecker", "moreblocks:coalchecker",
		{cracky=3},
		{"moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png^[transformR90", "moreblocks_coalchecker.png^[transformR90"},
		"Coal Checker Stairs",
		"Coal Checker Slab",
		"Coal Checker Panel",
		"Coal Checker Microblock",
		"coalchecker",
		"facedir")

moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironchecker", "moreblocks:ironchecker",
		{cracky=3},
		{"moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png^[transformR90", "moreblocks_ironchecker.png^[transformR90"},
		"Iron Checker Stairs",
		"Iron Checker Slab",
		"Iron Checker Panel",
		"Iron Checker Microblock",
		"ironchecker",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "cactuschecker", "moreblocks:cactuschecker",
		{cracky=3},
		{"moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png^[transformR90", "moreblocks_cactuschecker.png^[transformR90"},
		"Cactus Checker Stairs",
		"Cactus Checker Slab",
		"Cactus Checker Panel",
		"Cactus Checker Microblock",
		"cactuschecker",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "coalstone", "moreblocks:coalstone",
		{cracky=3},
		{"moreblocks_coalstone.png"},
		"Coal Stone Stairs",
		"Coal Stone Slab",
		"Coal Stone Panel",
		"Coal Stone Microblock",
		"coalstone",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironstone", "moreblocks:ironstone",
		{cracky=3},
		{"moreblocks_ironstone.png"},
		"Iron Stone Stairs",
		"Iron Stone Slab",
		"Iron Stone Panel",
		"Iron Stone Microblock",
		"ironstone",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glowglass", "moreblocks:glowglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_glowglass.png"},
		"Glow Glass Stairs",
		"Glow Glass Slab",
		"Glow Glass Panel",
		"Glow Glass Microblock",
		"glowglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "superglowglass", "moreblocks:superglowglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_superglowglass.png"},
		"Super Glow Glass Stairs",
		"Super Glow Glass Slab",
		"Super Glow Glass Panel",
		"Super Glow Glass Microblock",
		"superglowglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glass", "moreblocks:coalglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_coalglass.png"},
		"Coal Glass Stairs",
		"Coal Glass Slab",
		"Coal Glass Panel",
		"Coal Glass Microblock",
		"coalglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glass", "moreblocks:ironglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_ironglass.png"},
		"Iron Glass Stairs",
		"Iron Glass Slab",
		"Iron Glass Panel",
		"Iron Glass Microblock",
		"ironglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "woodtile", "moreblocks:woodtile",
		{snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
		{"moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png^[transformR90", "moreblocks_woodtile.png^[transformR90"},
		"Wooden Tile Stairs",
		"Wooden Tile Slab",
		"Wooden Tile Panel",
		"Wooden Tile Microblock",
		"woodtile",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "woodtile_center", "moreblocks:woodtile_center",
		{snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
		{"moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png^[transformR90", "moreblocks_woodtile_center.png^[transformR90"},
		"Centered Wooden Tile Stairs",
		"Centered Wooden Tile Slab",
		"Centered Wooden Tile Panel",
		"Centered Wooden Tile Microblock",
		"woodtile_center",
		"facedir")

moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "woodtile_full", "moreblocks:woodtile_full",
		{snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
		{"moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png^[transformR90", "moreblocks_woodtile_full.png^[transformR90"},
		"Full Wooden Tile Stairs",
		"Full Wooden Tile Slab",
		"Full Wooden Tile Panel",
		"Full Wooden Tile Microblock",
		"woodtile_full",
		"facedir")

-- Compatibility aliases

minetest.register_alias("moreblocks:stair_stone", "stairsplus:stair_stone")
minetest.register_alias("moreblocks:stair_cobble", "stairsplus:stair_cobble")
minetest.register_alias("moreblocks:stair_wood", "stairsplus:stair_wood")
minetest.register_alias("moreblocks:stair_sandstone", "stairsplus:stair_sandstone")
minetest.register_alias("moreblocks:stair_brick", "stairsplus:stair_brick")
minetest.register_alias("moreblocks:stair_desert_stone", "stairsplus:stair_desert_stone")
minetest.register_alias("moreblocks:stair_glass", "stairsplus:stair_glass")
minetest.register_alias("moreblocks:stair_mossycobble", "stairsplus:stair_mossycobble")
minetest.register_alias("moreblocks:stair_steelblock", "stairsplus:stair_steelblock")

minetest.register_alias("moreblocks:slab_stone", "stairsplus:slab_stone")
minetest.register_alias("moreblocks:slab_cobble", "stairsplus:slab_cobble")
minetest.register_alias("moreblocks:slab_wood", "stairsplus:slab_wood")
minetest.register_alias("moreblocks:slab_sandstone", "stairsplus:slab_sandstone")
minetest.register_alias("moreblocks:slab_brick", "stairsplus:slab_brick")
minetest.register_alias("moreblocks:slab_desert_stone", "stairsplus:slab_desert_stone")
minetest.register_alias("moreblocks:slab_glass", "stairsplus:slab_glass")
minetest.register_alias("moreblocks:slab_mossycobble", "stairsplus:slab_mossycobble")
minetest.register_alias("moreblocks:slab_steelblock", "stairsplus:slab_steelblock")

minetest.register_alias("moreblocks:stair_stone_inverted", "stairsplus:stair_stone_inverted")
minetest.register_alias("moreblocks:stair_cobble_inverted", "stairsplus:stair_cobble_inverted")
minetest.register_alias("moreblocks:stair_wood_inverted", "stairsplus:stair_wood_inverted")
minetest.register_alias("moreblocks:stair_sandstone_inverted", "stairsplus:stair_sandstone_inverted")
minetest.register_alias("moreblocks:stair_brick_inverted", "stairsplus:stair_brick_inverted")
minetest.register_alias("moreblocks:stair_desert_stone_inverted", "stairsplus:stair_desert_stone_inverted")
minetest.register_alias("moreblocks:stair_glass_inverted", "stairsplus:stair_glass_inverted")
minetest.register_alias("moreblocks:stair_mossycobble_inverted", "stairsplus:stair_mossycobble_inverted")
minetest.register_alias("moreblocks:stair_steelblock_inverted", "stairsplus:stair_steelblock_inverted")

minetest.register_alias("moreblocks:slab_stone_inverted", "stairsplus:slab_stone_inverted")
minetest.register_alias("moreblocks:slab_cobble_inverted", "stairsplus:slab_cobble_inverted")
minetest.register_alias("moreblocks:slab_wood_inverted", "stairsplus:slab_wood_inverted")
minetest.register_alias("moreblocks:slab_sandstone_inverted", "stairsplus:slab_sandstone_inverted")
minetest.register_alias("moreblocks:slab_brick_inverted", "stairsplus:slab_brick_inverted")
minetest.register_alias("moreblocks:slab_desert_stone_inverted", "stairsplus:slab_desert_stone_inverted")
minetest.register_alias("moreblocks:slab_glass_inverted", "stairsplus:slab_glass_inverted")
minetest.register_alias("moreblocks:slab_mossycobble_inverted", "stairsplus:slab_mossycobble_inverted")
minetest.register_alias("moreblocks:slab_steelblock_inverted", "stairsplus:slab_steelblock_inverted")
