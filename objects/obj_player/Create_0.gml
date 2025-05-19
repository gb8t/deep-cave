// Variáveis globais
global.mining = noone;          // Item sendo minerado
global.meters = 0;              // Profundidade
global.screen_shake = 0;        // Efeito de tremor de tela

// Variáveis de toque
touch_active = false;
touch_start_x = 0;
touch_start_y = 0;
touch_current_x = 0;
touch_current_y = 0;

// Variáveis de movimento
move_x = 0;
move_y = 0;
last_spawn = 0;

// Broca
drill = instance_create_layer(x, y, layer, obj_drill);
drill.image_speed = 0.5;
drill.depth = -1;

// Sistema de combustível, pode ser usado para o upgrade
fuel = 100;         // Combustível atual
fuel_max = 100;     // Capacidade total
fuel_rate = 0.1;    // Gasto de combustivel

// Variáveis de controle
max_angle = 45;         // Ângulo máximo da broca
turn_speed = 2.5;       // Velocidade de rotação da broca
dig_speed = 2.5;         // Velocidade de escavação
intro_y = room_height / 3;  

enemy_spawn = 500;

image_xscale = 2;
image_yscale = 2;