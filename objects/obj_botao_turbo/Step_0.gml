// --- STEP EVENT DO BTN_TURBO ---
event_inherited();

// Se existe um dedo "dono" deste botão
if (touch_id != -1)
{
    // Verifica APENAS se esse dedo específico continua encostado na tela
    // Não verificamos mais a posição (x,y). Se o dedo tá na tela, o boost tá valendo.
    if (device_mouse_check_button(touch_id, mb_left))
    {
        global.mobile_rush = true;
        image_index = 1; // Mantém visual de pressionado
    }
    else
    {
        // O dedo foi fisicamente levantado da tela
        touch_id = -1; // Libera o botão
        global.mobile_rush = false;
        image_index = 0; // Visual de solto
    }
}
else 
{
    // Garante que se ninguém toca, o boost está desligado
    // (Segurança extra caso o input falhe em algum frame raro)
    if (image_index == 1) {
        global.mobile_rush = false;
        image_index = 0;
    }
}