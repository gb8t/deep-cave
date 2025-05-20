// Referência global para o controlador
global.game = id;

// Variáveis
global.money = 0; // Dinheiro a ser usado nos upgrades
global.num_minerios = 0; // Pode ser usado para mostrar recorde nas estatisticas ao fim da partida

// Sistema de save/load
global.save_file = "savegame.sav";

// Tenta carregar os dados salvos
if (file_exists(global.save_file)) {
    var buffer = buffer_load(global.save_file);
    global.money = buffer_read(buffer, buffer_u32);
    global.num_minerios = buffer_read(buffer, buffer_u32);
    buffer_delete(buffer);
}
