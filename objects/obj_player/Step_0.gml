if (global.game_is_paused == true)
{
    exit; // para a execução de todo o código abaixo
}

// --- Lógica de Input ---
var keyLeft = keyboard_check(ord("A"));    // Rotaciona para esquerda
var keyRight = keyboard_check(ord("D"));   // Rotaciona para direita
var keyForward = keyboard_check(ord("W")); // Acelera para frente
var keyRush = keyboard_check(vk_space);    // Boost de velocidade
var keyShoot = mouse_check_button_pressed(mb_left);

// Calcula a direção da rotação
var rotate_dir = keyRight - keyLeft;

// --- Variável de controle de velocidade ---
var current_speed = 0; 

// --- LÓGICA DE ROTAÇÃO 
image_angle -= rotate_dir * spd_rotacao;

// --- LÓGICA DE DISPARO ---

// Se o jogador apertou para atirar E NÃO está atirando...
if (keyShoot && estado != EPlayerState.Disparando)
{
    // Salva o estado atual para saber para onde voltar
	estado_anterior = estado; 
	estado = EPlayerState.Disparando; // Define o novo estado
	
    // Define a animação de disparo e reinicia ela
	sprite_index = spr_player_disparando_HarpoonGun;
	image_index = 0; 
	
	// *** COLOQUE AQUI A LÓGICA PARA CRIAR O PROJÉTIL ***
	
	// Ex: instance_create_layer(x, y, "Instances", obj_Harpao);
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
		current_speed = spd_nado; // Define a velocidade de nado

		// --- Transições de Estado ---
		if (!keyForward) {
			estado = EPlayerState.Idle;
		}
		else if (keyRush) {
			estado = EPlayerState.Rushing;
		}
		break; 


	// --- ESTADO RUSHING  ---
	case EPlayerState.Rushing:
		sprite_index = spr_player_nadando_HarpoonGun;
		current_speed = spd_rush; // Define a velocidade de rush

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
        // Trava o movimento do jogador enquanto dispara
		//current_speed = 0.1; 
		x-=0.11;
        // Verifica se a animação de "disparando" terminou
        // (Alternativa melhor: usar o evento "Animation End")
		if (image_index >= image_number - 1) 
		{
            // Retorna ao estado que o jogador estava antes de atirar
			estado = estado_anterior; 
		}
		break;
}

// --- LÓGICA DE MOVIMENTO ---

// Se a velocidade atual for maior que 0 (definida pelo switch)
// então o personagem se move.
if (current_speed > 0) {
 
    var move_angle = image_angle + 90;

	// Calcula e aplica o movimento usando o ângulo corrigido
	x += lengthdir_x(current_speed, move_angle);
	y += lengthdir_y(current_speed, move_angle);
}


// o player volta para a tela depois de sair dela
move_wrap(true, true, sprite_width);