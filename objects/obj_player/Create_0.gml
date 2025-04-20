// Variáveis globais
global.mining = noone;  // Item sendo minerado
global.meters = 0; // Profundidade
global.screen_shake = 0; // Tremer a tela

// Variáveis
last_spawn = 0;

// Criar broca
drill = instance_create_layer(x, y, layer, obj_drill);
drill.image_speed = .5;
drill.depth = -1;
