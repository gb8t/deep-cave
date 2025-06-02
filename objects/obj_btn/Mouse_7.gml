if (off or image_index != 1) {
	exit
}

with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

global.reiniciar_musica = true;
image_index = 0
var err = press() 
tocar_som(err ? som_erro : som_click)