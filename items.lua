--compressed dirt
local moreblocks = minetest.get_modpath("moreblocks")

if moreblocks ~= nil then
	minetest.register_alias("claycrafter:compressed_dirt","moreblocks:dirt_compressed")
else
	minetest.register_craft({
			output = "claycrafter:compressed_dirt",
			recipe = {
				{"group:dirt", "group:dirt", "group:dirt"},
				{"group:dirt", "group:dirt", "group:dirt"},
				{"group:dirt", "group:dirt", "group:dirt"}
			}
	})
	minetest.register_node("claycrafter:compressed_dirt", {
		description = "Compressed Dirt",
		tiles = {"claycrafter_compressed_dirt.png"},
		groups = {crumbly = 1, oddly_breakable_by_hand = 1, soil = 1, cracky =1},
		sounds = default.node_sound_dirt_defaults(),
	})
	minetest.register_craft({
		output = "default:dirt 9",
		recipe = {{"claycrafter:compressed_dirt"}}
	})
	minetest.register_alias("moreblocks:dirt_compressed","claycrafter:compressed_dirt")
end

--nodes
minetest.register_node("claycrafter:glass_of_water", {
	description = ("Glass of Water"),
	drawtype = "plantlike",
	tiles = {"claycrafter_glass_of_water.png"},
	inventory_image = "claycrafter_glass_of_water_inv.png",
	wield_image = "claycrafter_glass_of_water.png",
	paramtype = "light",
	use_texture_alpha = "blend",
	is_ground_content = false,
	walkable = false,
	sunlight_propagates = true,
	selection_box = {type = "fixed",fixed = {-0.25, -0.5, -0.25, 0.25, 0, 0.25}	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, h2o = 3}, -- How much time to convert 1 compressed dirt to 4 clay
	on_use = minetest.item_eat(0,"vessels:drinking_glass"),	
	sounds = default.node_sound_glass_defaults(),
})

--recipes
minetest.register_craft({
		output = "claycrafter:glass_of_water 8",
		recipe = {
			{"group:vessel", "group:vessel", "group:vessel"},
			{"group:vessel", "group:water_bucket", "group:vessel"},
			{"group:vessel", "group:vessel", "group:vessel"}
		},
		replacements = {
			{"group:water_bucket", "bucket:bucket_empty"},
		}
})

minetest.register_craft({
		output = "claycrafter:glass_of_water 8",
		recipe = {
			{"group:vessel", "group:vessel", "group:vessel"},
			{"group:vessel", "group:water", "group:vessel"},
			{"group:vessel", "group:vessel", "group:vessel"}
		}
})

minetest.register_craft({
		output = "claycrafter:claycrafter",
		recipe = {
			{"group:wood", "default:steel_ingot", "group:wood"},
			{"group:wood", "group:glass", "group:wood"},
			{"group:stick", "group:water_bucket", "group:stick"}
		}
})
