var base_w = 1280;
var base_h = 720;

// Força a camada de GUI a ter esse tamanho lógico, independente da tela do celular
display_set_gui_size(base_w, base_h);


if (os_type == os_windows) {
    // Simula a proporção (2400 x 1080)
    var sim_scale = 0.5; // 50% do tamanho real para não ter problemas
    var sim_w = 2400 * sim_scale; // 1200
    var sim_h = 1080 * sim_scale; // 540

    window_set_size(sim_w, sim_h);
    
    // Centraliza a janela no monitor 
    alarm[0] = 1; 
}