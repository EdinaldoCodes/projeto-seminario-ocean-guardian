// Impede que este objeto seja duplicado se você voltar ao menu
if (instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

// Define os estados do jogo
enum ESTADO {
    MENU,
    JOGANDO,
    PAUSADO,
    GAMEOVER,
	CREDITOS,
	AJUSTES,
	FIM_DE_FASE,
    INDEFINIDO,
}

// Define o estado inicial
global.game_state = ESTADO.INDEFINIDO;
global.musica_atual = noone; 
global.efeito_sonoro_atual = noone; 
global.config_musica = true;
global.config_efeito_sonoro= true; 
global.sala_anterior = -1; // Guardar o ID da sala anterior



