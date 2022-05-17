/// @description Insert description here
// You can write your code in this editor

if(vida_atual <= 0){
	instance_create_layer(x,y, layer,obj_explosion)

	if(instance_exists(obj_control)){
		obj_control.ganha_pontos(10);
	}

	if(obj_player.vida < 5){
		obj_player.vida += 1
	}
	
	obj_player.active_shield()
	
	if(obj_player.special){
		obj_player.special = false
	}

	screenshake(4);
}

