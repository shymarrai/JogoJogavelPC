/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y, layer,obj_explosion)

if(instance_exists(obj_control)){
	obj_control.ganha_pontos(pontos);
}

instance_create_layer(x,y, "shield", obj_power_up_shield);

screenshake(4);