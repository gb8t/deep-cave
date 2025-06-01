// Tanque de combustível:
global.precoTanqueBase = 1000;     // Preço inicial
global.preco_upgrade_tanque = function () {
    return floor(global.precoTanqueBase * power(2, global.nivelTanque));
};

// Motor, determina a velocidade:
global.precoMotorBase = 2300 // Preço inicial
global.preco_upgrade_motor = function () {
    return floor(global.precoMotorBase * power(2, global.nivelMotor));
};

// Eficiencia do motor, determina o consumo de combustivel:
global.precoMotorEficiencia = 10000 // Preço inicial
global.preco_upgrade_motor_eficiencia = function () {
    return floor(global.precoMotorEficiencia * power(2, global.nivelMotorEficiencia));
};

// Sorte, influencia no dinheiro ganho ao coletar minerios
global.precoSorte = 1000
global.preco_upgrade_sorte = function () {
    return floor(global.precoSorte * power(2, global.nivelSorte));
};

//global.money = 100000 // Debug
show_debug_message("===== STATUS DE MELHORIAS =====");
show_debug_message("Dinheiro: R$" + string(global.money));
show_debug_message("Minérios: " + string(global.num_minerios));
show_debug_message("Nível do Tanque: " + string(global.nivelTanque));
show_debug_message("Nível do Motor: " + string(global.nivelMotor));
show_debug_message("Eficiência do Motor: " + string(global.nivelMotorEficiencia));
show_debug_message("Nível de Sorte: " + string(global.nivelSorte));
show_debug_message("================================");