// Draw Event do controller
if (global.pause && surface_exists(global.pausedSurf)) {
    draw_surface(global.pausedSurf, 0, 0);
    // desenhar overlay (exemplo, escurecimento)
    draw_set_alpha(0.5);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    // Desenhar título de pause, etc.
    draw_text(room_width/2, room_height/2, "PAUSED");
}
