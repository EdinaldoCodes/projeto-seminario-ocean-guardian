function mudar_estado(novo_estado) {
    
    // Se já estamos nesse estado, não faça nada
    if (global.game_state == novo_estado) {
        exit;
    }
    
    // --- Lógica de SAÍDA (Antes de mudar) ---
    var _estado_anterior = global.game_state;
    
    // Se estamos indo para AJUSTES, salvamos a sala atual
    if (novo_estado == ESTADO.AJUSTES) {
        global.sala_anterior = room;
    }

    global.game_state = novo_estado;
    
    // --- Lógica de ENTRADA do novo estado ---
    switch (novo_estado) {
        
        // --- Estado: Menu Principal ---
        case ESTADO.MENU:            
            exibir_menu_inicial(true);
            exibir_ui_hud(false);
			exibir_menu_ajustes(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_creditos(false);
            exibir_menu_fim_de_fase(false);    
			
             
			global.pause = false; 
			 
           
			break;
            
        // --- Estado: Jogando ---
        case ESTADO.JOGANDO:
            exibir_menu_inicial(false);
            exibir_ui_hud(true);
            exibir_menu_pause(false);
            exibir_game_over(false);
			exibir_menu_fim_de_fase(false);
            exibir_menu_ajustes(false);
			
        
        // Se veio de Pause OU dos Ajustes, apenas retomamos o áudio
        if (_estado_anterior == ESTADO.PAUSADO || _estado_anterior == ESTADO.AJUSTES) {
            
            // Se a música estiver pausada, despausa
            if (audio_is_paused(global.musica_atual)) {
                audio_resume_sound(global.musica_atual);
            }
            // Se por acaso ela parou (por troca de sala), verificamos e tocamos se necessário
            else if (!audio_is_playing(global.musica_atual)) {
                 tocar_musica(global.musica_atual, true);
            }
		}
        
        global.pause = false;
        break;
            
        // --- Estado: Pausado ---
        case ESTADO.PAUSADO:
            exibir_ui_hud(false); 
            exibir_menu_pause(true);
            
            // Pausa apenas a música atual, não TUDO.
            if (audio_is_playing(global.musica_atual)) {
                audio_pause_sound(global.musica_atual);
            }
            
            global.pause = true;
            break;
            
        // --- Estado: Game Over ---
        case ESTADO.GAMEOVER:
            exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(true);
            
            // Para a música e toca o som de fracasso (sem loop)
			tocar_musica(Fracasso01,false);
            
            global.pause = true;
            break;
        
        // --- Estado: Créditos ---
        case ESTADO.CREDITOS:
            exibir_menu_inicial(false);
            exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_creditos(true);
            global.pause = true; 

            
            // Toca a música dos créditos
            //tocar_musica(M_sicaCreditos, true); 
            break;
			
		case ESTADO.FIM_DE_FASE:
		    exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_fim_de_fase(true);
            tocar_musica(noone);
			tocar_musica(vitoria01,false);
			global.pause = true; 
			break;
			
		
		// --- Estado: MENU AJUSTES ---
        case ESTADO.AJUSTES:
            exibir_menu_inicial(false);
            exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_ajustes(true);
            global.pause = true; 
 
            break;

    }
}
