switch (room) {
    case inicial:
    case loja:
    case credits:
        tocar_musica(som_menu);
        break;
        
    case room1:
    if (instance_exists(global.player)) {
        if (global.player.dead == 0 && global.reiniciar_musica) {
            tocar_musica(som_gameplay);
            global.reiniciar_musica = false;
        }
    }
    break;


        

    default:
        if (audio_is_playing(global.musica_atual)) {
            audio_stop_sound(global.musica_atual);
        }
        global.musica_recurso = -1;
        global.musica_atual = -1;
}
