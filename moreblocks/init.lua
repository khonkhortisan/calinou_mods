dofile(minetest.get_modpath("moreblocks").."/_config.txt")

dofile(minetest.get_modpath("moreblocks").."/redefinitions.lua")
dofile(minetest.get_modpath("moreblocks").."/crafting.lua")
dofile(minetest.get_modpath("moreblocks").."/aliases.lua")
dofile(minetest.get_modpath("moreblocks").."/stairs.lua")

print("[moreblocks] loaded.")

--[[
****
More Blocks
by Calinou
Licensed under the zlib/libpng license for code and CC BY-SA 3.0 Unported for textures, see LICENSE.txt for info.
****
--]]

-- Blocks

minetest.register_node("moreblocks:junglewood", {
	description = "Jungle Wooden Planks",
	tiles = {"moreblocks_junglewood.png"},
	is_ground_content = true,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile", {
	description = "Wooden Tile",
	tiles = {"moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png^[transformR90", "moreblocks_woodtile.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_flipped", {
	description = "Wooden Tile",
	tiles = {"moreblocks_woodtile_flipped.png", "moreblocks_woodtile_flipped.png", "moreblocks_woodtile_flipped.png", "moreblocks_woodtile_flipped.png", "moreblocks_woodtile_flipped.png^[transformR90", "moreblocks_woodtile_flipped.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_center", {
	description = "Centered Wooden Tile",
	tiles = {"moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png", "moreblocks_woodtile_center.png^[transformR90", "moreblocks_woodtile_center.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_full", {
	description = "Full Wooden Tile",
	tiles = {"moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png", "moreblocks_woodtile_full.png^[transformR90", "moreblocks_woodtile_full.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_up", {
	description = "Up Wooden Tile",
	tiles = {"moreblocks_woodtile_up.png", "moreblocks_woodtile_up.png", "moreblocks_woodtile_up.png", "moreblocks_woodtile_up.png", "moreblocks_woodtile_up.png^[transformR90", "moreblocks_woodtile_up.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_down", {
	description = "Down Wooden Tile",
	tiles = {"moreblocks_woodtile_down.png", "moreblocks_woodtile_down.png", "moreblocks_woodtile_down.png", "moreblocks_woodtile_down.png", "moreblocks_woodtile_down.png^[transformR90", "moreblocks_woodtile_down.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_left", {
	description = "Left Wooden Tile",
	tiles = {"moreblocks_woodtile_left.png", "moreblocks_woodtile_left.png", "moreblocks_woodtile_left.png", "moreblocks_woodtile_left.png", "moreblocks_woodtile_left.png^[transformR90", "moreblocks_woodtile_left.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile_right", {
	description = "Right Wooden Tile",
	tiles = {"moreblocks_woodtile_right.png", "moreblocks_woodtile_right.png", "moreblocks_woodtile_right.png", "moreblocks_woodtile_right.png", "moreblocks_woodtile_right.png^[transformR90", "moreblocks_woodtile_right.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:stonebrick", {
	description = "Stone Bricks",
	tiles = {"moreblocks_stonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:circlestonebrick", {
	description = "Circle Stone Bricks",
	tiles = {"moreblocks_circlestonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironstonebrick", {
	description = "Iron Stone Bricks",
	tiles = {"moreblocks_ironstonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:stonesquare", {
	description = "Stonesquare",
	tiles = {"moreblocks_stonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:splitstonesquare", {
	description = "Split Stonesquare",
	tiles = {"moreblocks_splitstonesquare_top.png", "moreblocks_splitstonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:plankstone", {
	description = "Plankstone",
	tiles = {"moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png^[transformR90", "moreblocks_plankstone.png^[transformR90"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironglass", {
	description = "Iron Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_ironglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_ironglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:coalglass", {
	description = "Coal Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_coalglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_coalglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:cleanglass", {
	description = "Clean Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_cleanglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_cleanglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})


minetest.register_node("moreblocks:cactusbrick", {
	description = "Cactus Brick",
	tiles = {"moreblocks_cactusbrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:cactuschecker", {
	description = "Cactus Checker",
	tiles = {"moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png^[transformR90", "moreblocks_cactuschecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:emptybookshelf", {
	description = "Empty Bookshelf",
	tiles = {"default_wood.png", "default_wood.png", "moreblocks_emptybookshelf.png"},
	is_ground_content = true,
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:oerkkiblock", {
	description = "Oerkki Block",
	tiles = {"moreblocks_oerkkiblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:coalstone", {
	description = "Coal Stone",
	tiles = {"moreblocks_coalstone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironstone", {
	description = "Iron Stone",
	tiles = {"moreblocks_ironstone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:coalchecker", {
	description = "Coal Checker",
	tiles = {"moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png^[transformR90", "moreblocks_coalchecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironchecker", {
	description = "Iron Checker",
	tiles = {"moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png^[transformR90", "moreblocks_ironchecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:trapstone", {
	description = "Trapstone",
	tiles = {"moreblocks_trapstone.png"},
	walkable = false,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:trapglass", {
	description = "Trapglass",
	drawtype = "glasslike",
	tiles = {"moreblocks_trapglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_trapglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:fence_junglewood", {
	description = "Jungle Wood Fence",
	drawtype = "fencelike",
	tiles = {"moreblocks_junglewood.png"},
	inventory_image = "moreblocks_junglewood_fence.png",
	wield_image = "moreblocks_junglewood_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:horizontaltree", {
	description = "Horizontal Tree",
	tiles = {"default_tree.png", "default_tree.png", "default_tree.png^[transformR90", "default_tree.png^[transformR90", "default_tree_top.png", "default_tree_top.png"},
	paramtype2 = "facedir",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:horizontaljungletree", {
	description = "Horizontal Jungle Tree",
	tiles = {"default_jungletree.png", "default_jungletree.png", "default_jungletree.png^[transformR90", "default_jungletree.png^[transformR90", "default_jungletree_top.png", "default_jungletree_top.png"},
	paramtype2 = "facedir",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:allfacestree", {
	description = "All-faces Tree",
	tiles = {"default_tree_top.png"},
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:glowglass", {
	description = "Glow Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_glowglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_glowglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 12,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:superglowglass", {
	description = "Super Glow Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_superglowglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_superglowglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 15,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:rope", {
	description = "Rope",
	drawtype = "signlike",
	tiles = {"moreblocks_rope.png"},
	inventory_image = "moreblocks_rope.png",
	wield_image = "moreblocks_rope.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})

-- Items

minetest.register_craftitem("moreblocks:sweeper", {
	description = "Sweeper",
	inventory_image = "moreblocks_sweeper.png",
})

minetest.register_craftitem("moreblocks:junglestick", {
	description = "Jungle Stick",
	inventory_image = "moreblocks_junglestick.png",
})
