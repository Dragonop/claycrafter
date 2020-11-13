minetest.register_node("claycrafter:compressed_dirt", {
		description = "Compressed Dirt",
		tiles = {"claycrafter_compressed_dirt.png"},
		groups = {crumbly = 1, oddly_breakable_by_hand = 1, soil = 1, cracky =1}
})

minetest.register_node("claycrafter:glass_of_water", {
	description = ("Glass of Water"),
	drawtype = "plantlike",
	tiles = {"claycrafter_glass_of_water.png"},
	inventory_image = "claycrafter_glass_of_water_inv.png",
	wield_image = "claycrafter_glass_of_water.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	sunlight_propagates = true,
	selection_box = {type = "fixed",fixed = {-0.25, -0.5, -0.25, 0.25, 0, 0.25}	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, h2o = 3}, -- How much time to convert 1 compressed dirt to 4 clay
	on_use = minetest.item_eat(0,"vessels:drinking_glass"),	
	sounds = default.node_sound_glass_defaults(),
})
