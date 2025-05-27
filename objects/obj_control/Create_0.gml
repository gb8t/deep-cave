// Definir o nome do arquivo de save
global.save_file = "savegame.sav";

// Tenta carregar o save
if (!carregar_jogo()) {
    // Se não carregou, inicializa os valores padrão
    global.money = 0;        // Dinheiro inicial
    global.num_minerios = 0; // Quantidade de minerios inicial
    global.nivelTanque = 0;  // Nivel do tanque
}

// Referência global para o controlador
global.game = id;

// Sistema de upgrades/loja

// Tanque de combustível
global.precoTanqueBase = 100;     // Preço inicial
global.aumentoPrecoTanque = 50;   // Quanto o preco aumenta a cada nivel

