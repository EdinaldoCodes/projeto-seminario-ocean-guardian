// Desenha a base
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);

// Desenha o pino (assumindo que o pino também precisa ser escalado)
// Se o pino for outra sprite, use a mesma variável de escala
draw_sprite_ext(LargeHandleFilled, 0, x + joy_x, y + joy_y, image_xscale, image_yscale, 0, c_white, 1);