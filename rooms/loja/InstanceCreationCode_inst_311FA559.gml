text = "$" + string(global.preco_upgrade_tanque())
press = function() {
	upgrade_tanque()
	text = "$" + string(global.preco_upgrade_tanque())
	with (inst_79F695F0) {
		text = "TANQUE: " + string(global.nivelTanque)
	}
}