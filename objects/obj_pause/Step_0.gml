// Step Event do controller
if (global.pause) {
    if (!surface_exists(global.pausedSurf)) {
        global.pausedSurf = surface_create(room_width, room_height);
        surface_set_target(global.pausedSurf);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();
    }
} else {
    if (surface_exists(global.pausedSurf)) {
        surface_free(global.pausedSurf);
        global.pausedSurf = -1;
    }
}
