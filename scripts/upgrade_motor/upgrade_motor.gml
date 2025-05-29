function upgrade_motor(){

var precoMotor = global.preco_upgrade_motor();

    if (global.money >= precoMotor) {
		if (global.nivelMotor < 10) {
			global.money -= precoMotor;
			global.nivelMotor += 1;
			salvar_jogo(); // Salva progresso
			show_debug_message("Upgrade do motor comprado!");
		}
    } else {
        show_debug_message("Dinheiro insuficiente!");
    }
}