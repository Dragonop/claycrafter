minetest.register_craft({
		output = "claycrafter:compressed_dirt",
		recipe = {
			{"default:dirt", "default:dirt", "default:dirt"},
			{"default:dirt", "default:dirt", "default:dirt"},
			{"default:dirt", "default:dirt", "default:dirt"}
		}
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
			{"default:stick", "bucket:bucket_water", "default:stick"}
		}
})
