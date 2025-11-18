// Evento Create
player = instance_find(obj_player, 0); // referência ao jogador persistente
view_width = 480;
view_height = 270;

// Limites da sala para travar a câmera
room_left = 0;
room_top = 0;
room_right = room_width - view_width;
room_bottom = room_height - view_height;
