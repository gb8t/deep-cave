display_set_gui_size(room_width, room_height);

draw_set_color(c_white)
draw_set_alpha(global.flash_alpha)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)