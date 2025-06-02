for (var i = 0; i < random_range(5, 10); i++) {
	instance_create_layer(
		random(room_width),
		random(room_height),
		"decor",
		obj_decor)
}
for (var i = 0; i < random(5); i++) {
	var g = instance_create_layer(
		random(room_width),
		random(room_height),
		"decor",
		obj_gem)
	g.image_xscale = choose(-1, 1)
}