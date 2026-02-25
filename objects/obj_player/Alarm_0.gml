//Diminui o oxigênio
<<<<<<< HEAD
global.oxigenio -= global.decremento_oxigenio; // Definido em obj_manager
=======
global.oxigenio -= 1;
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743

// Garante que o oxigênio não seja menor que zero
if (global.oxigenio <= 0) {
    global.oxigenio = 0;
    
    // O jogador fica sem oxigênio
    estado = EPlayerState.sem_oxigenio;
    
}

<<<<<<< HEAD

=======
// Reinicia o alarme para que ele dispare novamente em 1 segundo
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
// Apenas reinicie se o jogador ainda tiver oxigênio
if (global.oxigenio > 0) {
    alarm[0] = game_get_speed(gamespeed_fps); // 1 segundo
}