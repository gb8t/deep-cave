with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

if (image_index != 1) {
	exit
}

tocar_som(som_click)
toggle = !toggle
press();