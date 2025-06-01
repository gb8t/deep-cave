event_inherited()

<<<<<<< HEAD
if (global.pause) {
    shine_timer = 0
	image_speed = 0
    exit;
} else {
	shine_timer = 10
	image_speed = .2
}

if shine_timer > 0 {
	shine_timer--
} else {
=======
if shine_timer > 0 {
	shine_timer--
} else {
>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
	shine_timer = random_range(5, 20)
	instance_create_layer(
		x + random_range(-8, 8),
		y + random_range(-8, 8),
		"effect",
		obj_shine)
}
