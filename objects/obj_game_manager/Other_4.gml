// Gerencia o comportamento ao ENTRAR em uma sala

global.pause = false; // despausa o jogo ao trocar de sala

switch (room) 
{
    // --- MENUS E TELAS ---
    case Room_Tela_Inicial:
        mudar_estado(ESTADO.MENU);
        tocar_musica(FundoGamePlay, true); 
        break;

    case Room_Tela_configuracoes:
        mudar_estado(ESTADO.AJUSTES);
		// mantém a anterior a música anterior
        
		break;

    case Room_Tela_Creditos:
        mudar_estado(ESTADO.CREDITOS);
        // mantém a anterior a música anterior
        
		break;

    // --- FASES DO JOGO ---
    case Room_fase1:
        mudar_estado(ESTADO.JOGANDO);
        global.contador_lixo_max = 10;
		global.decremento_oxigenio = 4;
        tocar_musica(M_sicaTema02, true);
        
		break;

    case Room_fase2:
        mudar_estado(ESTADO.JOGANDO);
        global.contador_lixo_max = 15;
		global.decremento_oxigenio = 4;
        tocar_musica(M_sicaTema01, true);
        
		break;

    case Room_fase3:
        mudar_estado(ESTADO.JOGANDO);
        global.contador_lixo_max = 20;
		global.decremento_oxigenio = 4;
        tocar_musica(Cr_ditos01, true);
        
		break;
}