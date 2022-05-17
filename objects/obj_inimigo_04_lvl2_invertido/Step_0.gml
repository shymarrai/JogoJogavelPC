/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(x > room_width + 100){
	instance_destroy(id, false)	
}

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		if(x <= room_width / 2){
			hspeed = 0
			vspeed = 2
		}else{
			hspeed = -1
			vspeed = 0
		}
	}else{
		hspeed = 0
		vspeed = 0
	}
}
