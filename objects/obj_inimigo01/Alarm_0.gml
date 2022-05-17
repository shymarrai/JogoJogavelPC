/// @description Insert description here
// You can write your code in this editor

// criar tiro

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		if(y >= 0 && vspeed > 0){
			audio_play_sound(sfx_laser2,1,0);
			instance_create_layer(x,y + sprite_height / 4, "Tiros", obj_tiro_inimigo01);
		}

		
	}
}

alarm[0] = room_speed * random_range(1,3)
