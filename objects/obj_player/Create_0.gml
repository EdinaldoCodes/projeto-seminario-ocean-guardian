//image_xscale = 6;
//image_yscale = 6;

global.oxigenio = 100;     //Variável de instancia
global.oxigenio_max = 100; //para o hud

//Essse alarme vai disparar a cada 1 segundo
alarm[0] = game_get_speed(gamespeed_fps);
var _layer_id = layer_get_id("tls_fase1");
tilemap_paredes = layer_tilemap_get_id(_layer_id);


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

