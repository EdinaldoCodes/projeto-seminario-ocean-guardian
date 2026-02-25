<<<<<<< HEAD
if (global.game_state != ESTADO.JOGANDO) {
	exit;
=======
// --- No Evento DRAW GUI ---

if (global.game_state != ESTADO.JOGANDO) {
exit;
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
}

if (room == Room_fase1) {

<<<<<<< HEAD
	// --- Título ---
	draw_set_font(fnt_ui_titulo);
	draw_set_color(c_yellow);
	draw_text(x, y, "OBJETIVO:");

	// --- FONTE e COR de texto das Informações ---
	draw_set_font(fnt_ui_texto);
	draw_set_color(c_white);

	// TEXTO 2 - OBJETIVOS
	var _texto = 
		"Colete " + string(global.contador_lixo_max) + " lixos\n" +
	    "Coletado: " + string(global.contador_lixo) + "/" +
		string(global.contador_lixo_max);

	// Desenha o texto e da um espaçamento de 25px depois do título
	draw_text(x, y + 50, _texto);

	// Reset para não afetar outros desenhos
	draw_set_color(c_white);
	
}


else if (room == Room_fase2) {

	// --- Título ---
	draw_set_font(fnt_ui_titulo);
	draw_set_color(c_yellow);
	draw_text(x, y, "OBJETIVO:");

	// --- FONTE e COR de texto das Informações ---
	draw_set_font(fnt_ui_texto);
	draw_set_color(c_white);

	// TEXTO 2 - OBJETIVOS
	var _texto = 
		"Colete " + string(global.contador_lixo_max) + " lixos\n" +
	    "Coletado: " + string(global.contador_lixo) + "/" +
		string(global.contador_lixo_max);

		// Desenha o texto e da um espaçamento de 25px depois do título
		draw_text(x, y + 50, _texto);

		// Reset para não afetar outros desenhos
		draw_set_color(c_white);

}

else if (room == Room_fase3) {

=======
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
// --- Título ---
draw_set_font(fnt_ui_titulo);
draw_set_color(c_yellow);
draw_text(x, y, "OBJETIVO:");

<<<<<<< HEAD
// --- FONTE e COR de texto das Informações ---
=======
// --- Desenha Informações ---
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
draw_set_font(fnt_ui_texto);
draw_set_color(c_white);

// TEXTO 2 - OBJETIVOS
var _texto = 
	"Colete " + string(global.contador_lixo_max) + " lixos\n" +
    "Coletado: " + string(global.contador_lixo) + "/" +
	string(global.contador_lixo_max);

// Desenha o texto e da um espaçamento de 25px depois do título
<<<<<<< HEAD
draw_text(x, y + 50, _texto);
=======
draw_text(x, y + 25, _texto);
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743

// Reset para não afetar outros desenhos
draw_set_color(c_white);
	
};
<<<<<<< HEAD

=======
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
