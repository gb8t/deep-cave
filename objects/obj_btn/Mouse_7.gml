with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}
tocar_som("click")
global.reiniciar_musica = true;
press();
image_index = 0