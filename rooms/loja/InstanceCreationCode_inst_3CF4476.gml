text = "$" + string(global.preco_upgrade_motor())
press = function() {
	upgrade_motor()
	text = "$" + string(global.preco_upgrade_motor())
	with (inst_52428BB4) {
		text = "MOTOR: " + string(global.nivelMotor)
	}
}