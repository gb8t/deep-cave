var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx > btn_jogar_x && mx < btn_jogar_x + btn_jogar_w &&
    my > btn_jogar_y && my < btn_jogar_y + btn_jogar_h) {
 
    room_goto(room1);
}

if (mx > btn_loja_x && mx < btn_loja_x + btn_loja_w &&
    my > btn_loja_y && my < btn_loja_y + btn_loja_h) {
  
    room_goto(loja);
}

btn_jogar_down = false
btn_loja_down = false