function carregar_jogo() {
    if (file_exists(global.save_file)) {
        var buffer = buffer_load(global.save_file);
<<<<<<< HEAD
        var tamanho = buffer_get_size(buffer);

        // Evita erro caso tenha um save antigo
        if (buffer_tell(buffer) + 4 <= tamanho) global.money = buffer_read(buffer, buffer_u32); else global.money = 0;
        if (buffer_tell(buffer) + 4 <= tamanho) global.num_minerios = buffer_read(buffer, buffer_u32); else global.num_minerios = 0;
        if (buffer_tell(buffer) + 4 <= tamanho) global.nivelTanque = buffer_read(buffer, buffer_u32); else global.nivelTanque = 0;
        if (buffer_tell(buffer) + 4 <= tamanho) global.nivelMotor = buffer_read(buffer, buffer_u32); else global.nivelMotor = 0;
        if (buffer_tell(buffer) + 4 <= tamanho) global.nivelMotorEficiencia = buffer_read(buffer, buffer_u32); else global.nivelMotorEfiencia = 0;
        if (buffer_tell(buffer) + 4 <= tamanho) global.nivelSorte = buffer_read(buffer, buffer_u32); else global.nivelSorte = 0;

        buffer_delete(buffer);
        return true;
=======

        global.money = buffer_read(buffer, buffer_u32);
        global.num_minerios = buffer_read(buffer, buffer_u32);
        global.nivelTanque = buffer_read(buffer, buffer_u32);

        buffer_delete(buffer);
		
        return true; // carregou com sucesso
>>>>>>> d33f587a038d1dbcb3761b2f7dac729716d2124f
    }
    return false;
}
