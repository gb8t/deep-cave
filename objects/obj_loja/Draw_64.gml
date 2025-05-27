draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);

// Mostrar informações
draw_text(20, 20, "Dinheiro: R$" + string(global.money));
draw_text(20, 50, "Nível do Tanque: " + string(global.nivelTanque));
draw_text(20, 80, "Preço do Upgrade: R$" + string(global.precoTanqueBase + global.nivelTanque * global.aumentoPrecoTanque));

// Desenha botão
draw_set_color(c_blue);
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, btn_y + 15, btn_text);
