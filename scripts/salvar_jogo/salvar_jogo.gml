  /// Salva os dados do jogo em arquivo
function salvar_jogo() {
    // Calcula o tamanho necessário (3 inteiros: money, num_minerios, nivelTanque)
    var buffer = buffer_create(12, buffer_fixed, 1); // 3 x 4 bytes

    buffer_write(buffer, buffer_u32, global.money);
    buffer_write(buffer, buffer_u32, global.num_minerios);
    buffer_write(buffer, buffer_u32, global.nivelTanque);

    buffer_save(buffer, global.save_file);
    buffer_delete(buffer);
}