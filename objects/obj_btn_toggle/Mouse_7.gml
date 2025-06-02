with (obj_scroll) {
	if (abs(drag_speed) > limit) {
		exit
	}
}

if (image_index != 1) {
	exit
}

toggle = !toggle
var err = press();
tocar_som(err ? som_erro : som_click)