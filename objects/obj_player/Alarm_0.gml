/// @description Insert description here
// You can write your code in this editor

if(atirar && global.player == 1){

	if(level_tiro == 1){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro1 == 0){
			nave1_tiro1()
		}else if(global.vantagem_troca_tiro1 == 1){
			nave2_tiro1()
		}else if(global.vantagem_troca_tiro1 == 2){
			nave3_tiro1()
		}
		
	
	}else if(level_tiro == 2){
		audio_play_sound(som_tiro,1,0);
		if(global.vantagem_troca_tiro2 == 0){
			nave1_tiro2()
		}else if(global.vantagem_troca_tiro2 == 1){
			nave2_tiro2()
		}else if(global.vantagem_troca_tiro2 == 2){
			nave3_tiro2()
		}
		
	
	}else if(level_tiro == 3){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro3 == 0){
			nave1_tiro3()
		}else if(global.vantagem_troca_tiro3 == 1){
			nave2_tiro3()
		}else if(global.vantagem_troca_tiro3 == 2){
			nave3_tiro3()
		}

	}else if(level_tiro == 4){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro4 == 0){
			nave1_tiro4()
		}else if(global.vantagem_troca_tiro4 == 1){
			nave2_tiro4()
		}else if(global.vantagem_troca_tiro4 == 2){
			nave3_tiro4()
		}
		
	
	}else if(level_tiro >= 5){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro5 == 0){
			nave1_tiro5()
		}else if(global.vantagem_troca_tiro5 == 1){
			nave2_tiro5()
		}else if(global.vantagem_troca_tiro5 == 2){
			nave3_tiro5()
		}
		
	}

	alarm[0] = intervalo_tiro;
}


if(atirar && global.player == 2){

	if(level_tiro == 1){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro1 == 0){
			nave2_tiro1()
		}else if(global.vantagem_troca_tiro1 == 1){
			nave1_tiro1()
		}else if(global.vantagem_troca_tiro1 == 2){
			nave3_tiro1()
		}
		
		
		
	
	}else if(level_tiro == 2){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro2 == 0){
			nave2_tiro2()
		}else if(global.vantagem_troca_tiro2 == 1){
			nave1_tiro2()
		}else if(global.vantagem_troca_tiro2 == 2){
			nave3_tiro2()
		}
			
	
	}else if(level_tiro == 3){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro3 == 0){
			nave2_tiro3()
		}else if(global.vantagem_troca_tiro3 == 1){
			nave1_tiro3()
		}else if(global.vantagem_troca_tiro3 == 2){
			nave3_tiro3()
		}
		

	}else if(level_tiro == 4){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro4 == 0){
			nave2_tiro4()
		}else if(global.vantagem_troca_tiro4 == 1){
			nave1_tiro4()
		}else if(global.vantagem_troca_tiro4 == 2){
			nave3_tiro4()
		}
		
	
	}else if(level_tiro >= 5){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro5 == 0){
			nave2_tiro5()
		}else if(global.vantagem_troca_tiro5 == 1){
			nave1_tiro5()
		}else if(global.vantagem_troca_tiro5 == 2){
			nave3_tiro5()
		}
	}

	alarm[0] = intervalo_tiro;
}


if(atirar && global.player == 3){

	if(level_tiro == 1){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro1 == 0){
			nave3_tiro1()
		}else if(global.vantagem_troca_tiro1 == 1){
			nave1_tiro1()
		}else if(global.vantagem_troca_tiro1 == 2){
			nave2_tiro1()
		}
	
	}else if(level_tiro == 2){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro2 == 0){
			nave3_tiro2()
		}else if(global.vantagem_troca_tiro2 == 1){
			nave1_tiro2()
		}else if(global.vantagem_troca_tiro2 == 2){
			nave2_tiro2()
		}
	
	}else if(level_tiro == 3){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro3 == 0){
			nave3_tiro3()
		}else if(global.vantagem_troca_tiro3 == 1){
			nave1_tiro3()
		}else if(global.vantagem_troca_tiro3 == 2){
			nave2_tiro3()
		}

	}else if(level_tiro == 4){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro4 == 0){
			nave3_tiro4()
		}else if(global.vantagem_troca_tiro4 == 1){
			nave1_tiro4()
		}else if(global.vantagem_troca_tiro4 == 2){
			nave2_tiro4()
		}
	
	}else if(level_tiro >= 5){
		audio_play_sound(som_tiro,1,0);
		
		if(global.vantagem_troca_tiro5 == 0){
			nave3_tiro5()
		}else if(global.vantagem_troca_tiro5 == 1){
			nave1_tiro5()
		}else if(global.vantagem_troca_tiro5 == 2){
			nave2_tiro5()
		}
	}

	alarm[0] = intervalo_tiro;
}
	

