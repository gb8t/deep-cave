event_inherited()

<<<<<<< HEAD
if (global.pause) {
    image_speed = 0;
    hspeed = 0;
    vspeed = 0;
    exit;
} else {
    image_speed = 1;
}

=======
>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
if (global.player) {
	var dir = point_direction(x, y, global.player.x, global.player.y)
	hspeed = lengthdir_x(.7, dir)
	vspeed = lengthdir_y(.7, dir)
	image_angle = dir - 90
}

// Criar buracos
if (!place_meeting(x, y, obj_hole)) {
	instance_create_layer(x, y, "hole", obj_hole)
}