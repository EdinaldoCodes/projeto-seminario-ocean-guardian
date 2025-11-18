
display_set_gui_size(480, 270);

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
	FIM_DE_FASE,
    INDEFINIDO,
}

// Define o estado inicial
global.game_state = ESTADO.INDEFINIDO;
global.musica_atual = noone; // 'noone' significa "nenhuma música tocando"





