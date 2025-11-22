
if (global.pause) {
	exit;	
}
else {
	
	// --- Lógica de Input ---
	var keyLeft = keyboard_check(ord("A"));              // Rotaciona para esquerda
	var keyRight = keyboard_check(ord("D"));             // Rotaciona para direita
	var keyForward = keyboard_check(ord("W"));           // Acelera para frente
	var keyRush = keyboard_check(vk_space);              // Boost de velocidade
	var keyShoot = mouse_check_button_pressed(mb_left);  // Dispara o projetil do harpao

	// Calcula a direção da rotação
	var rotate_dir = keyRight - keyLeft;

	// --- Variável de controle de velocidade ---
	var current_speed = 0; 

	// --- LÓGICA DE ROTAÇÃO 
	image_angle -= rotate_dir * spd_rotacao;

	// --- LÓGICA DE DISPARO ---

	// Se o jogador apertou para atirar E NÃO está atirando
	if (keyShoot && estado != EPlayerState.Disparando)
	{
	    // Salva o estado atual para saber para onde voltar
		estado_anterior = estado; 
		estado = EPlayerState.Disparando; 
	
	    // Define a animação de disparo e reinicia ela
		sprite_index = spr_player_disparando_HarpoonGun;
		image_index = 0; 
	
		
	
	}


	// --- Máquina de Estados (switch) ---
	switch (estado) {

		// --- ESTADO OCIOSO ---
		case EPlayerState.Idle:
			sprite_index = spr_player_idle_HarpoonGun;
			current_speed = 0;
		
		
			// Checa transição para se mover
			if (keyForward) {
				estado = (keyRush) ? EPlayerState.Rushing : EPlayerState.Nadando;
			}
			break; 


		// --- ESTADO NADANDO (NORMAL) ---
		case EPlayerState.Nadando:
			sprite_index = spr_player_nadando_HarpoonGun;
			current_speed = spd_nado; 

			// --- Transições de Estado ---
			if (!keyForward) {
				estado = EPlayerState.Idle;
			}
			else if (keyRush) {
				estado = EPlayerState.Rushing;
			}
			break; 
		
	// --- ESTADO SEM OXIGÊNIO  ---
		case EPlayerState.sem_oxigenio:
		
			sprite_index = spr_player_sem_ar;
			image_speed = 0.5;
			if (image_index >= image_number - 1) {
		
			image_index = image_number -1;
			image_speed =0;
			mudar_estado(ESTADO.GAMEOVER);
			}
		
			break;
		// --- ESTADO RUSHING  ---
		case EPlayerState.Rushing:
			sprite_index = spr_player_nadando_HarpoonGun;
			current_speed = spd_rush; 

			// --- Transições de Estado ---
			if (!keyForward) {
				estado = EPlayerState.Idle;
			}
			else if (!keyRush) {
				estado = EPlayerState.Nadando;
			}
			break; 

		// --- DISPARANDO HARPÃO---
		case EPlayerState.Disparando:
			
			// Récuo do personagem ao disparar
			x-=0.11;
	      

			if (image_index >= image_number - 1) 
			{
	            // Retorna ao estado que o jogador estava antes de atirar
				estado = estado_anterior; 
			}
			break;
	}



    // --- LÓGICA DE MOVIMENTO ---
    var _hspd = 0;
    var _vspd = 0;

    if (current_speed != 0) {
        var move_angle = image_angle + 90; 
        _hspd = lengthdir_x(current_speed, move_angle);
        _vspd = lengthdir_y(current_speed, move_angle);
    }


    move_and_collide(_hspd, _vspd, tilemap_paredes);


    // --- MANTÉM NO LIMITE DA SALA ---
    x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
    y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

} 