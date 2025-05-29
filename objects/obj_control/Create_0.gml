randomize()

// Definir o nome do arquivo de save
global.save_file = "savegame.sav";

global.money = 0;        // Dinheiro inicial
global.num_minerios = 0; // Quantidade de minerios inicial
global.nivelTanque = 0;  // Nivel do tanque
global.nivelMotor = 0;   // Nivel do motor
global.nivelMotorEficiencia = 0; // Nivel da eficiencia de consumo do motor
global.nivelSorte = 0;    // Nivel da sorte, influencia no dinheiro ganho

// Tenta carregar o save
carregar_jogo()

// Referência global para o controlador
global.game = id;

// Sistema de upgrades/loja

//-------------------------------------------------------------------------------------
// Tanque de combustível:
global.precoTanqueBase = 1000;     // Preço inicial

// Calcula o preço atual do upgrade do tanque, exponencialmente
global.preco_upgrade_tanque = function () {
    return floor(global.precoTanqueBase * power(2, global.nivelTanque));
};

//------------------------------------------------------------------------------------
// Motor, determina a velocidade:
global.precoMotorBase = 2300 // Preço inicial

// Calcula o preço atual do upgrade do motor, exponencialmente
global.preco_upgrade_motor = function () {
    return floor(global.precoMotorBase * power(2, global.nivelMotor));
};

//------------------------------------------------------------------------------------
// Eficiencia do motor, determina o consumo de combustivel:
global.precoMotorEficiencia = 10000 // Preço inicial

// Calcula o preço atual do upgrade do motor, exponencialmente
global.preco_upgrade_motor_eficiencia = function () {
    return floor(global.precoMotorEficiencia * power(2, global.nivelMotorEficiencia));
};

//------------------------------------------------------------------------------------
// Sorte, influencia no dinheiro ganho ao coletar minerios
global.precoSorte = 1000
global.preco_upgrade_sorte = function () {
    return floor(global.precoSorte * power(2, global.nivelSorte));
};

//------------------------------------------------------------------------------------
// APENAS TESTE, para ver se as melhorias estão sendo aplicadas ou se o save ta tudo certo

global.money = 1000000000 // Para n precisar jogar na fase de desenvolvimento
show_debug_message("===== STATUS DE MELHORIAS =====");
show_debug_message("Dinheiro: R$" + string(global.money));
show_debug_message("Minérios: " + string(global.num_minerios));
show_debug_message("Nível do Tanque: " + string(global.nivelTanque));
show_debug_message("Nível do Motor: " + string(global.nivelMotor));
show_debug_message("Eficiência do Motor: " + string(global.nivelMotorEficiencia));
show_debug_message("Nível de Sorte: " + string(global.nivelSorte));
show_debug_message("================================");


global.font = font_add_sprite(spr_font, ord(" "), false, 0)

global.flash_alpha = 0
