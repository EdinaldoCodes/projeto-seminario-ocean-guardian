//Diminui o oxigênio
global.oxigenio -= 2;

// Garante que o oxigênio não seja menor que zero
if (global.oxigenio <= 0) {
    global.oxigenio = 0;
    
    // O jogador fica sem oxigênio
    estado = EPlayerState.sem_oxigenio;
    // (Aqui você colocaria a lógica de dano ou morte)
}

// 3. Reinicia o alarme para que ele dispare novamente em 1 segundo
// Apenas reinicie se o jogador ainda tiver oxigênio
if (global.oxigenio > 0) {
    alarm[0] = room_speed; // "x tempo"
}
