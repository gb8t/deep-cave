draw_set_halign(fa_left);
draw_set_font(fn_font2);
draw_text(20, 20, string_format(global.meters, 1, 2) + "m");


if (touch_active) {
    draw_set_alpha(0.5);
    draw_set_color(c_white);

    var base_x = touch_start_x;
    var base_y = touch_start_y;
    draw_circle(base_x, base_y, 40, false);

    var cur_x = touch_current_x;
    var cur_y = touch_current_y;

    var dist = point_distance(base_x, base_y, cur_x, cur_y);
    if (dist > 40) {
        var angle = point_direction(base_x, base_y, cur_x, cur_y);
        cur_x = base_x + lengthdir_x(40, angle);
        cur_y = base_y + lengthdir_y(40, angle);
    }

    draw_circle(cur_x, cur_y, 20, false);

    draw_set_alpha(1);
}

// Combustível - barra
var bar_x = 20;
var bar_y = 120;
var bar_w = 200;
var bar_h = 20;
var fuel_percent = fuel / fuel_max;

draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + bar_w * fuel_percent, bar_y + bar_h, false);
draw_set_color(c_white);
draw_text(bar_x, bar_y - 20, "combustivel: " + string_format(fuel, 1, 0));




/*
draw_set_halign(fa_right);
draw_set_font(fn_font1);
draw_text(view_wport - 52, 20, score);
draw_sprite(spr_gem, 0, view_wport - 26, 60);
*/
