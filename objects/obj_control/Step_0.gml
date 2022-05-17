/// @description Insert description here
// You can write your code in this editor

if(contagem_regressiva <= 200){
	contagem_regressiva++
}else{
	start = true
}

if(!instance_exists(obj_player) && !ctrl && !level_end && !paused && room != rm_menu && room != rm_select_player){
	ctrl = true
	audio_stop_all();
	audio_play_sound(sfx_lose,1,0);
	destino = rm_menu
	layer_sequence_create("sequences",0 ,0 ,sq_gameover);
	
}




if(keyboard_check_pressed(ord("P"))){
	if(room != rm_menu && room != rm_select_player){
		switch(paused){
			case false : instance_deactivate_all(true); paused = true ; break;
			case true : instance_activate_all(); paused = false ; break;
	
		}
	}

}
