/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if(!obj_player.stop_motion){
		if(estado_atual != "estado4"){
			sprite_index = sp_boss_combate;
	
		}



		espera_estado--;
		if(espera_estado <= 0){
	
			if(vida_atual > vida_max / 2){
				estado_atual = choose("estado1","estado2","estado3");
			}else{
				estado_atual = choose("estado1","estado2","estado3", "estado4");
			}
				criar_minions = true
				espera_estado = delay_estado;
		}


		if(estado_atual == "estado1"){
			estado01();
	
		}else if(estado_atual == "estado2"){
			estado02();
		}else if(estado_atual == "estado3"){
			estado03();
	
		}else if(estado_atual == "estado4"){
			estado04();
	
		}
	}
}
