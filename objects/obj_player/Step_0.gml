// Pause
if (global.pause) {
    image_speed = 0
	layer_vspeed("bg", 0);
    exit;
}

// Variáveis
var max_angle = 45;   // Ângulo máximo
var intro_y = room_height / 3;
var x_speed = 0;
var y_speed = 0;

// Combustível
if (fuel > 0) {
    if (y >= intro_y) {
        fuel -= fuel_rate;
        if (fuel < 0) fuel = 0;
    }
	speed_mt = 1
	drill.shake = 1
} else {
	speed_mt *= .95
	drill.shake = 0
	image_speed = 0
	image_index = 0
	drill.image_speed = 0
	if (alarm[1] < 0) {
		alarm[1] = 100
	}
}

if (mining != noone) {
    if (mining.hp > 0) {
        mining.hp--;
        shake = 2;
    } else {
		switch (mining.object_index) {
		case obj_gem:
			gems += 1 + mining.gem_id
			tocar_som(som_minerio)
			break
		case obj_grave:
			gems += 10
			tocar_som(som_minerio)
			break
		case obj_fuel:
			fuel = min(fuel + 50, fuel_max)
			break
		}
        instance_destroy(mining);
        mining = noone;
    }
} else {
    if (y < intro_y) {
		x_speed = lengthdir_x(dig_speed * 1.5, drill.image_angle - 90);
		y_speed = lengthdir_y(dig_speed * 1.5, drill.image_angle - 90);
		y += y_speed
    } else {
		// Controle
		if (fuel > 0) {
			if (device_mouse_check_button(0, mb_left)) {
			    var tx = device_mouse_x_to_gui(0);
			    var w = display_get_gui_width()
				var t = clamp(tx / w, 0, 1)
			    var a = lerp(-max_angle, max_angle, t);
			    drill.image_angle = lerp(drill.image_angle, a, .2);
			} else {
				var move = keyboard_check(vk_right) - keyboard_check(vk_left)
				drill.image_angle = clamp(drill.image_angle + move * 2.5, -max_angle, max_angle)
			}
		}
		
	    x_speed = lengthdir_x(dig_speed * speed_mt, drill.image_angle - 90);
	    y_speed = lengthdir_y(dig_speed * speed_mt, drill.image_angle - 90);
		
        meters += y_speed / 32;

        // Mover itens para simular descida
        with obj_item {
			if object_index != obj_ghost {
				y -= y_speed;
			}
        }
    }
	
    x = clamp(x + x_speed, 8, room_width - 8);

    // Criar buracos
    if (!place_meeting(x, y, obj_hole)) {
		for (var i = 0; i < 5; i++) {
			instance_create_layer(
				x + random_range(-5, 5),
				y + random_range(-5, 5),
				"hole",
				obj_hole);
		}
    }

	// Broca
	with (drill) {
		x = other.x
		y = other.y
		other.mining = instance_place(x, y, obj_mineable);
	}
}

// Spawnar itens
if (meters >= item_spawn + 1) {
    item_spawn = meters + random(2);

	instance_create_layer(
		random_range(20, room_width - 20),
		random_range(room_height * 1.5, room_height * 2),
		"item",
		choose(obj_bomb, obj_gem, obj_decor, obj_fuel));
}

// Spawnar túmulo
if (meters >= global.high_score and global.high_score > 0 and !reach_hscore) {
    reach_hscore = true
	instance_create_layer(
		random_range(20, room_width - 20),
		random_range(room_height * 1.5, room_height * 2),
		"item",
		obj_grave);
}

// Spawnar inimigos
if (meters >= enemy_spawn + 1) {
	enemy_spawn = meters + random_range(5, 10);

	instance_create_layer(
		random_range(20, room_width - 20),
		room_height + 32,
		"enemy",
		choose(obj_bat, obj_ghost, obj_mole))
}

// Tremer a tela
if (shake) {
    camera_set_view_pos(
        view_camera[0],
        random_range(-1, 1) * shake,
        random_range(-1, 1) * shake);

    shake = max(0, shake - 0.5);
} else {
    camera_set_view_pos(view_camera[0], 0, 0);
}

// Velocidade do plano de fundo
if (y >= intro_y) {
	layer_vspeed("bg", -y_speed);
}

if (dead > 0) {
	audio_stop_sound(global.musica_atual);
    tocar_som(som_morte)
	audio_stop_sound(global.musica_atual);
	global.musica_atual = -1;
	global.musica_recurso = -1;

	with (instance_create_layer(x, y, layer, obj_player_dead)) {
		image_index = other.dead - 1
	}
	with (instance_create_layer(x, y, "effect", obj_fall)) {
		sprite_index = spr_drill_1
	}
	global.money += gems * 100
	global.player = noone
	global.meters = meters
	if (meters > global.high_score) {
		global.high_score = meters
	}
	layer_vspeed("bg", 0)
	instance_deactivate_layer("menu2")
	instance_destroy(drill)
	instance_destroy()
	salvar_jogo()
}