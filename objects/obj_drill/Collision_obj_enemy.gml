<<<<<<< HEAD
if  other.object_index == obj_ghost {
	return
}

instance_create_depth(
	other.x,
	other.y,
	-1000,
	obj_hit)

var dead = instance_create_depth(other.x, other.y,-1000, obj_fall)
dead.sprite_index = other.sprite_index
dead.image_speed = 0
instance_destroy(other)

=======
if  other.object_index == obj_ghost {
	return
}

instance_create_depth(
	other.x,
	other.y,
	-1000,
	obj_hit)

var dead = instance_create_depth(other.x, other.y,-1000, obj_fall)
dead.sprite_index = other.sprite_index
dead.image_speed = 0
instance_destroy(other)

>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
global.player.shake = 5