if  other.object_index == obj_ghost {
	return
}

instance_create_depth(
	other.x,
	other.y,
	-1000,
	obj_shine_1)

var dead = instance_create_depth(other.x, other.y,-1000, obj_enemy_dead)
dead.sprite_index = other.sprite_index
dead.image_speed = 0
instance_destroy(other)