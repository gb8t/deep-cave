draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)


if (
	!instance_exists(obj_player) and
	global.meters == global.high_score and
	current_time % 400 < 200
) {
	draw_text(room_width / 2, 16, "NOVO\nRECORDE!")
}

draw_text(room_width / 2, 32, "$" + string(global.money))

draw_self()

if (global.pause) {
	draw_text(room_width / 2, y + 16, "PAUSADO")
	
} else{
	draw_text(room_width / 2, y + 16, "GAME\nOVER")
}