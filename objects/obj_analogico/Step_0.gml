

if (touch_id != -1)
{
    // Verifica se o dedo específico ainda está na tela
    if (device_mouse_check_button(touch_id, mb_left))
    {
        // Calcula a posição relativa ao centro do objeto
        // Usamos gui_to_mouse pois estamos trabalhando com UI
        var _mx = device_mouse_x_to_gui(touch_id);
        var _my = device_mouse_y_to_gui(touch_id);
        
        joy_x = _mx - x;
        joy_y = _my - y;
    
        var _direction = point_direction(0, 0, joy_x, joy_y);
        var _distance = point_distance(0, 0, joy_x, joy_y);
    
        // Limita ao raio (Clamp circular)
        if (_distance > radius)
        {
            joy_x = lengthdir_x(radius, _direction);
            joy_y = lengthdir_y(radius, _direction);
            _distance = radius; // Atualiza para normalização correta
        }
        
        // --- ATUALIZAÇÃO DO PLAYER ---
        // Normaliza entre -1 e 1 para o player usar
        global.axis_x = joy_x / radius;
        global.axis_y = joy_y / radius;
    }
    else
    {
        // Dedo foi solto
        touch_id = -1;
        joy_x = 0;
        joy_y = 0;
        global.axis_x = 0;
        global.axis_y = 0;
    }
}