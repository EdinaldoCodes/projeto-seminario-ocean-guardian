// Verifique se o obj_player existe antes de tentar ler
if (!instance_exists(obj_player) or global.pause) {
    // Se o jogador não existir (ex: menu, tela de game over), não faça nada.
    exit; 
}
	else {

	// Pega o valor atual de oxigênio do jogador
	var ox_atual = global.oxigenio;
	var ox_maximo = global.oxigenio_max;

	// Calcula a porcentagem de oxigênio
	var ox_percent = (ox_atual / ox_maximo) * 100;

	// Lógica para mudar a sprite baseado na porcentagem
	// O GameMaker vai checar de cima para baixo e parar no primeiro "else if"
	// que for verdadeiro.

	if (ox_percent > 80) {
	    image_index = 0;
	} 
	else if (ox_percent > 60) {
	    image_index = 1;
	} 
	else if (ox_percent > 40) {
	    image_index = 2;
	} 
	else if (ox_percent > 20) {
	    image_index = 4;
	} 
	else if (ox_percent > 0) {
	    image_index = 5;
	} 
	else {
	    // Se for 0 ou menos
	    image_index = 5; 
	}
}
