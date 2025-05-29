event_inherited()

if shine_timer > 0 {
		shine_timer--
} else {
		shine_timer = 10
		instance_create_depth(
			x + random_range(-8, 8),
			y + random_range(-8, 8),
			depth - 1,
			obj_shine)
}