function upgrade_sorte(){

var precoSorte = global.preco_upgrade_sorte();

    if (global.money >= precoSorte) {
		if (global.nivelSorte < 10) {
			global.money -= precoSorte;
			global.nivelSorte += 1;
			salvar_jogo(); // Salva progresso
			show_debug_message("Upgrade dasorte comprado!");
		}
    } else {
        show_debug_message("Dinheiro insuficiente!");
    }
}