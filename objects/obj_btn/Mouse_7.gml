// controla se vai direcionar para um novo jogo ou apenas resumir o atual
if (global.pause) {
    global.pause = false;
	image_index = 1
	instance_deactivate_layer("menu");

} else {
    press();
}
