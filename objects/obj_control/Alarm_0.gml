/// @description Insert description here
// You can write your code in this editor

var mult = 18 + global.desvantagem_more_enemies;

if(level >= 4 && global.fase == rm_level1){
	mult += level + 5;
}else if(level >= 4 && global.fase == rm_level2){
	mult += level - 4
}
	

if(!instance_exists(obj_inimigo01)){
	if(level < global.level_boss && !paused){
		repeat(mult * level){
			cria_inimigo();	
		}
	}else{
		if(criar_boss == true && !paused){
			if(room == rm_level1){
				obj_player.special = false
				layer_sequence_create("Boss_entrada",960, 489, sq_boss_entrada);
				criar_boss = false
				audio_stop_all()
			}
			
			if(room == rm_level2){
				obj_player.special = false
				layer_sequence_create("Boss_entrada",960, 489, sq_boss_entrada2);
				criar_boss = false
				audio_stop_all()
			}
			
			
		}
	}
}

alarm[0] = room_speed * 5;