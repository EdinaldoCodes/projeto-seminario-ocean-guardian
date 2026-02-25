<<<<<<< HEAD
function navegar_para(sala_destino)
{
    // Salva a sala anterior se estiver saindo de uma fase jogável
    // para um menu como configurações ou créditos
    var fase_jogavel = (room != Room_Tela_configuracoes && room != Room_Tela_Creditos && room != Room_Tela_Inicial);
    var destino_menu = (sala_destino == Room_Tela_configuracoes || sala_destino == Room_Tela_Creditos);

    if (fase_jogavel && destino_menu)
    {
        global.sala_anterior = room;
    }

    room_goto(sala_destino);
}
=======
/// @function navegar_para(sala_destino, resetar_sessao)
function navegar_para(_sala_destino, _resetar_sessao)
{
    // Se NÃO vamos resetar, significa que é navegação (Ajustes, Créditos, Menu)
    if (!_resetar_sessao)
    {
        // Só salvo a sala se estiver vindo de algo jogável
        if (room != Room_Tela_configuracoes 
        && room != Room_Tela_Creditos)
        {
            global.sala_anterior = room;
        }
    }

    global.resetar_sessao = _resetar_sessao;

    room_goto(_sala_destino);
}
>>>>>>> 49f741ce76cc3f95f9174ae61b1ba509ca112743
