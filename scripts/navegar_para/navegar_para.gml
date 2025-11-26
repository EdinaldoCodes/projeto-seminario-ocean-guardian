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
