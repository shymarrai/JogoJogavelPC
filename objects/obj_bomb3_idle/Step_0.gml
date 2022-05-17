/// @description Insert description here
// You can write your code in this editor
if(y > room_height /  2 + irandom_range(0,room_height)){
	instance_destroy(id)	
}



if(instance_exists(obj_player)){
	if(obj_player.stop_motion){
		vspeed = 0
	}else{
		vspeed = 1
	}
}
