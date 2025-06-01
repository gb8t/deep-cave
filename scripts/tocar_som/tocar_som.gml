function tocar_som(nome) {
    switch (nome) {
        case "click":
            audio_play_sound(som_click, 10, false);
            break;

        case "bomba":
            audio_play_sound(som_bomba, 10, false);
            break;

        case "minerio":
            audio_play_sound(som_minerio, 10, false);
            break;
		
		case "morte":
            audio_play_sound(som_morte, 10, false);
            break;
			
		case "monstro":
            audio_play_sound(som_monstro, 10, false);
            break;
    }
}