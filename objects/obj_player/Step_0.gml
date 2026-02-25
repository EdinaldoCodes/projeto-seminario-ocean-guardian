if (global.pause) {
    exit;    
}
else {
    
    // --- VARIÁVEIS DE INPUT ---
    var keyLeft = keyboard_check(ord("A"));
    var keyRight = keyboard_check(ord("D"));
    var keyForward = keyboard_check(ord("W"));
    var keyRush = keyboard_check(vk_space) || global.mobile_rush;
  
	
    // Input Analógico - Vem do obj_analogico
    var analog_x = global.axis_x;
    var analog_y = global.axis_y;
    var analog_mag = point_distance(0, 0, analog_x, analog_y);
    var analog_active = (analog_mag > 0.1); // Zona morta

    // --- CONTROLE DE ROTAÇÃO ---
    
    if (analog_active) {
        // [MODO TOUCH]
        // (image_angle + 90) o sprite aponta para Cima
        // O point_direction retorna 0 para Direita
        // e o angulo alvo é corrigido em -90 graus
        var _target_dir = point_direction(0, 0, analog_x, analog_y) - 90;
        
        // Rotação suave (Smooth Rotation)
        var _diff = angle_difference(image_angle, _target_dir);
        image_angle -= median(-spd_rotacao, _diff, spd_rotacao);
    } 
    else {
        // [MODO TECLADO]
        var rotate_dir = keyRight - keyLeft;
        image_angle -= rotate_dir * spd_rotacao;
		
    }

    // --- CONTROLE DE VELOCIDADE ---
    var current_speed = 0; 
    var input_move = keyForward || analog_active; // Se tem qualquer input de movimento


    // --- LÓGICA DE ESTADOS  ---
    switch (estado) {
        case EPlayerState.Idle:
            sprite_index = spr_player_idle_HarpoonGun;
            current_speed = 0;
        
            if (input_move) {
                estado = (keyRush) ? EPlayerState.Rushing : EPlayerState.Nadando;
            }
            break; 

        case EPlayerState.Nadando:
            sprite_index = spr_player_nadando_HarpoonGun;
            
            // Velocidade analógica - se estiver no touch, nada devagar
            var _fator = (analog_active) ? clamp(analog_mag, 0.5, 1.5) : 1;
            current_speed = spd_nado * _fator; 

            if (!input_move) estado = EPlayerState.Idle;
            else if (keyRush) estado = EPlayerState.Rushing;
            break; 
        
        case EPlayerState.sem_oxigenio:
            sprite_index = spr_player_sem_ar;
            image_speed = 0.5;
            if (image_index >= image_number - 1) {
                image_index = image_number -1;
                image_speed = 0;
                mudar_estado(ESTADO.GAMEOVER);
            }
            break;

        case EPlayerState.Rushing:
            sprite_index = spr_player_nadando_HarpoonGun;
            current_speed = spd_rush; 

            if (!input_move) estado = EPlayerState.Idle;
            else if (!keyRush) estado = EPlayerState.Nadando;
            break; 


    }

    // --- APLICAÇÃO DO MOVIMENTO ---
    var _hspd = 0;
    var _vspd = 0;

    if (current_speed != 0) {
        var move_angle = image_angle + 90; 
        _hspd = lengthdir_x(current_speed, move_angle);
        _vspd = lengthdir_y(current_speed, move_angle);
    }
	
	
    move_and_collide(_hspd, _vspd, tilemap_paredes);

    // bloqueia o personagem para não sair da sala
    x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
    y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);
}