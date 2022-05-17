/// @description Insert description here
// You can write your code in this editor

randomize();
alarm[0] = room_speed;
ctrl = false
contagem_regressiva = 0
start = false
//contador de pontos
pontos = 0;
level = 1;
criar_boss = true;
level_end = false;
paused = false
proximo_level = 100;
//proximo_level = 1;

ganha_pontos = function(number){
	pontos += (number + global.pontos);
	
	if(pontos >= proximo_level){
		level++;
		proximo_level *= 2
	}
	
}



cria_inimigo = function(){
	
	if(room == rm_select_item){
		return
	}
	
	if(instance_exists(obj_player)){
		if(obj_player.special_habilitie == 3 && obj_player.cooldown < 500){
			start = false
		
		}else{
			start = true
		}
	}
	var chance = random_range(0, level);
	
	if(global.fase == rm_level1 && start || room ==  rm_level1 && start){
		var inimigo = obj_inimigo01

		if(chance > 2){
			inimigo = obj_inimigo_02
		}
		
		instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",inimigo);
	
		chance_de_vida = random_range(0,500)
		if(pontos > 10000 && chance_de_vida <= (10 + global.sorte) && !instance_exists(obj_rock)){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_rock);
		}
	}
	
	if(global.fase == rm_level2  && start || room ==  rm_level2 && start ){
		var inimigo = obj_inimigo_01_lvl2

		if(chance > 2){
			inimigo = obj_inimigo_02_lvl2
		}
		
		if(chance > 6){
			inimigo = obj_inimigo_04_lvl2
			var inimigo1 = obj_inimigo_04_lvl2_invertido
		}
		
		
		if(chance > 6){
			instance_create_layer(irandom_range(-64, -400), irandom_range(64, 980), "inimigos",inimigo);
			instance_create_layer(irandom_range(1920, 2100), irandom_range(64, 980), "inimigos",inimigo1);
		}else{
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",inimigo);
		}
	
		chance_de_vida = random_range(0,300)
		if(pontos > 10000 && chance_de_vida <= (10 + global.sorte) && !instance_exists(obj_rock)){
			instance_create_layer(irandom_range(64, 1856), irandom_range(-64, -400), "inimigos",obj_rock);
		}
	}
	

	
	
	

	
}
