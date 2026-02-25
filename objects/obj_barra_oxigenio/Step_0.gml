<<<<<<< HEAD


// Para Segurança
if (!instance_exists(obj_player) or global.pause) {
    exit; 
}

// Pega os valores atuais
var atual = global.oxigenio;
var maximo = global.oxigenio_max;

// Garante que o oxigênio não seja negativo
atual = clamp(atual, 0, maximo);

// Calcula a porcentagem INVERSA 0 a 1
// OX cheio - resultado 0 (para o frame 0)
// OX vazio - resultado 1 (para multiplicar pelo total de frames)
var percentual_gasto = 1 - (atual / maximo);

// Define o frame exato
// Multiplica a porcentagem gasta pelo número do último frame (30)
// image_number - 1 pega o índice do último frame automaticamente (se tiver 31 quadros, retorna 30)
image_index = percentual_gasto * (image_number - 1);
=======
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
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
