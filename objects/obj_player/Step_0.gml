//velocidade para n bugar na intro
var current_speed = dig_speed;

//toque / clique
if (device_mouse_check_button(0, mb_left)) {
    var tx = device_mouse_x_to_gui(0);
    var ty = device_mouse_y_to_gui(0);

    if (!touch_active) {
        touch_start_x = tx;
        touch_start_y = ty;
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

//sistema de combustivel
if (fuel > 0) {
    if (y >= intro_y) {
        fuel -= fuel_rate;
        if (fuel < 0) fuel = 0;
    }
} else {
    room_restart(); //reinicia/fim de jogo  ao acabar o combustivel
}

//bloquear input na intro
if (y < intro_y) {
    move_x = 0;
    move_y = 0;
    current_speed *= 1.5;
}

if (global.mining != noone) {
    if (global.mining.hp > 0) {
        global.mining.hp--;
        global.screen_shake = 2;
    } else {
        instance_destroy(global.mining);
        global.mining = noone;
    }
} else if (move_y >= 0) {
    //girar broca
    if (move_x != 0) {
        drill.image_angle += move_x * turn_speed;
        drill.image_angle = clamp(drill.image_angle, -max_angle, max_angle);
    }

    
    var dx = lengthdir_x(current_speed, drill.image_angle - 90);
    var dy = lengthdir_y(current_speed, drill.image_angle - 90);

    x += dx;
    x = clamp(x, 16, room_width - 16);

    if (y < intro_y) {
        y += dy;
        y = min(y, intro_y);
    } else {
        global.meters += dy / 32;

        // Move itens para simular descida
        with obj_item {
            y -= dy;
        }
    }

    drill.x = x;
    drill.y = y;

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
}

// Spawn de itens
if (global.meters >= last_spawn + 1) {
    last_spawn = global.meters;

    var _x = random_range(20, room_width - 20);
    var _y = random_range(room_height * 1.5, room_height * 2);

    if (random(1)) {
        instance_create_layer(_x, _y, "decor", obj_decor);
    } else if (!random(2)) {
        instance_create_layer(_x, _y, layer, obj_bomb);
    } else {
        instance_create_layer(_x, _y, layer, obj_gem);
    }
}

// Spawnar inimigos
if (enemy_spawn > 0) {
	enemy_spawn--
} else {
	enemy_spawn = random_range(100, 500)
	instance_create_layer(
		random_range(20, room_width - 20),
		room_height + 32,
		"etc",
		choose(obj_bat))
}

// Efeito de tremer a tela
if (global.screen_shake) {
    camera_set_view_pos(
        view_camera[0],
        random_range(-1, 1) * global.screen_shake,
        random_range(-1, 1) * global.screen_shake);

    global.screen_shake = max(0, global.screen_shake - 0.5);
} else {
    camera_set_view_pos(view_camera[0], 0, 0);
}
