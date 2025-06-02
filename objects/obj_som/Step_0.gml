switch (room) {
case inicial:
case loja:
case credits:
case config:
    tocar_musica(som_menu);
    break;
        
case room1:
	if (instance_exists(global.player)) {
	    if (!global.player.dead && global.reiniciar_musica) {
	        tocar_musica(som_gameplay);
	        global.reiniciar_musica = false;
	    }
	}
	break;

default:
	parar_musica()
}
