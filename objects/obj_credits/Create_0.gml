credits_str = [
	"]GAME]\nDESIGN",
	"LUCAS\nMATEUS",
	"RICHARDY",
	" ",
	"]ARTIGO]",
	"FELIPE\nVIEIRA",
	"ALLYSON\nGOUVEIA",
	" ",
	"]CODIGO]",
	"PEDRO\nRIBEIRO",
	"BRUNO\nANDERSON",
	" ",
	"]ARTE]",
	"PEDRO\nRIBEIRO",
	" ",
	"]SOUND]\nDESIGN",
	"RICHARDY",
	" ",
	"]BALANCE]\nAMENTO",
	"BRUNO\nANDERSON",
	" ",
	"]MUSICA]",
	"MOODMODE",
	"AXTON\nCROLLEY",
	" ",
	"]EFEITOS]",
	"REDROX\nPETER\nPEPPER",
	"LIECIO",
	"FUPICAT",
	"NEEZEN",
]

var h = 64
for (var i = 0; i < array_length(credits_str); i++) {
	var str = credits_str[i]
	h += string_height(str) + 4
}
room_height = h
inst_37205C93.y = room_height - 24
