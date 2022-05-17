/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		event_inherited();
	}
}

//cor = choose(c_red,c_olive, c_aqua, c_fuchsia);