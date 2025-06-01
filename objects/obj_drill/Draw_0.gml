<<<<<<< HEAD
if(global.pause){ 
	shake = 0;
	image_speed = 0;
}

=======
>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
var xoff = choose(-shake, 0, shake)
draw_sprite_ext(sprite_index, image_index, x + xoff, y, 1, 1, image_angle, -1, 1)
