draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fn_font2);
draw_text(20, 20, string_format(meters, 1, 2) + "m");

/*
draw_set_halign(fa_right);
draw_set_font(fn_font1);
draw_text(view_wport - 52, 20, score);
draw_sprite(spr_gem, 0, view_wport - 26, 60);
*/

// Combustível
var bar_w = 40;
var bar_h = 80;
var bar_x = view_wport - 20 - bar_w;
var bar_y = 20;
var fuel_percent = fuel / fuel_max;

draw_set_color(c_gray);
draw_rectangle(
	bar_x, bar_y,
	bar_x + bar_w,
	bar_y + bar_h,
	false);
draw_set_color(c_lime);
draw_rectangle(
	bar_x,
	bar_y + bar_h * (1 - fuel_percent),
	bar_x + bar_w,
	bar_y + bar_h,
	false);

// Joystick
if (touch_active) {
    var base_x = touch_start_x;
    var base_y = touch_start_y;
    draw_sprite_ext(spr_joystick_1, 0, base_x, base_y,
		6, 6, 0, -1, .5);

    var cur_x = touch_current_x;
    var cur_y = touch_current_y;

    var dist = point_distance(base_x, base_y, cur_x, cur_y);
    if (dist > 80) {
        var angle = point_direction(base_x, base_y, cur_x, cur_y);
        cur_x = base_x + lengthdir_x(80, angle);
        cur_y = base_y + lengthdir_y(80, angle);
    }

    draw_sprite_ext(spr_joystick_2, 0, cur_x, cur_y,
		6, 6, 0, -1, .5);

    draw_set_alpha(1);
}
