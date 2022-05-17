/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_player) && !paused){
	var transicao = instance_create_layer(0,0,"player",obj_transicao);
	transicao.destino = rm_menu
}