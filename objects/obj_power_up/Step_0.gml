/// @description Insert description here
// You can write your code in this editor

if(y > room_height + 100){
	instance_destroy(id, false)	
}

if(instance_exists(obj_player)){
	if(obj_player.stop_motion){
		speed = 0
	}else{
		speed = .4
		
	}
	
}
