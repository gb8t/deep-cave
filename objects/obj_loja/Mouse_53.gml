var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx > btn_x && mx < btn_x + btn_w &&
    my > btn_y && my < btn_y + btn_h) {

    var preco = global.precoTanqueBase + global.nivelTanque * global.aumentoPrecoTanque;

    if (global.money >= preco) {
        global.money -= preco;
        global.nivelTanque += 1;
        salvar_jogo(); // Salva progresso
    } else {
        show_debug_message("Dinheiro insuficiente!");
    }
}
