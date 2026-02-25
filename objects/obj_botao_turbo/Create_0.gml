// Herda as propriedades do pai (obj_ui_parent)
event_inherited();

image_speed = 0;
image_index = 0;

// Variável para rastrear QUAL dedo está apertando este botão (-1 = nenhum)
touch_id = -1;

// Inicializa a variável global de controle
global.mobile_rush = false;

// Função que o obj_multitouch vai chamar quando detectar um toque aqui
input = function (_touch_id, _mouse_x, _mouse_y)
{
    // Se nenhum dedo estiver apertando ainda, registre este ID
    if (touch_id == -1) {
        touch_id = _touch_id;
        global.mobile_rush = true; // Ativa o rush
    }
}