/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	
	if(!obj_player.stop_motion){
		
		direction = point_direction(x,y, obj_player.x, obj_player.y);
		image_angle = direction + 90 ;
	}else{
		vspeed = 0
		hspeed = 0
		
	}
}
