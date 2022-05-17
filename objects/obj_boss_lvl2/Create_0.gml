/// @description Insert description here
// You can write your code in this editor

estado_atual = "estado2" //choose("estado1","estado2","estado3");

audio_play_sound(snd_boss_fight2,0,1);

delay_tiro = room_speed / 2;
espera_tiro = -100;
vida_max = 1600;
vida_atual = vida_max;
velocidade_horizontal = 8;
delay_estado = room_speed * 5;
espera_estado = delay_estado;
criar_minions = true;

estado01 = function(){
	espera_tiro--;
	
	if(espera_tiro <= 0){
		
		
		repeat(20){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb1_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb1_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb1_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb1_idle);
		
		}
		
		audio_play_sound(sfx_bomb,1,0);
		
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
		audio_play_sound(sfx_bomb,1,0);
		instance_create_layer(x - 160,y + 20, "Tiros", obj_tiro_boss2);
		instance_create_layer(x + 160,y + 20, "Tiros", obj_tiro_boss2);
		
		repeat(10){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb2_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb2_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb2_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb2_idle);
		
		}
		
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
		audio_play_sound(sfx_bomb,1,0);
		instance_create_layer(x - 160,y + 20, "Tiros", obj_tiro_boss2);
		instance_create_layer(x + 160,y + 20, "Tiros", obj_tiro_boss2);
		instance_create_layer(x,y + 80, "Tiros", obj_tiro_boss2);
		
		
		repeat(10){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
		
		}
		
		espera_tiro = delay_tiro + 10
	}

}

estado04 = function(){
	x += velocidade_horizontal;
	
	if(x >= 1588 || x <= 288){
		velocidade_horizontal *= -1;
	}
	
	
	
	espera_tiro--;
	if(espera_tiro <= 0){
		audio_play_sound(sfx_bomb,1,0);
		instance_create_layer(x - 160,y + 20, "Tiros", obj_tiro_boss2);
		instance_create_layer(x + 160,y + 20, "Tiros", obj_tiro_boss2);
		instance_create_layer(x,y + 80, "Tiros", obj_tiro_boss2);
		
		
		repeat(10){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb1_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb2_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_bomb3_idle);
		
		}
		
		espera_tiro = delay_tiro + 10
	}

}