credits_str = [
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
	"PESSOA\nFUNCAO",
]

var h = 64
for (var i = 0; i < array_length(credits_str); i++) {
	var str = credits_str[i]
	h += string_height(str) + 8
}
room_height = h
inst_37205C93.y = room_height - 24