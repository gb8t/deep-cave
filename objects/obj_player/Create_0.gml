image_xscale = 2;
image_yscale = 2;

meters = 0; // Profundidade
shake = 0;  // Tremor de tela

mining = noone;

// Variáveis de toque
touch_active = false;
touch_start_x = 0;
touch_start_y = 0;
touch_current_x = 0;
touch_current_y = 0;

item_spawn = 0;
enemy_spawn = 20;

// Combustível
fuel = 100;         // Combustível atual
fuel_max = 100;     // Capacidade total
fuel_rate = 0.1;    // Gasto de combustivel

// Broca
drill = instance_create_layer(x, y, layer, obj_drill);
drill.depth = -1;
