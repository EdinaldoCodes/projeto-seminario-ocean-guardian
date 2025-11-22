// --- No Evento DRAW GUI ---

if (global.game_state != ESTADO.JOGANDO) {
exit;
}

if (room == Room_fase1) {

// --- Título ---
draw_set_font(fnt_ui_titulo);
draw_set_color(c_yellow);
draw_text(x, y, "OBJETIVO:");

// --- Desenha Informações ---
draw_set_font(fnt_ui_texto);
draw_set_color(c_white);

// TEXTO 2 - OBJETIVOS
var _texto = 
	"Colete " + string(global.contador_lixo_max) + " lixos\n" +
    "Coletado: " + string(global.contador_lixo) + "/" +
	string(global.contador_lixo_max);

// Desenha o texto e da um espaçamento de 25px depois do título
draw_text(x, y + 25, _texto);

// Reset para não afetar outros desenhos
draw_set_color(c_white);
	
};
