<<<<<<< HEAD
display_set_gui_size(room_width, room_height);

draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

// Botão Jogar
draw_sprite_ext(spr_menu, btn_jogar_down ? 2 : 1, btn_jogar_x, btn_jogar_y, btn_jogar_w / 16, btn_jogar_h / 16, 0, -1, 1)
draw_set_color(btn_jogar_down ? c_ltgray : c_white)
draw_text(room_width / 2, btn_jogar_y + btn_jogar_h / 2, "JOGAR");

// Botão Loja
draw_sprite_ext(spr_menu, btn_loja_down ? 2 : 1, btn_loja_x, btn_loja_y, btn_loja_w / 16, btn_loja_h / 16, 0, -1, 1)
draw_set_color(btn_loja_down ? c_ltgray : c_white)
=======
display_set_gui_size(room_width, room_height);

draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

// Botão Jogar
draw_sprite_ext(spr_menu, btn_jogar_down ? 2 : 1, btn_jogar_x, btn_jogar_y, btn_jogar_w / 16, btn_jogar_h / 16, 0, -1, 1)
draw_set_color(btn_jogar_down ? c_ltgray : c_white)
draw_text(room_width / 2, btn_jogar_y + btn_jogar_h / 2, "JOGAR");

// Botão Loja
draw_sprite_ext(spr_menu, btn_loja_down ? 2 : 1, btn_loja_x, btn_loja_y, btn_loja_w / 16, btn_loja_h / 16, 0, -1, 1)
draw_set_color(btn_loja_down ? c_ltgray : c_white)
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
draw_text(room_width / 2, btn_loja_y + btn_loja_h / 2, "LOJA");
