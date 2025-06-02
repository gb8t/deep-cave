function tocar_som(sfx) {
	if (global.efeitos) return
	audio_play_sound(sfx, 10, false);
}