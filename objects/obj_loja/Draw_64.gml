if (room != loja) {
	exit
}

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_font(global.font)

draw_text(20, 20, "$" + string(global.money));