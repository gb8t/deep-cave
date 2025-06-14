event_inherited()

if (global.pause) {
    image_speed = 0;
    hspeed = 0;
    vspeed = 0;
    exit;
} else {
    image_speed = 0.3;
}

if (global.player) {
	var dir = point_direction(x, y, global.player.x, global.player.y)
	hspeed = lengthdir_x(.5, dir)
	vspeed = lengthdir_y(.5, dir)

	image_xscale = sign(x - global.player.x)
}

if (device_mouse_check_button_pressed(0, mb_left)) {
    var tx = device_mouse_x(0);
    var ty = device_mouse_y(0);
	if point_distance(tx, ty, x, y) < 32 {
		with (instance_create_layer(x, y, layer, obj_ghost_dead)) {
			image_xscale = other.image_xscale
			image_alpha = other.image_alpha
		}
		instance_destroy()
	}
}
