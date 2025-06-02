if (global.pause) exit;

display_set_gui_size(room_width, room_height);

draw_set_font(global.font)
draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_top)

// Profundidade
draw_text(2, 2, string_format(meters, 1, 2) + "M");

// Gemas
draw_sprite(spr_icon, 0, 2, 12)
draw_text(12, 12, gems)

// Combustível
var bar_w = 8;
var bar_h = 24;
var bar_x = 2;
var bar_y = 24;
var fuel_percent = fuel / fuel_max;
if (fuel_blink > 0) fuel_blink--
if (fuel_blink > 0 and fuel_blink / 3 % 2 == 0) {
	draw_set_color(c_white);
} else {
	draw_set_color(c_lime);
}
draw_rectangle(
	bar_x + 1,
	bar_y + 1 + (bar_h - 2) * (1 - fuel_percent),
	bar_x + bar_w - 2,
	bar_y + bar_h - 2,
	false);
draw_sprite_ext(
	spr_tank, 0,
	bar_x,
	bar_y,
	bar_w / 8,
	bar_h / 8,
	0, -1, 1)
    
// Joystick
/*
draw_set_alpha(.5);
if (touch_active) {
    var base_x = touch_start_x;
    var base_y = touch_start_y;
    draw_sprite(spr_joystick_1, 0, base_x, base_y)

    var cur_x = touch_current_x;
    var cur_y = touch_current_y;

    var dist = point_distance(base_x, base_y, cur_x, cur_y);
    if (dist > 16) {
        var angle = point_direction(base_x, base_y, cur_x, cur_y);
        cur_x = base_x + lengthdir_x(16, angle);
        cur_y = base_y + lengthdir_y(16, angle);
    }

    draw_sprite(spr_joystick_2, 0, cur_x, cur_y)
}
draw_set_alpha(1);
*/

/*
// Teste das variaveis do save
draw_set_font(-1); // Fonte padrão
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(20, 110, "Dinheiro: R$" + string(global.money));
draw_text(20, 150, "Nível do Tanque: " + string(global.nivelTanque));
*/

/*
var w = (room_width - 16) / 16
var h = (room_height - 16) / 16
draw_sprite_ext(spr_menu, 0, 8, 8, w, h, 0, -1, 1)
*/
