//Diminui o oxigênio
global.oxigenio -= 1;

// Garante que o oxigênio não seja menor que zero
if (global.oxigenio <= 0) {
    global.oxigenio = 0;
    
    // O jogador fica sem oxigênio
    estado = EPlayerState.sem_oxigenio;
    
}

// Reinicia o alarme para que ele dispare novamente em 1 segundo
// Apenas reinicie se o jogador ainda tiver oxigênio
if (global.oxigenio > 0) {
    alarm[0] = game_get_speed(gamespeed_fps); // 1 segundo
}