display_set_gui_size(90, 160);

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_font(global.font)

y = 32
for (var i = 0; i < array_length(credits_str); i++) {
	var str = credits_str[i]
	draw_text(room_width / 2, y, str);
	y += string_height(str) + 8
}