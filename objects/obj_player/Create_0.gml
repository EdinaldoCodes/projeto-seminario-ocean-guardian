image_xscale = 1.5;
image_yscale = 1.5;

global.oxigenio = 100;      // Variável de instancia
global.oxigenio_max = 100;  // Para o hud

// Esse alarme vai disparar a cada 1 segundo
alarm[0] = game_get_speed(gamespeed_fps);



// Obtemo os IDs das Layers pelo nome
var _layer_1 = layer_get_id("tls_fase1");
var _layer_2 = layer_get_id("tls_fase2");
var _layer_3 = layer_get_id("tls_fase3");

// Inicializa a variável como um Array vazio
tilemap_paredes = [];

// Verifica se a layer existe na sala atual antes de pegar o tilemap.

if (layer_exists(_layer_1)) {
    var _map_id = layer_tilemap_get_id(_layer_1);
    array_push(tilemap_paredes, _map_id);
}

if (layer_exists(_layer_2)) {
    var _map_id = layer_tilemap_get_id(_layer_2);
    array_push(tilemap_paredes, _map_id);
}

if (layer_exists(_layer_3)) {
    var _map_id = layer_tilemap_get_id(_layer_3);
    array_push(tilemap_paredes, _map_id);
}

// Define todos os estados possíveis para o jogador
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
spd_nado = 2.5;     
spd_rush = 3.2;     
spd_rotacao = 4;

// Direção Inicial onde o jogador está olhando
facing_horizontal = "right";