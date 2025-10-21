
// Movimento horizontal
if (keyboard_check(ord("A"))) {
    x -= 6; // Move para esquerda
	
}
if (keyboard_check(ord("D"))) {
    x += 6; // Move para direita

}

// Movimento vertical
if (keyboard_check(ord("W"))) {
    y -= 6; // Move para cima
	
	 
}
if (keyboard_check(ord("S"))) {
    y += 6; // Move para baixo
	
}



// o player volta para a tela depois de sair dela
move_wrap(true,true,0);






