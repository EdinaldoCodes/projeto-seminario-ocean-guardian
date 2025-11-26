if (global.game_state == ESTADO.JOGANDO) {
    
    // Se o lixo acabou vai direcionar pra tela fim de fase
    if (global.contador_lixo == global.contador_lixo_max) {
        mudar_estado(ESTADO.FIM_DE_FASE);
    }
}
// Se completar a meta, muda de estado
else if (global.contador_lixo >= global.contador_lixo_max) {
    mudar_estado(ESTADO.FIM_DE_FASE);
};