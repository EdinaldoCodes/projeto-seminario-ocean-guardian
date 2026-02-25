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