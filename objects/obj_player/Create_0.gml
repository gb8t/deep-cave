meters = 0; // Profundidade
shake = 0;  // Tremor de tela

mining = noone;

item_spawn = 0;
enemy_spawn = 20;

// Combustível
fuel_max = 200 + (global.nivelTanque * 50);    // Capacidade total
fuel = fuel_max;     // Combustivel atual
fuel_rate = 0.2 - (global.nivelMotorEficiencia * 0.02);    // Gasto de combustivel
fuel_blink = 0

// Broca
drill = instance_create_layer(x, y, layer, obj_drill);
drill.depth--

// motor
dig_speed = 1.0 +( global.nivelMotor * 0.1);  // Velocidade de escavação
speed_mt = 1 // Multiplicador de velocidade

//Sorte
sorte = 1 +(global.nivelSorte * 0.4)   // Sorte

gems = 0
keys = 0

dead = 0

global.player = id

image_speed = .5

reach_hscore = false

global.pause = false