// Teste de logica, enquanto n tem o design

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);

// === INFOS GERAIS ===
draw_text(20, 20, "Dinheiro: R$" + string(global.money));

// === CONSTANTES DO BOTÃO ===
var btn_w = 160;
var btn_h = 30;
var btn_x = 215; // X fixo à direita
var btn_y_base = 50; // Y inicial dos botões
var spacing = 50; // Espaço vertical entre os blocos

// === UPGRADE TANQUE ===
var precoTanque = global.preco_upgrade_tanque();
draw_text(20, 50, "Nível do Tanque: " + string(global.nivelTanque));
draw_text(20, 70, "Preço Upgrade: R$" + string(precoTanque));
draw_set_color(c_blue);
draw_rectangle(btn_x, btn_y_base, btn_x + btn_w, btn_y_base + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, btn_y_base + 8, "Upgrade Tanque");

// === UPGRADE MOTOR ===
var precoMotor = global.preco_upgrade_motor();
var motor_y = btn_y_base + spacing;
draw_text(20, motor_y, "Nível do Motor: " + string(global.nivelMotor));
draw_text(20, motor_y + 20, "Preço Upgrade: R$" + string(precoMotor));
draw_set_color(c_blue);
draw_rectangle(btn_x, motor_y, btn_x + btn_w, motor_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, motor_y + 8, "Upgrade Motor");

// === UPGRADE EFICIÊNCIA ===
var precoEficiencia = global.preco_upgrade_motor_eficiencia();
var efic_y = motor_y + spacing;
draw_text(20, efic_y, "Nível Eficiência: " + string(global.nivelMotorEficiencia));
draw_text(20, efic_y + 20, "Preço Upgrade: R$" + string(precoEficiencia));
draw_set_color(c_blue);
draw_rectangle(btn_x, efic_y, btn_x + btn_w, efic_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, efic_y + 8, "Upgrade Eficiência");

// === UPGRADE SORTE ===
var precoSorte = global.preco_upgrade_sorte();
var sorte_y = efic_y + spacing;
draw_text(20, sorte_y, "Nível de Sorte: " + string(global.nivelSorte));
draw_text(20, sorte_y + 20, "Preço Upgrade: R$" + string(precoSorte));
draw_set_color(c_blue);
draw_rectangle(btn_x, sorte_y, btn_x + btn_w, sorte_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, sorte_y + 8, "Upgrade Sorte");

// === BOTÃO VOLTAR AO MENU ===
var voltar_y = sorte_y + spacing;

draw_set_color(c_red);
draw_rectangle(btn_x, voltar_y, btn_x + btn_w, voltar_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 10, voltar_y + 8, "Voltar ao Menu");

