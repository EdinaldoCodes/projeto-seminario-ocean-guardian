// Gerencia o comportamento das Salas
if (room == Room_Tela_Inicial) {
    mudar_estado(ESTADO.MENU);
    tocar_musica(FundoGamePlay, true);
}

else if (room == Room_fase1) { 
    
    if (global.resetar_sessao == false) {
        mudar_estado(ESTADO.JOGANDO);
        
        // Garante que a música da fase volte a tocar se mudou nos ajustes
        if (global.config_musica) {
            if (!audio_is_playing(M_sicaTema02)) {
                 tocar_musica(M_sicaTema02, true);
            }
        }
    }
    // Se é um reset real 
    else {
        global.pause = false;
        global.oxigenio = 100;
        global.contador_lixo = 0;
		global.contador_lixo_max = 1; 
        
        global.resetar_sessao = false;
        mudar_estado(ESTADO.JOGANDO);
        tocar_musica(M_sicaTema02, true);
    }
}

else if (room == Room_fase2) {
        // Garante que a música da fase volte a tocar se mudou nos ajustes
        if (global.config_musica) {
            if (!audio_is_playing(M_sicaTema01)) {
                 tocar_musica(M_sicaTema01, true);
            }
        }
    
    // Se é um reset real 
   
    global.pause = false;
    global.oxigenio = 100;
    global.contador_lixo = 0;
	global.contador_lixo_max = 15; 
        
    global.resetar_sessao = false;
    mudar_estado(ESTADO.JOGANDO);
    tocar_musica(M_sicaTema01, true);
	
}

else if (room == Room_fase3) {
        // Garante que a música da fase volte a tocar se mudou nos ajustes
        if (global.config_musica) {
            if (!audio_is_playing(Cr_ditos01)) {
                 tocar_musica(Cr_ditos01, true);
            }
        }
    
    // Se é um reset real 
   
    global.pause = false;
    global.oxigenio = 100;
    global.contador_lixo = 0;
	global.contador_lixo_max = 20; 
        
    global.resetar_sessao = false;
    mudar_estado(ESTADO.JOGANDO);
    tocar_musica(Cr_ditos01, true);
	
}

else if (room == Room_Tela_configuracoes) {
    mudar_estado(ESTADO.AJUSTES);
}

else if (room == Room_Tela_Creditos) { 
    mudar_estado(ESTADO.CREDITOS);
}

