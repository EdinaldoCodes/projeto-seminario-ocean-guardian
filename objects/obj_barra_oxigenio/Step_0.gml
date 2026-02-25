

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