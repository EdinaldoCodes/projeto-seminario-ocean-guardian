function mudar_estado(novo_estado) {
    
<<<<<<< HEAD
    //Se ja estiver no estado não vai executar o código desta funcao
=======
    // Se já estamos nesse estado, não faça nada
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
    if (global.game_state == novo_estado) {
        exit;
    }
    
<<<<<<< HEAD

    var estado_anterior = global.game_state;
    
 
=======
    // --- Lógica de SAÍDA (Antes de mudar) ---
    var _estado_anterior = global.game_state;
    
    // Se estamos indo para AJUSTES, salvamos a sala atual
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
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
			
        
<<<<<<< HEAD
        // Se veio de Pause OU dos Ajustes, apenas retoma o áudio
        if (estado_anterior == ESTADO.PAUSADO || estado_anterior == ESTADO.AJUSTES) {
=======
        // Se veio de Pause OU dos Ajustes, apenas retomamos o áudio
        if (_estado_anterior == ESTADO.PAUSADO || _estado_anterior == ESTADO.AJUSTES) {
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
            
            // Se a música estiver pausada, despausa
            if (audio_is_paused(global.musica_atual)) {
                audio_resume_sound(global.musica_atual);
            }
<<<<<<< HEAD
            // Se ela parou por troca de sala, verifica e toca se necessário
=======
            // Se por acaso ela parou (por troca de sala), verificamos e tocamos se necessário
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
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
            
<<<<<<< HEAD
            // Pausa apenas a música atual, não TUDO
=======
            // Pausa apenas a música atual, não TUDO.
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
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
<<<<<<< HEAD
    
=======
            
            // Para a música e toca o som de fracasso (sem loop)
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
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
<<<<<<< HEAD
			tocar_musica(Cr_ditos06,false);
            global.pause = true; 

            
=======
            global.pause = true; 

            
            // Toca a música dos créditos
            //tocar_musica(M_sicaCreditos, true); 
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
            break;
			
		case ESTADO.FIM_DE_FASE:
		    exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_fim_de_fase(true);
            tocar_musica(noone);
<<<<<<< HEAD
			tocar_musica(vitoria03,false);
=======
			tocar_musica(vitoria01,false);
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
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
<<<<<<< HEAD
		
=======
 
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
            break;

    }
}
