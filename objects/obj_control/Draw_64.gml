/// @description Insert description here
// You can write your code in this editor

//mostrando os pontos



if(room != rm_menu && room != rm_select_player && room != rm_select_item){
	//draw_set_font(fnt_gui)
	//draw_set_halign(fa_right)
	draw_set_font(fnt_gui);
	draw_text(20,20, "Pontos: "+string(pontos));
	draw_text(20,40, "Nivel: "+string(level)+" - 10");
	draw_text(1200, 10, "'P'ause");
}
