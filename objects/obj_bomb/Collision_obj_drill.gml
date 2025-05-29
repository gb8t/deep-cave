with (other.player) {
	with (instance_create_layer(x, y, layer, obj_player_dead)) {
		image_index = 1
	}
	instance_destroy(drill)
	instance_destroy()
}
layer_vspeed("bg", 0)

var num = 10
for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, "effect", obj_explosion)) {
		direction = 360 / num * i + random_range(-5, 5)
		speed = random_range(1, 2)
	}
}

global.flash_alpha = 1

instance_destroy()