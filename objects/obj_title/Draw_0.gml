var str="DEEP\nCAVE"
var w = string_width(str)

draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)

x = (room_width - w) / 2 + 4
y = room_height / 5 - 8
var x0 = x
for (var i = 1; i <= string_length(str); i++) {
	var c =  string_char_at(str, i)
	var t = current_time / 200 + i
	draw_text(x, y + cos(t), c)
	x += 8
	if (c == "\n") {
		y += 10
		x = x0
	}
}