if (global.flash_alpha > 0) {
	global.flash_alpha -= .1
} else {
	global.flash_alpha = 0
}

global.money = min(global.money, 99999)