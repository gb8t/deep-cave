switch (room) {
case inicial:
case loja:
case credits:
case config:
    tocar_musica(som_menu);
    break;
        
case jogo:
	tocar_musica(som_gameplay);
	break;

default:
	parar_musica()
}
show_debug_message(room)