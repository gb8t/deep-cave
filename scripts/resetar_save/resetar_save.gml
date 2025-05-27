function resetar_save(){
/// resetar_save()
// Caso eu precise testar algo

if (file_exists(global.save_file)) {
    file_delete(global.save_file);
    show_debug_message("Save resetado com sucesso.");
} else {
    show_debug_message("Nenhum save encontrado para resetar.");
}

}