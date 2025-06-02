if (room != loja) {
	exit
}

display_set_gui_size(90, 160);

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_font(global.font)

draw_sprite_ext(spr_menu, 0, 16, -16, (room_width - 32) / 16, 32 / 16, 0, -1, 1)
draw_text(room_width / 2, 8, "$" + string(global.money));