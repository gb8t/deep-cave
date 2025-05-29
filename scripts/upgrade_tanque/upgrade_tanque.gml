function upgrade_tanque(){
/// pgrade_tanque()

// apenas teste, enquanto n tem as artes para loja

var precoTanque = global.preco_upgrade_tanque();

    if (global.money >= precoTanque) {
		if (global.nivelTanque < 10) {
			global.money -= precoTanque;
			global.nivelTanque += 1;
			salvar_jogo(); // Salva progresso
			show_debug_message("Upgrade do tanque comprado!");
		}
    } else {
        show_debug_message("Dinheiro insuficiente!");
    }

}

