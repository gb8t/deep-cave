if (room != loja) {
	exit
}

display_set_gui_size(90, 160);

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_font(global.font)

draw_text(room_width / 2, 16, "$" + string(global.money));