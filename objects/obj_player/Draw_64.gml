if(global.pause) exit;

display_set_gui_size(room_width, room_height);

draw_set_font(global.font)
draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_top)

// Profundidade
draw_text(2, 2, string_format(meters, 1, 2) + "M");

// Gemas
var num = [gems, keys]
for (var i = 0; i < 2; i++) {
	draw_sprite(spr_icon, i, 2, 12 + i * 8)
	draw_text(12, 12+ i * 8, num[i])
}

// Combustível
var bar_w = 8;
var bar_h = 16;
var bar_x = room_width - 3 - bar_w;
var bar_y = 2;
fuel = clamp(fuel, 0, fuel_max);
var fuel_percent = fuel / fuel_max;
draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle(
	bar_x, bar_y,
	bar_x + bar_w,
	bar_y + bar_h,
	false);
draw_set_color(c_lime);
draw_set_alpha(1);
draw_rectangle(
	bar_x,
	bar_y + bar_h * (1 - fuel_percent) + 1,
	bar_x + bar_w,
	bar_y + bar_h,
	false);
	
// Botão de pause
if (global.pause) {
    
} else {
    draw_sprite_ext(spr_pause, 0, btn_pause_x, btn_pause_y, 0.07, 0.07, 0, c_white, 1);

}

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
draw_text(20, 130, "Minérios: " + string(global.num_minerios));
draw_text(20, 150, "Nível do Tanque: " + string(global.nivelTanque));
*/

/*
var w = (room_width - 16) / 16
var h = (room_height - 16) / 16
draw_sprite_ext(spr_menu, 0, 8, 8, w, h, 0, -1, 1)
*/
