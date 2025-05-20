// Salvar os dados em buffer (especidifo para num inteiros)
var buffer = buffer_create(8, buffer_fixed, 1); // 2 x 4 bytes, precisa aumentar quando add outros dados

buffer_write(buffer, buffer_u32, global.money);
buffer_write(buffer, buffer_u32, global.num_minerios);
buffer_save(buffer, global.save_file);

buffer_delete(buffer);

room_restart();