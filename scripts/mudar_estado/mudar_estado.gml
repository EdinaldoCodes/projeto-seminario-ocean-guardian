function mudar_estado(novo_estado) {
    
    // Se já estamos nesse estado, não faça nada
    if (global.game_state == novo_estado) {
        exit;
    }
    
    // --- Lógica de SAÍDA do estado antigo ---
    // (Útil se precisar salvar algo antes de mudar)
    var _estado_anterior = global.game_state;
    
    
    // Atualiza o estado
    global.game_state = novo_estado;
    
    // --- Lógica de ENTRADA do novo estado ---
    switch (novo_estado) {
        
        // --- Estado: Menu Principal ---
        case ESTADO.MENU:            
            exibir_menu_inicial(true);
            exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_creditos(false);
            exibir_menu_fim_de_fase(false);
            //gerenciar_musica(M_sicaMenu, true);
            gerenciar_musica(noone); 
    
            global.pause = false; 
            break;
            
        // --- Estado: Jogando ---
        case ESTADO.JOGANDO:
            exibir_menu_inicial(false);
            exibir_ui_hud(true);
            exibir_menu_pause(false);
            exibir_game_over(false);
			exibir_menu_fim_de_fase(false);
            
            // Lógica de pause/resume
            if (_estado_anterior == ESTADO.PAUSADO) {
                // Se estávamos pausados, apenas retome a música
                audio_resume_sound(global.musica_atual);
            } else {
                // Se viemos do Menu ou outra tela, inicie a música da fase
                gerenciar_musica(M_sicaTema02, true);
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
            gerenciar_musica(noone); // 'noone' vai parar a música da fase
            audio_play_sound(Fracasso01, 10, false); 
            
            global.pause = true;
            break;
        
        // --- Estado: Créditos ---
        case ESTADO.CREDITOS:
            exibir_menu_inicial(false);
            exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            
            global.pause = true; 

            
            // Toca a música dos créditos
            //gerenciar_musica(M_sicaCreditos, true); 
            break;
			
		case ESTADO.FIM_DE_FASE:
		    exibir_ui_hud(false);
            exibir_menu_pause(false);
            exibir_game_over(false);
            exibir_menu_fim_de_fase(true);
            gerenciar_musica(noone);
			//audio_play_sound(, 10, false); 
			
			global.pause = true; 
			break;

    }
}
