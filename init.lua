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
			{"default:dirt", "default:dirt", "default:dirt"}
		}
})

--Glass of water
-- Water glasses, might should have stack_max = 1, change this if you preffer
minetest.register_craftitem("claycrafter:glass_of_water", {
		description = "Glass of Water",
		inventory_image = "claycrafter_glass_of_water.png",
		groups = {h2o = 1}, -- How much compressed dirt will turn to clay
		--stack_max = 1
})

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

minetest.register_craft({
		output = "claycrafter:claycrafter",
		recipe = {
			{"group:wood", "default:steel_ingot", "group:wood"},
			{"group:wood", "default:glass", "group:wood"},
			{"default:stick", "bucket:bucket_water", "default:stick"},
		}
})

dofile(minetest.get_modpath("claycrafter") .. "/claycrafter.lua")
