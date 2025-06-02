global.player.dead = 2
global.flash_alpha = 1
tocar_som(som_bomba)
instance_create_layer(x, y, "hole", obj_explosion_hole)
instance_destroy()
instance_destroy(obj_enemy)