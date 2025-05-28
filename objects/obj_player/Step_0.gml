// Variáveis
var move_x = 0;
var move_y = 0;
var max_angle = 45;   // Ângulo máximo
var turn_speed = 2.5; // Velocidade de rotação
var dig_speed = 1.25;  // Velocidade de escavação
var intro_y = room_height / 3;  
var x_speed = 0, y_speed = 0;

// Joystick
if (device_mouse_check_button(0, mb_left)) {
    var tx = device_mouse_x_to_gui(0);
    var ty = device_mouse_y_to_gui(0);

    if (!touch_active) {
        touch_start_x = display_get_gui_width() / 2;
        touch_start_y = display_get_gui_height() * .8;
        touch_active = true;
    }

    touch_current_x = tx;
    touch_current_y = ty;

    var dir_x = tx - touch_start_x;
    var dir_y = ty - touch_start_y;

    var length = point_distance(0, 0, dir_x, dir_y);
    if (length > 4) {
        move_x = clamp(dir_x / length, -1, 1);
        move_y = clamp(dir_y / length, -1, 1);
    } else {
        move_x = 0;
        move_y = 0;
    }
} else {
    touch_active = false;
    move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
    move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
}

// Combustível
if (fuel > 0) {
    if (y >= intro_y) {
        fuel -= fuel_rate;
        if (fuel < 0) fuel = 0;
    }
} else {
	//salvar_jogo()
    //room_restart(); // reinicia/fim de jogo  ao acabar o combustivel
}

// Bloquear input na intro
if (y < intro_y) {
    move_x = 0;
    move_y = 0;
    dig_speed *= 1.5;
}

if (mining != noone) {
    if (mining.hp > 0) {
        mining.hp--;
        shake = 2;
    } else {
        instance_destroy(mining);
        mining = noone;
		global.num_minerios += 1
		global.money += 100;
		gems++
    }
} else if (move_y >= 0) {
    if (move_x != 0) {
        drill.image_angle = clamp(
			drill.image_angle + move_x * turn_speed,
			-max_angle,
			max_angle);
    }
    
    x_speed = lengthdir_x(dig_speed, drill.image_angle - 90);
    y_speed = lengthdir_y(dig_speed, drill.image_angle - 90);

    x = clamp(x + x_speed, 16, room_width - 16);

    if (y < intro_y) {
        y = min(y + y_speed, intro_y);
    } else {
        meters += y_speed / 32;

        // Mover itens para simular descida
        with obj_item {
			if object_index != obj_ghost {
				y -= y_speed;
			}
        }
    }

    // Criar buracos
    if (!place_meeting(x, y, obj_hole)) {
		for (var i = 0; i < 5; i++) {
			instance_create_layer(
				x + random_range(-5, 5),
				y + random_range(-5, 5),
				layer,
				obj_hole);
		}
    }

	// Broca
	with (drill) {
		x = other.x
		y = other.y
		other.mining = instance_place(x, y, obj_gem);
	}
}

// Spawnar itens
if (meters >= item_spawn + 1) {
    item_spawn = meters + random(5);

	instance_create_layer(
		random_range(20, room_width - 20),
		random_range(room_height * 1.5, room_height * 2),
		layer,
		choose(obj_bomb, obj_gem, obj_decor));
}

// Spawnar inimigos
if (meters >= enemy_spawn + 1) {
	enemy_spawn = meters + random_range(5, 10);

	instance_create_layer(
		random_range(20, room_width - 20),
		room_height + 32,
		layer,
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
