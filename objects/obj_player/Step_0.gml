
//movendo para a esquerda

// var up, down, left, right, fire;
image_angle = 0;
if(keyboard_check(ord("W"))){
	y -= keyboard_check(ord("W")) * velocidade;
}else if(keyboard_check(vk_up)){
	y -= keyboard_check(vk_up) * velocidade;
}

if(keyboard_check(ord("S"))){
	y += keyboard_check(ord("S")) * velocidade;
}else if(keyboard_check(vk_down)){
	y += keyboard_check(vk_down) * velocidade;
}

if(keyboard_check(ord("A"))){
	x -= keyboard_check(ord("A")) * velocidade;
	left();
}else if(keyboard_check(vk_left)){
	x -= keyboard_check(vk_left) * velocidade;
	left();
}

if(keyboard_check(ord("D"))){
	x += keyboard_check(ord("D")) * velocidade;
	right();
}else if(keyboard_check(vk_right)){
	x += keyboard_check(vk_right) * velocidade;
	right();
}


if(global.vantagem_escudo && keyboard_check_pressed(ord("E"))){
	active_shield();
	
	global.vantagem_escudo = false
}


fire = keyboard_check_pressed(ord("Q"));

if(fire && !special){
	
	if(special_habilitie == 1){
		special = true
		habilitie_pulse()
	}
	
	if(special_habilitie == 3){
		special = true
		habilitie_stop_time()
	}
	
	if(special_habilitie == 2){
		special = true
		habilitie_missil_attack()
	
	}
	
}


if(atirar && cooldown <= 500){
	if(special){
		cooldown--
		if(cooldown <= 0){
			cooldown = 500
			//special = false
			if(special_habilitie == 1){
				if(instance_exists(obj_spark)){
					instance_destroy(obj_spark)
				}
				
			}
			
			if(special_habilitie == 3){ 
				
				//0.5 12 0.6 12
				
				if(instance_exists(obj_stop_time)){
					instance_destroy(obj_stop_time)
				}

				if(instance_exists(obj_stop_time_screen)){
					instance_destroy(obj_stop_time_screen)
				}
				
				stop_motion = false

				var Background = layer_get_id("Background"); 
				var Background_extra_2 = layer_get_id("Background_extra_2"); 
				var Background_planet = layer_get_id("Background_planet"); 
				var Background_extra_2_1 = layer_get_id("Background_extra_2_1");
				
				layer_vspeed(Background, 0.5);
				layer_vspeed(Background_extra_2, 12);
				layer_vspeed(Background_planet, 0.6);
				layer_vspeed(Background_extra_2_1, 12);
				
				
			}
		}

	}else{
		som_tiro = sfx_laser1
	}
}

//limitando movimentação na tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);








