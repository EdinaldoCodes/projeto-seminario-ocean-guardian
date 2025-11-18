// AVALIAR SE AINDA SERVE PARA O PROJETO

global.pause = false;
global.pausedSurf = -1; // Inicialização segura indicando que ainda não existe surface

function update_pause() {
    if (global.pause) {
        layer_set_visible(layer_get_id("UILayer_pause_menu"), true);
        show_debug_message("entrou no modo pause");
    } else {
        layer_set_visible(layer_get_id("UILayer_pause_menu"), false);
        show_debug_message("saiu do modo pause");
    }
}
