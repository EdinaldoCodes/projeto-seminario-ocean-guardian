//Botões tela inicial
function exibir_menu_inicial(estado_visivel) {
    var id_layer = layer_get_id("UILayer_Inicial"); 
    layer_set_visible(id_layer, estado_visivel);
	
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}

// HUD - Barra de oxigenio, Botão Pause
function exibir_ui_hud(estado_visivel) {
    var id_layer = layer_get_id("UILayer_HUD"); 
    layer_set_visible(id_layer, estado_visivel);
		
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}

//Menu Pause
function exibir_menu_pause(estado_visivel) {
    var id_layer = layer_get_id("UILayer_pause_menu");
    layer_set_visible(id_layer, estado_visivel);
	
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}

//Menu Game over
function exibir_game_over(estado_visivel) {
    var id_layer = layer_get_id("UILayer_game_over"); 
    layer_set_visible(id_layer, estado_visivel);
	
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}

//Menu Fim de Fase 
function exibir_menu_fim_de_fase(estado_visivel) {
    var id_layer = layer_get_id("UILayer_fase_concluida"); 
    layer_set_visible(id_layer, estado_visivel);
	
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}

//Menu Créditos
function exibir_menu_creditos(estado_visivel) {
    //var id_layer = layer_get_id("UILayer_tela_creditos");
	

}

