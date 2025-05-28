event_inherited()

var player = instance_nearest(x, y, obj_player)
var dir = point_direction(x, y, player.x, player.y)
hspeed = lengthdir_x(.7, dir)
vspeed = lengthdir_y(.7, dir)
image_angle = dir - 90

// Criar buracos
if (!place_meeting(x, y, obj_hole)) {
	instance_create_layer(
		x,
		y,
		layer,
		obj_hole);
}