// Variáveis
var max_angle = 45; // Ângulo máximo
var turn_speed = 2.5; // Velocidade da virada
var dig_speed = 2.0; // Velocidade de movimento
var intro_y = room_height / 3; //

var move_x = keyboard_check(vk_right)   - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

// Bloquear input na intro
if (y < intro_y) {
	move_x = 0;
	move_y = 0;
	dig_speed *= 1.5;
}

if (global.mining != noone) {
	// Minerar
	if (global.mining.hp > 0) {
		global.mining.hp--;
		global.screen_shake = 2;
	} else {
		instance_destroy(global.mining);
		global.mining = noone;
	}
} else if (move_y >= 0) {
	// Virar
	if (move_x != 0) {
		drill.image_angle += move_x * turn_speed;
		drill.image_angle = clamp(drill.image_angle, -max_angle, max_angle);
	}

	// Movimento
	var dx = lengthdir_x(dig_speed, drill.image_angle - 90);
	var dy = lengthdir_y(dig_speed, drill.image_angle - 90);

	x += dx;
	x = clamp(x, 16, room_width - 16);

	if (y < intro_y) {
		y += dy;
		y = min(y, intro_y);
	} else {
		global.meters += dy / 32;

		// Mover outros objetos
		with obj_item {
			y -= dy;
		}
	}

	drill.x = x;
	drill.y = y;

	// Criar buracos
	if (!place_meeting(x, y, obj_hole)) {
		instance_create_layer(
			x + random_range(-2, 2),
			y + random_range(-2, 2),
			layer,
			obj_hole);
	}
}

// Spawnar itens (TEMPORÁRIO)
if (global.meters >= last_spawn + 1) {
	last_spawn = global.meters;

	var _x = random_range(20, room_width - 20);
	var _y = random_range(room_height * 1.5, room_height * 2);
	
	// Escolher item aleatório
	if (random(1)) {
		instance_create_layer(_x, _y, "decor", obj_decor);
	} else if (!random(2)) {
		instance_create_layer(_x, _y, layer, obj_bomb);
	} else {
		instance_create_layer(_x, _y, layer, obj_gem);
	}
}

// Tremer a tela
if (global.screen_shake) {
	camera_set_view_pos(
		view_camera[0],
		random_range(-1, 1) * global.screen_shake,
		random_range(-1, 1) * global.screen_shake);
	
	global.screen_shake = max(0, global.screen_shake - .5);
} else {
	camera_set_view_pos(view_camera[0], 0, 0);
}
