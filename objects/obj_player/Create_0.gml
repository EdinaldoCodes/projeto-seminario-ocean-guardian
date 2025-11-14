//image_xscale = 6;
//image_yscale = 6;

// Define todos os estados possíveis para o jogador//
enum EPlayerState {
	Idle,  		
	Nadando,	
	Rushing,
	Disparando,
}

// Define o estado inicial
estado = EPlayerState.Idle;

// Define as velocidades
spd_nado = 2;		
spd_rush = 3;		
spd_rotacao = 3;

//Direção Inicial onde o jogador está olhando
facing_horizontal = "right";