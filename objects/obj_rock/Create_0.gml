/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
vspeed = 2;
pontos = 10;
angle = 2
chance = 5 + global.sorte;

posso_me_mover_para_lado = false
vida_max = 20;
vida_atual = vida_max;

if(place_meeting(x,y,obj_inimigo01)){
	instance_destroy(id, false);
}


alarm[0] = 1
