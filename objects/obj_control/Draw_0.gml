/// @description Insert description here
// You can write your code in this editor
var sprite_border = sp_border_player1
var sprite_avatar = sp_foto_player1
var sprite_skill = sp_raio_nuclear
//draw_set_font(fnt_gui)
draw_set_font(fnt_gui);

if(global.player == 1){
	sprite_border = sp_border_player1
	sprite_avatar = sp_foto_player1
	sprite_skill = sp_raio_nuclear
}

if(global.player == 2){
	sprite_border = sp_border_player2
	sprite_avatar = sp_foto_player2
	sprite_skill = sp_rajada_de_misseis
}

if(global.player == 3){
	sprite_border = sp_border_player3
	sprite_avatar = sp_foto_player3
	sprite_skill = sp_quebra_tempo
}

if(room != rm_menu && room != rm_select_player && instance_exists(obj_player)){
	//player
	draw_sprite_ext(sprite_border, image_index, 80, room_height - 80, 0.5 , 0.5 , image_angle, image_blend, 1);
	draw_sprite_ext(sprite_avatar, image_index, 80, room_height - 80, 0.48 , 0.48 , image_angle, image_blend, 1);
	draw_text_transformed_colour( 20, room_height - 175, "LVL: "+string(obj_player.level_tiro), 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1);

	//skill
	draw_sprite_ext(sprite_border, image_index, 200, room_height - 80, 0.3 , 0.3 , image_angle, image_blend, 1);
	draw_text_transformed_colour( 200, room_height - 140, "Q", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
	
	// item escudo
	
	if(global.vantagem_escudo){
		draw_sprite_ext(sprite_border, image_index, 290, room_height - 80, 0.3 , 0.3 , image_angle, image_blend, 1);
		draw_text_transformed_colour( 280, room_height - 140, "E", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite_ext(shieldcomb, image_index, 290, room_height - 80, 0.45 , 0.45 , image_angle, image_blend, 1);
	}

	if(instance_exists(obj_player)){
		if(!obj_player.special){
			draw_sprite_ext(sprite_skill, image_index, 200, room_height - 80, 0.5 , 0.5 , image_angle, image_blend, 1);
		}
	}

}

if(paused){
    draw_set_alpha(0);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
}else{
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	
}
