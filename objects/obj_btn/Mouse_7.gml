with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

if (image_index != 1) {
	exit
}

tocar_som(som_click)
global.reiniciar_musica = true;
image_index = 0
press();