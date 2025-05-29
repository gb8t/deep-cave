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
fuel_max = 100 + (global.nivelTanque * 30);    // Capacidade total
fuel = fuel_max;     // Combustivel atual
fuel_rate = 0.2 - (global.nivelMotorEficiencia * 0.02);    // Gasto de combustivel

// Broca
drill = instance_create_layer(x, y, layer, obj_drill);
drill.depth--

// motor
dig_speed = 1.0 +( global.nivelMotor * 0.1);  // Velocidade de escavação

//Sorte
sorte = 1 +(global.nivelSorte * 0.4)   // Sorte

gems = 0
keys = 0

dead = 0

global.player = id