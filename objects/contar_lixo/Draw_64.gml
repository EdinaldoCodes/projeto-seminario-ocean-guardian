// Se não estiver no estado JOGANDO, não vai desenhar NADA deste objeto.
if (global.game_state != ESTADO.JOGANDO) {
    exit; 
}

if (global.contador_lixo == global.contador_lixo_max) {
    draw_text(x, y, ""); 
    mudar_estado(ESTADO.FIM_DE_FASE); 

} else if (global.contador_lixo < global.contador_lixo_max) {
    draw_text(x, y, "Coletado: " + string(global.contador_lixo));
}