/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	obj_player.special = false
}

estado_atual = choose("estado1","estado2","estado3");

audio_play_sound(snd_boss_fight,0,1);

delay_tiro = room_speed / 2;
espera_tiro = 0;
vida_max = 1600;
vida_atual = vida_max;
velocidade_horizontal = 4;
delay_estado = room_speed * 5;
espera_estado = delay_estado;
criar_minions = true;
estado01 = function(){
	espera_tiro--;
	
	if(espera_tiro <= 0){
		audio_play_sound(sfx_laser2,1,0);
		instance_create_layer(x,y + 80, "Tiros", obj_tiro_inimigo02);
		espera_tiro = delay_tiro
	}

}

estado02 = function(){
	x += velocidade_horizontal;
	
	if(x >= 1588 || x <= 288){
		velocidade_horizontal *= -1;
	}
	
	
	
	espera_tiro--;
	if(espera_tiro <= 0){
		audio_play_sound(sfx_laser2,1,0);
		instance_create_layer(x - 160,y + 20, "Tiros", obj_tiro_inimigo01);
		instance_create_layer(x + 160,y + 20, "Tiros", obj_tiro_inimigo01);
		espera_tiro = delay_tiro
	}

}

estado03 = function(){
	x += velocidade_horizontal;
	
	if(x >= 1588 || x <= 288){
		velocidade_horizontal *= -1;
	}
	
	
	
	espera_tiro--;
	if(espera_tiro <= 0){
		audio_play_sound(sfx_laser2,1,0);
		instance_create_layer(x - 160,y + 20, "Tiros", obj_tiro_inimigo01);
		instance_create_layer(x + 160,y + 20, "Tiros", obj_tiro_inimigo01);
		instance_create_layer(x,y + 80, "Tiros", obj_tiro_inimigo02);
		espera_tiro = delay_tiro + 10
	}

}

estado04 = function(){
	sprite_index = sp_boss_escuro;
	
	//x += sign(room_width / 2 - x);
	
	if(criar_minions){
		var minion = instance_create_layer(128,672, "inimigos", obj_boss_minion);
		minion.image_angle = 150;
	
		minion = instance_create_layer(1760,672, "inimigos", obj_boss_minion);
		minion.image_angle = 220;
		
		criar_minions = false;
	}

}