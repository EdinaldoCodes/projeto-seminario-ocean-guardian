event_inherited();

if (touch_id != -1)
{
    // Verifica se esse dedo específico ainda está na tela
    if (device_mouse_check_button(touch_id, mb_left))
    {
        var _mx = device_mouse_x_to_gui(touch_id);
        var _my = device_mouse_y_to_gui(touch_id);
        
        // --- CÁLCULO DA ÁREA ---
        // Calcula onde a esquerda e o topo da imagem realmente estão na tela
        var _left   = x - sprite_xoffset;
        var _top    = y - sprite_yoffset;
        var _right  = _left + sprite_width;
        var _bottom = _top + sprite_height;
        
 
        // para o dedo não escorregar fácil
        var _margin = 20;

        if point_in_rectangle(_mx, _my, _left - _margin, _top - _margin, _right + _margin, _bottom + _margin) {
            global.mobile_rush = true;
      
        } else {
             // Dedo ainda na tela, mas saiu de cima do botão
             global.mobile_rush = false;
            
             
        }
    }
    else
    {
        // O dedo foi solto da tela 
        touch_id = -1;
        global.mobile_rush = false;
    
    }
}