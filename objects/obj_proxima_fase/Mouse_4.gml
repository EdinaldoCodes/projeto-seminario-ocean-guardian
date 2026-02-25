if room = Room_fase1 {

preparar_nova_sessao();
navegar_para(Room_fase2);


}
else if room = Room_fase2 {

preparar_nova_sessao();
navegar_para(Room_fase3);



} else if room = Room_fase3 {
preparar_nova_sessao();
exibir_menu_fim_de_fase(false);
navegar_para(Room_Tela_Creditos);

};