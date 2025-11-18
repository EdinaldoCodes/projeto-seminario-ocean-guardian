if (global.contador_lixo < global.contador_lixo_max){
	global.contador_lixo += 1;

	instance_destroy(other); // qualquer instancia tocada irá ser destruida.
};
