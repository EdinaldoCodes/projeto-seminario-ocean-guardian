//Diminui o oxigênio
global.oxigenio -= global.decremento_oxigenio; // Definido em obj_manager

// Garante que o oxigênio não seja menor que zero
if (global.oxigenio <= 0) {
    global.oxigenio = 0;
    
    // O jogador fica sem oxigênio
    estado = EPlayerState.sem_oxigenio;
    
}


// Apenas reinicie se o jogador ainda tiver oxigênio
if (global.oxigenio > 0) {
    alarm[0] = game_get_speed(gamespeed_fps); // 1 segundo
}