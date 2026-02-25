var _max_devices = 4;

for (var i = 0; i < _max_devices; i++)
{
    // Verifica apenas cliques NOVOS
    if (device_mouse_check_button_pressed(i, mb_left)) 
    {
        var _gui_x = device_mouse_x_to_gui(i);
        var _gui_y = device_mouse_y_to_gui(i);
        
        // Em vez de instance_position, perguntamos para TODOS os botões de UI:
        // "O mouse tá em cima de você?"
        with (obj_ui_parent)
        {
            // Calcula a área real do botão na GUI
            // (Isso corrige o problema do ponto de origem também)
            var _l = x - sprite_xoffset;
            var _t = y - sprite_yoffset;
            var _r = _l + sprite_width;
            var _b = _t + sprite_height;
            
            // Verifica se o toque caiu dentro desta área
            if (point_in_rectangle(_gui_x, _gui_y, _l, _t, _r, _b)) 
            {
                // Envia o ID do toque para o botão
                input(i, _gui_x, _gui_y);
                
                // Para o loop do 'with' para não clicar em 2 botões sobrepostos
                break; 
            }
        }
    }
}