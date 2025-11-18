/// function gerenciar_musica(som_index, loop = true)
/// paramametro som_index O som para tocar (ou 'noone' para parar)
/// param {loop=true] Se a música deve ser em loop

function gerenciar_musica(som_index, loop = true) {
    
    // Se a música que queremos tocar JÁ é a que está tocando, não faça nada.
    if (global.musica_atual == som_index) {
        exit;
    }
    
    // Se uma música diferente estava tocando, pare-a.
    if (audio_is_playing(global.musica_atual)) {
        audio_stop_sound(global.musica_atual);
    }
    
    // Atualiza o rastreador com a nova música
    global.musica_atual = som_index;
    
    // Toca a nova música (se ela não for 'noone')
    if (global.musica_atual != noone) {
        audio_play_sound(global.musica_atual, 10, loop); // Prioridade 10, com loop
    }
}