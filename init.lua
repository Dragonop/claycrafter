--the claycrafter is supposed to be some sort of furnace
--that uses compressed dirt and glasses of water to make clay, it's not needed to use the mod currently.

--[[ 
minetest.register_node("claycrafter:claycrafter", {
		description = "Clay crafter",
		tiles = {
				"claycrafter_claycrafter_top.png",
				"claycrafter_claycrafter_bottom.png",
				"claycrafter_claycrafter_side.png",
				"claycrafter_claycrafter_side.png",
				"claycrafter_claycrafter_back.png",
				"claycrafter_claycrafter_front.png",
				},
		groups = {oddly_breakable_by_hand = 1, choppy = 1}
})
--]]

--Compressed dirt
minetest.register_node("claycrafter:compressed_dirt", {
		description = "Compressed Dirt",
		tiles = {"claycrafter_compressed_dirt.png"},
		groups = {crumbly = 1, oddly_breakable_by_hand = 1}
})
minetest.register_craft({
		output = "claycrafter:compressed_dirt",
		recipe = {
				{"default:dirt", "default:dirt", "default:dirt"},
				{"default:dirt", "default:dirt", "default:dirt"},
				{"default:dirt", "default:dirt", "default:dirt"},
		}
})

--Glass of water
-- Water glasses, like full buckets of water, might
-- should have, stack_max = 1
minetest.register_craftitem("claycrafter:glass_of_water", {
		description = "Glass of Water",
		inventory_image = "claycrafter_glass_of_water.png",
		groups = {h2o = 1}, -- How much compressed dirt will turn to clay
		--stack_max = 1
})

-- Better may be to override the vessels:drinking_glass item
-- and allow scooping water just as the bucket does
-- (Always wanted to do that.)
minetest.register_craft({
		output = "claycrafter:glass_of_water 8",
		recipe = {
				{"vessels:drinking_glass", "vessels:drinking_glass", "vessels:drinking_glass"},
				{"vessels:drinking_glass", "bucket:bucket_water", "vessels:drinking_glass"}, 
				{"vessels:drinking_glass", "vessels:drinking_glass", "vessels:drinking_glass"}
				},
		replacements = {
				{"bucket:bucket_water", "bucket:bucket_empty"},
		}
})

--Craft the clay
minetest.register_craft({
		type = "shapeless",
		output = "default:clay 4",
		recipe = {"claycrafter:compressed_dirt", "claycrafter:glass_of_water"},
		replacements = {
				{"claycrafter:glass_of_water", "vessels:drinking_glass"},
		}
})

--[[
minetest.register_craft({
		type = "h2o", -- normal, cooking,or fuel only
		output = "default:clay",
		recipe = {"claycrafter:compressed_dirt"},
		recplacements = {{"claycrafter:glass_of_water"}}
})
--]]

dofile(minetest.get_modpath("claycrafter") .. "/claycrafter.lua")
