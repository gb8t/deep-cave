function carregar_jogo() {
    if (file_exists(global.save_file)) {
        var buffer = buffer_load(global.save_file);

        global.money = buffer_read(buffer, buffer_u32);
        global.num_minerios = buffer_read(buffer, buffer_u32);
        global.nivelTanque = buffer_read(buffer, buffer_u32);

        buffer_delete(buffer);
		
        return true; // carregou com sucesso
    }
    return false; // não carregou (arquivo não existe)
}
