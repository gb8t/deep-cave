randomize()

// Arquivo de save
global.save_file = "savegame.sav";

// Referência global para o controlador
global.game = id;

// Tenta carregar o save
//resetar_save()
if (!carregar_jogo()) {
	global.money = 0;        // Dinheiro inicial
	global.nivelTanque = 0;  // Nivel do tanque
	global.num_minerios = 0;
	global.nivelMotor = 0;   // Nivel do motor
	global.nivelMotorEficiencia = 0; // Nivel da eficiencia de consumo do motor
	global.nivelSorte = 0;    // Nivel da sorte, influencia no dinheiro ganho
<<<<<<< HEAD
	global.high_score = 0;
=======
	global.high_score = 0;
>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
}

global.font = font_add_sprite(spr_font, ord(" "), false, 0)

global.flash_alpha = 0
<<<<<<< HEAD

global.meters = 0

global.pause = false;
=======

global.meters = 0
>>>>>>> ca9f94a17a6201862b036338d029e968803a3607
