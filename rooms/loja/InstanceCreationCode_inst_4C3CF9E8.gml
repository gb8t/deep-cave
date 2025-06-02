text = "$" + string(global.preco_upgrade_motor_eficiencia())
press = function() {
	upgrade_motor_eficiencia()
	text = "$" + string(global.preco_upgrade_motor_eficiencia())
	with (inst_17816E7D) {
		text = "EFIC.: " + string(global.nivelMotorEficiencia)
	}
}
is_off = function() {
	return global.money < global.preco_upgrade_motor_eficiencia()
}