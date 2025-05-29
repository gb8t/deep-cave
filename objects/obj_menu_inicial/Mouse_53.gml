var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx > btn_jogar_x && mx < btn_jogar_x + btn_jogar_w &&
<<<<<<< HEAD
    my > btn_jogar_y && my < btn_jogar_y + btn_jogar_h)
{
	btn_jogar_down = true
}

if (mx > btn_loja_x && mx < btn_loja_x + btn_loja_w &&
    my > btn_loja_y && my < btn_loja_y + btn_loja_h)
{
	btn_loja_down = true
=======
    my > btn_jogar_y && my < btn_jogar_y + btn_jogar_h)
{
	btn_jogar_down = true
}

if (mx > btn_loja_x && mx < btn_loja_x + btn_loja_w &&
    my > btn_loja_y && my < btn_loja_y + btn_loja_h)
{
	btn_loja_down = true
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
}
