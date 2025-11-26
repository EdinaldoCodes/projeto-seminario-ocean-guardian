// --- STEP EVENT DO OBJETO DA BARRA DE OXIGÊNIO ---

// 1. Segurança e Pausa
if (!instance_exists(obj_player) or global.pause) {
    exit; 
}

// 2. Pega os valores atuais
var atual = global.oxigenio;
var maximo = global.oxigenio_max;

// Garante que o oxigênio não seja negativo na conta (clamp segura entre 0 e max)
atual = clamp(atual, 0, maximo);

// 3. Calcula a porcentagem INVERSA (0 a 1)
// Se oxigênio está cheio (100%), queremos o resultado 0 (para o frame 0)
// Se oxigênio está vazio (0%), queremos o resultado 1 (para multiplicar pelo total de frames)
var percentual_gasto = 1 - (atual / maximo);

// 4. Define o frame exato
// Multiplica a porcentagem gasta pelo número do último frame (30)
// image_number - 1 pega o índice do último frame automaticamente (se tiver 31 quadros, retorna 30)
image_index = percentual_gasto * (image_number - 1);