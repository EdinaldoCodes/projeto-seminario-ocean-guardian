// Gerencia a mudança de estado do jogo com base na sala atual
// Este evento roda CADA VEZ que uma sala (nova ou reiniciada) carrega

global.pause = false;
global.oxigenio = 100;
global.oxigenio_max = 100;
global.contador_lixo = 0;
global.contador_lixo_max = 0;

// Gerencia o estado e a UI 
if (room == Room_Tela_Inicial) {
    mudar_estado(ESTADO.MENU);
	
}
else if (room == Room_fase1) { 
    mudar_estado(ESTADO.JOGANDO);
	global.contador_lixo_max = 10;
}
else if (room == Room_Tela_Creditos) {
    mudar_estado(ESTADO.CREDITOS);
}