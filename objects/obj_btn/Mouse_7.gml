with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

if (image_index != 1) {
	exit
}

global.reiniciar_musica = true;
image_index = 0
press();
tocar_som(som_click)