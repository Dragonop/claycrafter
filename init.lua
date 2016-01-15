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
minetest.register_craftitem("claycrafter:glass_of_water", {
		description = "Glass of Water",
		inventory_image = "claycrafter_glass_of_water.png"
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

--Craft the clay
minetest.register_craft({
		type = "shapeless",
		output = "default:clay 4",
		recipe = {"claycrafter:compressed_dirt", "claycrafter:glass_of_water"},
		replacements = {
				{"claycrafter:glass_of_water", "vessels:drinking_glass"},
		}
})
