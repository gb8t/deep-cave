if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var btn_w = 160;
    var btn_h = 30;
    var btn_x = 250;
    var btn_y_base = 50;
    var spacing = 50;

    // Upgrade Tanque
    if (mx > btn_x && mx < btn_x + btn_w &&
        my > btn_y_base && my < btn_y_base + btn_h) {
        upgrade_tanque();
    }

    // Upgrade Motor
    var motor_y = btn_y_base + spacing;
    if (mx > btn_x && mx < btn_x + btn_w &&
        my > motor_y && my < motor_y + btn_h) {
        upgrade_motor();
    }

    // Upgrade Eficiência
    var efic_y = motor_y + spacing;
    if (mx > btn_x && mx < btn_x + btn_w &&
        my > efic_y && my < efic_y + btn_h) {
        upgrade_motor_eficiencia();
    }

    // Upgrade Sorte
    var sorte_y = efic_y + spacing;
    if (mx > btn_x && mx < btn_x + btn_w &&
        my > sorte_y && my < sorte_y + btn_h) {
        upgrade_sorte();
    }
}
