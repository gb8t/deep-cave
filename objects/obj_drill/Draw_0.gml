if(global.pause){ 
	shake = 0;
	image_speed = 0;
}

var xoff = choose(-shake, 0, shake)
draw_sprite_ext(sprite_index, image_index, x + xoff, y, 1, 1, image_angle, -1, 1)
