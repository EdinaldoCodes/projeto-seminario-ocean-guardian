event_inherited();


var _tamanho = 200;

// Calcula a escala baseada no sprite original
var _escala = _tamanho /sprite_get_width(sprite_index); 

// Aplica a escala 
image_xscale = _escala;
image_yscale = _escala;


// radius - é a metade do tamanho total definido na variável _tamanho
// sprite_width - vale 90 (por causa da escala acima).
radius = sprite_width / 2; 

// Variáveis de controle
joy_x = 0;
joy_y = 0;
touch_id = -1;

// Variáveis Globais
global.axis_x = 0;
global.axis_y = 0;

input = function (_touch_id, _mouse_x, _mouse_y)
{
    if (touch_id == -1) {
        touch_id = _touch_id;
    }
}