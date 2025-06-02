toggle = global.musica
text = "MUSICA"
press = function() {
	global.musica = !global.musica
	if (global.musica) {
		obj_som.tocar_musica(som_menu)
	} else {
		obj_som.parar_musica()
	}
}