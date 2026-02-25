<<<<<<< HEAD
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
=======
/// function tocar_musica(som_index, loop = true)
/// paramametro som_index O som para tocar
/// param loop=true Se a música deve ser em loop

//TOCA A MUSICA
function tocar_musica(som_index, loop = true) {
    // 
    if (global.musica_atual == som_index) {
		exit;
	}
    // Para a música anterior (se houver)
    if (global.musica_atual != noone) {
        if (audio_is_playing(global.musica_atual)) {
            audio_stop_sound(global.musica_atual);
        }
    }

    // Atualiza a variável global
    global.musica_atual = som_index;

    // Só dá o play SE a configuração permitir e a música não for 'noone'
    if (global.config_musica == true && global.musica_atual != noone) {
        audio_play_sound(global.musica_atual, 10, loop);
    }
}

//TOCA EFEITO SONORO
function tocar_sfx(sfx_index, loop = false) {

    // Atualiza a variável global
    global.efeito_sonoro_atual = sfx_index;

    // Só dá o play SE a configuração permitir e o efeito sonoro não for 'noone'
    if (global.config_efeito_sonoro == true && global.efeito_sonoro_atual != noone) {
        audio_play_sound(global.efeito_sonoro_atual, 10, false);
    }
};	

// Elaborar
function setVolumeMusica(vol) {
	global.volume_musica = clamp(vol,0,1);
	
};

function setVolumeSfx(vol) {
	global.volume_sfx= clamp(vol,0,1);	
	
		

	
};

function setVolumeGeral(vol) {
	global.volume_musica = clamp(vol,0,1);	
	global.volume_sfx = clamp(vol,0,1);
	
};

//ATIVA/DESATIVA MUSICA
function alternar_som_global(ativar) {
    global.config_musica = ativar;
    
    if (ativar == false) {
        // MODO MUDO:
        // Em vez de parar (stop), setar o volume mestre para 0.
        // Isso evita bugs de lógica ao retomar.
        audio_stop_sound(global.musica_atual)
    } 
    else {
        // MODO SOM:
        audio_master_gain(1); // Retorna o volume total
        
        // Se a música tinha parado por algum outro motivo, retomamos
        if (global.musica_atual != noone && !audio_is_playing(global.musica_atual)) {
             audio_play_sound(global.musica_atual, 10, true);
        }
    }
}

//ATIVA/DESATIVA EFEITO SONORO
function alternar_efeito_sonoro_global(ativar) {
    global.config_efeito_sonoro = ativar;
    
    if (ativar == false) {
        // MODO MUDO:
        // Em vez de parar (stop), setar o volume mestre para 0.
        // Isso evita bugs de lógica ao retomar.
        audio_stop_sound(global.efeito_sonoro_atual);
    } 
    else {
        // MODO SOM:
        audio_master_gain(1); // Retorna o volume total
        
        // Se a música tinha parado por algum outro motivo, retomamos
        if (global.efeito_sonoro_atual != noone && !audio_is_playing(global.efeito_sonoro_atual)) {
             audio_play_sound(global.efeito_sonoro_atual, 10, false);
        }
    }
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
}