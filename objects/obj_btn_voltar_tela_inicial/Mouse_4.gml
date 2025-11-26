// Botão Voltar Genérico

// 1. Se a sala anterior era o MENU, volta para o menu
if (global.sala_anterior == Room_Tela_Inicial || global.sala_anterior == -1) {
    
	navegar_para(Room_Tela_Inicial, false); 
    // O obj_gamemanager vai detectar a sala no "Room Start" e setar ESTADO.MENU
} 
// 2. Se a sala anterior era o JOGO (Fase 1, etc)
else {
    // Se estamos na tela de Ajustes (que é uma Room separada)
    if (room == Room_Tela_configuracoes) {
        // Voltamos fisicamente para a sala do jogo
		
        navegar_para(global.sala_anterior, false);
    } 
    // Se estamos apenas com o menu de Pause aberto (mesma Room)
    else {
        // Apenas fecha o menu e despausa
        exibir_menu_ajustes(false);
		mudar_estado(ESTADO.PAUSADO);
		
    }
}

