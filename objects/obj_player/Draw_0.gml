/// @description Insert description here
// You can write your code in this editor

//draw_self();

 sprite = sp_player
 color_life = c_aqua

if(global.player == 1){
	sprite = sp_player
	color_life = c_aqua
}

if(global.player == 2){
	sprite = sp_player2
	color_life = c_red
}

if(global.player == 3){
	sprite = sp_player3
	color_life = c_fuchsia
}

draw_sprite_ext(sprite, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend,1);
