function upgrade_tanque(){
/// pgrade_tanque()

// apenas teste, enquanto n tem as artes para loja

var preco = global.precoTanqueBase + (global.nivelTanque * global.aumentoPrecoTanque);

if (global.money >= preco) {
    global.money -= preco;
    global.nivelTanque += 1;
    salvar_jogo(); // salva o progresso
    show_debug_message("Upgrade do tanque comprado!");
} else {
    show_debug_message("Dinheiro insuficiente.");
}

}