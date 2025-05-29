<<<<<<< HEAD
event_inherited()

var player = instance_nearest(x, y, obj_player)
var dir = point_direction(x, y, player.x, player.y)
hspeed = lengthdir_x(.5, dir)
vspeed = lengthdir_y(.5, dir)

image_xscale = sign(x - player.x)

if (device_mouse_check_button(0, mb_left)) {
    var tx = device_mouse_x(0);
    var ty = device_mouse_y(0);
	
	if point_distance(tx, ty, x, y) < 32 {
		with (instance_create_depth(x, y, depth, obj_ghost_dead)) {
			image_xscale = other.image_xscale
		}
		instance_destroy()
	}
}
=======
event_inherited()

var player = instance_nearest(x, y, obj_player)
var dir = point_direction(x, y, player.x, player.y)
hspeed = lengthdir_x(.5, dir)
vspeed = lengthdir_y(.5, dir)

image_xscale = sign(x - player.x)

if (device_mouse_check_button(0, mb_left)) {
    var tx = device_mouse_x(0);
    var ty = device_mouse_y(0);
	
	if point_distance(tx, ty, x, y) < 32 {
		with (instance_create_depth(x, y, depth, obj_ghost_dead)) {
			image_xscale = other.image_xscale
		}
		instance_destroy()
	}
}
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
