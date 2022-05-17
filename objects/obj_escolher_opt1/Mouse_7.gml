/// @description Insert description here
// You can write your code in this editor
image_index = 0
y += altura


if(codigo_vantagem == 1 && codigo_desvantagem != 7){
	global.sorte += 5
	
	codigo_vantagem = 0
}else if(codigo_vantagem == 2 && codigo_desvantagem != 7){
	global.pontos += 5
	
	codigo_vantagem = 0
}else if(codigo_vantagem == 3 && codigo_desvantagem != 7){
	global.rapidez += 5

	codigo_vantagem = 0
}else if(codigo_vantagem == 4 && codigo_desvantagem != 7){
	global.vantagem_escudo = true

	codigo_vantagem = 0
}else if(codigo_vantagem == 5 && codigo_desvantagem != 7){
	global.vantagem_troca_tiro1 = choose(1,2)

	
	codigo_vantagem = 0
}else if(codigo_vantagem == 6 && codigo_desvantagem != 7){
	global.vantagem_troca_tiro2 = choose(1,2)
	
	codigo_vantagem = 0
}else if(codigo_vantagem == 7 && codigo_desvantagem != 7){
	global.vantagem_troca_tiro3 = choose(1,2)
	
	codigo_vantagem = 0
}else if(codigo_vantagem == 8 && codigo_desvantagem != 7){
	global.vantagem_troca_tiro4 = choose(1,2)
	
	codigo_vantagem = 0
}else if(codigo_vantagem == 9 && codigo_desvantagem != 7){
	global.vantagem_troca_tiro5 = choose(1,2)
	codigo_vantagem = 0
}else if(codigo_vantagem == 9 && codigo_desvantagem != 7){
	global.fire_rate -= 10

}


if(codigo_desvantagem == 1){
	if(global.player_vida > 1){
		global.player_vida--; 
	}
	
	
}else if(codigo_desvantagem == 2){
	global.desvantagem_special = true
	
}else if(codigo_desvantagem == 3){
	global.sorte -= 5
	
}else if(codigo_desvantagem == 4){
	global.rapidez -= 5
	
}else if(codigo_desvantagem == 5){
	global.pontos -= 5

// o 7 é anular a vantagem
}else if(codigo_desvantagem == 6){
	global.fire_rate += 10

}else if(codigo_desvantagem == 8){
	global.desvantagem_more_enemies += 5

}else if(codigo_desvantagem == 9){
	global.level_boss += 2

}

var transicao = instance_create_layer(0,0,layer,obj_transicao);
//audio_stop_all();
transicao.destino = destino