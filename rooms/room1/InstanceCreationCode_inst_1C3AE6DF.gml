text = "JOGAR"
press = function() {
	// controla se vai direcionar para um novo jogo ou apenas resumir o atual
	if (global.pause) {
	    global.pause = false;
		instance_deactivate_layer("menu");
		instance_activate_layer("menu2");
	} else {
		room_restart()
	}
}