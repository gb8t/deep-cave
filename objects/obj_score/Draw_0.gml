draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_text(room_width / 2, 16, "$" + string(global.money))

draw_self()
if (global.pause) {
	draw_text(room_width / 2, y + 16, "PAUSADO")
	
} else{
	draw_text(room_width / 2, y + 16, "GAME\nOVER")
}