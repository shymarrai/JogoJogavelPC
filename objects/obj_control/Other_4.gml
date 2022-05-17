/// @description Insert description here
// You can write your code in this editor
audio_stop_all()
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
	alarm[0] = room_speed;
	
if(global.fase == rm_level1 || room == rm_level1){
	audio_play_sound(snd_level,0,1);
	sequence = layer_sequence_create("sequences",979 ,room_height / 2 ,sq_fase1);
}

if(global.fase == rm_level2 || room == rm_level2){
	audio_play_sound(snd_level2,0,1);
	sequence = layer_sequence_create("sequences",979 ,room_height / 2 ,sq_fase2);
}
