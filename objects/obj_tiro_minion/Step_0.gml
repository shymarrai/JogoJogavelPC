/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){

		if(instance_exists(obj_boss)){
			direction = point_direction(x,y ,obj_boss.x, obj_boss.y);
			image_angle = direction + 90;

		}
	}	
}
