with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

if (image_index != 1) {
	exit
}

toggle = !toggle
press();
tocar_som(som_click)