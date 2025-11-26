
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
    var id_layer_ui = layer_get_id("UILayer_HUD"); 
    
    // Array com os objetos que estão na Instance Layer mas são da HUD
    var objs_interativos = [obj_analogico, obj_botao_turbo, obj_barra_oxigenio];
    
    if (estado_visivel) {
        // --- MODO: MOSTRAR ---
        
        // 1. Ativa a layer visual (sprites estáticos)
        instance_activate_layer(id_layer_ui);
        layer_set_visible(id_layer_ui, true);
        
        // 2. Traz os botões de volta à vida
        for (var i = 0; i < array_length(objs_interativos); i++) {
            var obj = objs_interativos[i];
            
            // PRIMEIRO ativamos o objeto. Sem isso, o 'with' abaixo não funciona.
            instance_activate_object(obj);
            
            // Agora garantimos que ele está visível
            if (instance_exists(obj)) {
                with (obj) {
                    visible = true;
                }
            }
        }
        
    } else {
        // --- MODO: ESCONDER ---
        
        // 1. Esconde a layer visual
        layer_set_visible(id_layer_ui, false);
        instance_deactivate_layer(id_layer_ui);
        
        // 2. Apaga e congela os botões
        for (var i = 0; i < array_length(objs_interativos); i++) {
            var obj = objs_interativos[i];
            
            // PRIMEIRO tornamos invisível enquanto ele ainda está ativo
            if (instance_exists(obj)) {
                with (obj) {
                    visible = false;
                    // Resetamos o touch_id para evitar que o botão trave "apertado" ao pausar
                    if (variable_instance_exists(id, "touch_id")) {
                        touch_id = -1;
                    }
                    if (variable_instance_exists(id, "image_index")) {
                        image_index = 0; // Reseta animação visual
                    }
                }
            }
            
            // DEPOIS desativamos completamente para economizar CPU
            instance_deactivate_object(obj);
        }
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

//Menu Ajustes
function exibir_menu_ajustes(estado_visivel) {
    var id_layer = layer_get_id("UILayer_ajustes"); 
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
        var id_layer = layer_get_id("UILayer_menu_creditos"); 
        layer_set_visible(id_layer, estado_visivel);
	
	if (estado_visivel) {
        // Ativa a layer para os botões funcionarem
        instance_activate_layer(id_layer);
    } else {
        // Desativa a layer para os botões PARAREM de funcionar
        instance_deactivate_layer(id_layer);
    }
}
	

