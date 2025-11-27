if room = Room_fase1 {


navegar_para(Room_fase2,true);


}
else if room = Room_fase2 {


navegar_para(Room_fase3,true);



} else if room = Room_fase3 {

exibir_menu_fim_de_fase(false);
room_goto(Room_Tela_Creditos);

};