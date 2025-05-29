function upgrade_motor_eficiencia(){

var precoEficiencia = global.preco_upgrade_motor_eficiencia();

    if (global.money >= precoEficiencia) {
		if (global.nivelMotorEficiencia < 10) {
			global.money -= precoEficiencia;
			global.nivelMotorEficiencia += 1;
			salvar_jogo(); // Salva progresso
			show_debug_message("Upgrade da efiencia do motor comprado!");
		}
    } else {
        show_debug_message("Dinheiro insuficiente!");
    }
}