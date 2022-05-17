/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
dano = 20;

speed = 7;

cores = choose(c_red,c_olive, c_aqua, c_fuchsia, c_lime);


//pegando a posição do player e a minha
if(instance_exists(obj_player)){
	
	direction = point_direction(x,y, obj_player.x, obj_player.y);

}

image_angle = direction + 90 ;
