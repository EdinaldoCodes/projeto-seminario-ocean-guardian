
if (instance_exists(player)) {
    // Posição desejada centralizada no jogador
    var target_x = clamp(player.x - view_width/2, room_left, room_right);
    var target_y = clamp(player.y - view_height/2, room_top, room_bottom);
    
    // Posição atual da câmera
    var current_x = camera_get_view_x(view_camera[0]);
    var current_y = camera_get_view_y(view_camera[0]);
    
    // Suaviza o movimento da câmera
    var smooth_x = lerp(current_x, target_x, 0.1);
    var smooth_y = lerp(current_y, target_y, 0.1);
    
    // Atualiza a posição da câmera
    camera_set_view_pos(view_camera[0], smooth_x, smooth_y);
}
