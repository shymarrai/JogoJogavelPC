/// @description Insert description here
// You can write your code in this editor
texto = ""
altura = 10
image_index = 1
y -= altura
	


ini_open("Save.ini");

	var player = ini_read_string("UltimaFase","player",1);
	var pontos = ini_read_real("UltimaFase","pontos",0);
	var rapidez = ini_read_real("UltimaFase","rapidez",8);
	var sorte = ini_read_real("UltimaFase","sorte",0);
	var fire_rate = ini_read_real("UltimaFase","fire_rate",30);
	var player_vida = ini_read_real("UltimaFase","player_vida",3);
	var desvantagem_special =ini_read_string("UltimaFase","desvantagem_special",false);
	var desvantagem_more_enemies = ini_read_real("UltimaFase","desvantagem_more_enemies",0);
	var level_boss = ini_read_real("UltimaFase","level_boss",10);
	var vantagem_escudo = ini_read_string("UltimaFase","vantagem_escudo",false);
	var vantagem_troca_tiro1 = ini_read_real("UltimaFase","vantagem_troca_tiro1",0);
	var vantagem_troca_tiro2 = ini_read_real("UltimaFase","vantagem_troca_tiro2",0);
	var vantagem_troca_tiro3 = ini_read_real("UltimaFase","vantagem_troca_tiro3",0);
	var vantagem_troca_tiro4 = ini_read_real("UltimaFase","vantagem_troca_tiro4",0);
	var vantagem_troca_tiro5 = ini_read_real("UltimaFase","vantagem_troca_tiro5",0);
	
	var fase = ini_read_string("UltimaFase","fase", rm_select_player);
	
	global.fase = fase
	
ini_close();


destino = global.fase

// variaves das vantagens e desvantagens
global.player = player
global.pontos = pontos
global.rapidez = rapidez
global.sorte = sorte
global.fire_rate = fire_rate
global.player_vida = player_vida
global.desvantagem_special = desvantagem_special
global.desvantagem_more_enemies = desvantagem_more_enemies
global.level_boss = level_boss
global.vantagem_escudo = vantagem_escudo
global.vantagem_troca_tiro1 = vantagem_troca_tiro1
global.vantagem_troca_tiro2 = vantagem_troca_tiro2
global.vantagem_troca_tiro3 = vantagem_troca_tiro3
global.vantagem_troca_tiro4 = vantagem_troca_tiro4
global.vantagem_troca_tiro5 = vantagem_troca_tiro5







