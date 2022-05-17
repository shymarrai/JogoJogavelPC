/// @description start variables
velocidade = global.rapidez;


intervalo_tiro = global.fire_rate;

stop_motion = false
vida = global.player_vida;
meu_escudo = noone;
atirar = true
cooldown = 500
special = global.desvantagem_special


global.cores = c_aqua

som_tiro = sfx_laser1
paused = false;
special_habilitie = global.player



alarm[0] = 5;

level_tiro = 1;

diminui_intervalo = function(){
	if(intervalo_tiro >= 20 && global.player == 1){
		intervalo_tiro *= .55
	}
	
	if(intervalo_tiro >= 60 && global.player == 2){
		intervalo_tiro *= .9
	}
	
	if(intervalo_tiro >= 40 && global.player == 3){
		intervalo_tiro *= .8
	}
}
left = function(){
	//image_alpha = 0;
	if(image_xscale >= image_xscale + 0.1){
		image_xscale +=  0.1;
	}
	
	if(image_yscale >= image_yscale + 0.1){
		image_yscale +=  0.1;
	}
	
	if(image_angle >= 0 && image_angle <= 10 ){
		image_angle = 10;
		
	}else{
		image_angle = 0
	}
	
	//draw_sprite_ext(sprite_index, image_index,x,y, image_xscale + 0.1, image_yscale - 0.1, image_angle + 10, image_blend, 1);
}

right = function(){
	//image_alpha = 0;
	
	if(image_xscale >= image_xscale + 0.1){
		image_xscale +=  0.1;
	}
	
	if(image_yscale >= image_yscale + 0.1){
		image_yscale +=  0.1;
	}
	
	if(image_angle >=  -15 && image_angle <= 0){
		image_angle = -15;
	}else{
		image_angle = 0
	}
	
	//draw_sprite_ext(sprite_index, image_index,x,y, image_xscale + 0.1, image_yscale - 0.1, image_angle + 10, image_blend, 1);
}

level_up = function(){
	if(level_tiro <= 4){
		level_tiro++;
	}
	
	diminui_intervalo()

	global.cores = choose(c_red,c_ltgrey,c_blue,c_fuchsia,c_lime);
}

perde_vida = function(dano){

	if(!meu_escudo){
		if(vida > 0){
			vida--;	
			screenshake(20);
			instance_create_layer(room_width / 2, room_height / 2,layer, obj_damage_screen);
			
		}else{
			screenshake(50);
			instance_destroy();
		}
	}
 
}

habilitie_pulse = function(){
	
	instance_create_layer(x,y,"Tiros",obj_spark);
	
	//var escudo = instance_create_layer(x,y, "shield", obj_escudo);
	//escudo.alvo = id;
	//meu_escudo = escudo;
}

habilitie_stop_time = function(){
	instance_create_layer(room_width / 2, room_height / 2,"stop_time", obj_stop_time)
	instance_create_layer(room_width / 2, room_height / 2,"stop_time", obj_stop_time_screen)
	
	stop_motion = true
	//0.5 12 0.6 12
	
	var Background = layer_get_id("Background"); 
	var Background_extra_2 = layer_get_id("Background_extra_2"); 
	var Background_planet = layer_get_id("Background_planet"); 
	var Background_extra_2_1 = layer_get_id("Background_extra_2_1"); 
	
	
	layer_vspeed(Background, 0);
	layer_vspeed(Background_extra_2, 0);
	layer_vspeed(Background_planet, 0);
	layer_vspeed(Background_extra_2_1, 0);
	
	
}


habilitie_missil_attack = function(){
	var qtd = 35
	screenshake(6)
	
	for(var i = 0; i<= qtd; i++){
		audio_play_sound(sfx_missil,1,0)

		instance_create_layer(irandom_range(64, 1856), irandom_range(room_height + 64, room_height + 1000), "Tiros", obj_missil);
	}
	
}


active_shield = function(){
	if(!instance_exists(obj_escudo) && !meu_escudo){
		var escudo = instance_create_layer(x,y, "shield", obj_escudo);
		escudo.alvo = id;
		meu_escudo = escudo;
	}else{
		meu_escudo.image_index = 2;
		meu_escudo.image_alpha = 1;
	}
}


