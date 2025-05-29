var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx > btn_jogar_x && mx < btn_jogar_x + btn_jogar_w &&
    my > btn_jogar_y && my < btn_jogar_y + btn_jogar_h) {
 
<<<<<<< HEAD
    room_goto(room1);
=======
    room_goto(room1); // Troque 'room1' pelo nome da sua room de jogo
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
}

if (mx > btn_loja_x && mx < btn_loja_x + btn_loja_w &&
    my > btn_loja_y && my < btn_loja_y + btn_loja_h) {
  
<<<<<<< HEAD
    room_goto(loja);
}

btn_jogar_down = false
=======
    room_goto(loja); // Troque 'room_loja' pelo nome da sua room da loja
}

btn_jogar_down = false
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
btn_loja_down = false