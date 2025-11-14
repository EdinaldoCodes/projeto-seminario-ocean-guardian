audio_pause_all();

//global.game_is_paused = true;

// Cria o objeto de menu de pause
//instance_create_layer(0, 0, "HUD_Layer", obj_menu_pause); 

room_goto(Room_Tela_Inicial);
layer_set_visible(layer_get_id("UILayer_Inicial"), true);


