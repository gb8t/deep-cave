text = "$" + string(global.preco_upgrade_sorte())
press = function() {
	upgrade_sorte()
	text = "$" + string(global.preco_upgrade_sorte())
	with (inst_1A5FA16F) {
		text = "SORTE: " + string(global.nivelSorte)
	}
}