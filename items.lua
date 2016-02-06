minetest.register_node("claycrafter:compressed_dirt", {
		description = "Compressed Dirt",
		tiles = {"claycrafter_compressed_dirt.png"},
		groups = {crumbly = 1, oddly_breakable_by_hand = 1, soil = 1, cracky =1}
})

minetest.register_craftitem("claycrafter:glass_of_water", {
		description = "Glass of Water",
		inventory_image = "claycrafter_glass_of_water.png",
		groups = {h2o = 1, vessel = 1}, -- How much time to convert 1 compressed dirt to 4 clay
})
