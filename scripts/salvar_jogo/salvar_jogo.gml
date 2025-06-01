  /// Salva os dados do jogo em arquivo
function salvar_jogo() {
    // Calcula o tamanho necessário (3 inteiros: money, num_minerios, nivelTanque)
    var buffer = buffer_create(32, buffer_fixed, 1);

    buffer_write(buffer, buffer_u32, global.money);
    buffer_write(buffer, buffer_u32, global.num_minerios);
    buffer_write(buffer, buffer_u32, global.nivelTanque);
	buffer_write(buffer, buffer_u32, global.nivelMotor);
	buffer_write(buffer, buffer_u32, global.nivelMotorEficiencia);
	buffer_write(buffer, buffer_u32, global.nivelSorte);
	buffer_write(buffer, buffer_u32, global.high_score);

    buffer_save(buffer, global.save_file);
    buffer_delete(buffer);
}