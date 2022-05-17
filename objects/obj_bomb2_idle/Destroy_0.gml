/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y, layer,obj_bomb2_explode)

if(instance_exists(obj_control)){
	obj_control.ganha_pontos(pontos);
}


if(instance_exists(obj_boss_lvl2)){
	if(obj_boss_lvl2.vida_atual > 0){
		obj_boss_lvl2.vida_atual --;
	}else{
		instance_destroy(obj_boss_lvl2);
	}	

}

dropa_item(chance);

screenshake(4);
