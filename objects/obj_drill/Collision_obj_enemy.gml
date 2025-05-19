var dead = instance_create_depth(other.x, other.y,-1000, obj_enemy_dead)
dead.sprite_index = other.sprite_index
dead.image_speed = other.image_speed
dead.image_xscale = other.image_xscale
dead.image_yscale = other.image_yscale
instance_destroy(other)