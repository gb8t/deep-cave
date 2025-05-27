draw_set_color(c_black);
draw_set_font(-1); // Fonte padrão

// Botão Jogar
draw_rectangle(btn_jogar_x, btn_jogar_y, btn_jogar_x + btn_jogar_w, btn_jogar_y + btn_jogar_h, false);
draw_set_color(c_white);
draw_text(btn_jogar_x + 50, btn_jogar_y + 15, "Jogar");

// Botão Loja
draw_set_color(c_black);
draw_rectangle(btn_loja_x, btn_loja_y, btn_loja_x + btn_loja_w, btn_loja_y + btn_loja_h, false);
draw_set_color(c_white);
draw_text(btn_loja_x + 70, btn_loja_y + 15, "Loja");
