// --- MÚSICA ---

/// Toca uma música, trocando a anterior automaticamente
function tocar_musica(som_index, loop = true) 
{
    // Se o som for noone, apenas para a música atual
    if (som_index == noone) {
        if (global.musica_atual != noone && audio_is_playing(global.musica_atual)) {
            audio_stop_sound(global.musica_atual);
        }
        global.musica_atual = noone;
        exit;
    }

    if (global.musica_atual == som_index) {
        // se a musica parou sozinha, manda tocar de novo
        // Se ela esta tocando, saí da função exit para não reiniciar
        if (audio_is_playing(global.musica_atual)) {
            exit; 
        }
    }

    // 3. Troca de Música: Para a anterior se existir
    if (global.musica_atual != noone) {
        if (audio_is_playing(global.musica_atual)) {
            audio_stop_sound(global.musica_atual);
        }
    }

    // Atualiza o registro
    global.musica_atual = som_index;

    // Toca (somente se a configuração permitir)
    if (global.config_musica) {
        audio_play_sound(global.musica_atual, 10, loop);
    }
}

function alternar_som_global(ativar) 
{
    global.config_musica = ativar;
    
    if (!ativar) {
        // Se desativou, para tudo
        if (global.musica_atual != noone) audio_stop_sound(global.musica_atual);
    } 
    else {
        // Se ativou, retoma a música atual se houver uma registrada
        if (global.musica_atual != noone && !audio_is_playing(global.musica_atual)) {
             audio_play_sound(global.musica_atual, 10, true);
        }
    }
}


// --- EFEITOS SONOROS ---
function tocar_sfx(sfx_index, loop = false) 
{
   
    global.efeito_sonoro_atual = sfx_index;

    if (global.config_efeito_sonoro && sfx_index != noone) {
        audio_play_sound(sfx_index, 10, loop);
    }
}

function alternar_efeito_sonoro_global(ativar) 
{
    global.config_efeito_sonoro = ativar;
    

    if (!ativar) {
        audio_stop_sound(global.efeito_sonoro_atual); 
    
    }
}