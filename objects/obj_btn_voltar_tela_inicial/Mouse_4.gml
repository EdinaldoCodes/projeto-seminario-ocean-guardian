// --- Menus Dedicados ---
// créditos ou configurações - acessadas pelo Menu Principal
if (room == Room_Tela_Creditos || room == Room_Tela_configuracoes) {
    navegar_para(Room_Tela_Inicial);
    exit; 
}

// --- Navegação de Interface/Layers - Dentro do Jogo ---

// Se estiver na camada de ajustes vindo do pause, volta para o pause
if (global.game_state == ESTADO.AJUSTES) {
    
    // Esconde a layer de ajustes
    exibir_menu_ajustes(false); 
    
    mudar_estado(ESTADO.PAUSADO);
    exit;
}

// Se esta pausado volta para o jogo
if (global.game_state == ESTADO.PAUSADO) {
    
    global.pause = false;
    
    mudar_estado(ESTADO.JOGANDO);
    exit;
}