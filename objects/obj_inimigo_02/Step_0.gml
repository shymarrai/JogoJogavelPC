/// @description Insert description here
// You can write your code in this editor


//event_inherited();

if(y > room_height + 100){
	instance_destroy(id, false)	
}

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		speed = 1
		if(y > -100 && posso_me_mover_para_lado == true){
				if(x > room_width / 2){
					hspeed = -4;
					posso_me_mover_para_lado = false
				}else{
					hspeed = 4;
					posso_me_mover_para_lado = false
				}
	
		}

		if(!posso_me_mover_para_lado){
			if(x <= 10 ){
				hspeed = 4;
			}
		
			if(x >= room_width - 10){
				hspeed = -4;
			}

		}
	}else{
		vspeed = 0
		hspeed = 0
	}
	
}
