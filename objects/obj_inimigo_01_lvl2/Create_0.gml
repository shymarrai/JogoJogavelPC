/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
	if(instance_exists(obj_player)){
		if(!obj_player.stop_motion){
			vspeed = 1;
		}
	}
