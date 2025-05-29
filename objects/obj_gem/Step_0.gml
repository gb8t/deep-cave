event_inherited()

if shine_timer > 0 {
	shine_timer--
} else {
	shine_timer = random_range(5, 20)
	instance_create_layer(
		x + random_range(-8, 8),
		y + random_range(-8, 8),
		"effect",
		obj_shine)
}
