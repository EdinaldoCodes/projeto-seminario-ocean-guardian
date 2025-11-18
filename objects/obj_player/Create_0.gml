//image_xscale = 6;
//image_yscale = 6;

global.oxigenio = 100;     //Variável de instancia
global.oxigenio_max = 100; //para o hud

//Essse alarme vai disparar a cada 1 segundo
// room_speed é a quantidade de frames em 1 segundo.
alarm[0] = room_speed;


// Define todos os estados possíveis para o jogador//
enum EPlayerState {
	Idle,  		
	Nadando,	
	Rushing,
	Disparando,
	sem_oxigenio,
}

// Define o estado inicial
estado = EPlayerState.Idle;

// Define as velocidades
spd_nado = 2;		
spd_rush = 3;		
spd_rotacao = 3;

//Direção Inicial onde o jogador está olhando
facing_horizontal = "right";

