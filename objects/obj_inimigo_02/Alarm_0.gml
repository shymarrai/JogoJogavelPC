/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		if(y >= 0){
			instance_create_layer(x,y + sprite_height / 4, "Tiros", obj_tiro_inimigo02);
		}

		
	}
}
alarm[0] = room_speed * random_range(1,3);
