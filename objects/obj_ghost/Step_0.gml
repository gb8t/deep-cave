event_inherited()

var player = instance_nearest(x, y, obj_player)
var dir = point_direction(x, y, player.x, player.y)
hspeed = lengthdir_x(1, dir)
vspeed = lengthdir_y(1, dir)

if player.x > x {
	image_xscale = -2
} else {
	image_xscale = 2
}

if (device_mouse_check_button(0, mb_left)) {
    var tx = device_mouse_x(0);
    var ty = device_mouse_y(0);
	
	if point_distance(tx, ty, x, y) < 32 {
		instance_destroy()
	}
}