/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		audio_play_sound(sfx_laser2,1,0);


		instance_create_layer(x,y,"Tiros",obj_tiro_minion);

		alarm[0] = room_speed / 2;
		
	}
	
}
