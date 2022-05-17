/// @description Insert description here
// You can write your code in this editor
if(troquei_room == false){
	alpha += 0.02;
}else{
	alpha -= 0.02

}

if(alpha >= 1 && troquei_room == false){
	
	room_goto(destino);
	if(destino == rm_menu){
		game_restart()
	}
	
}

if(alpha <= 0){
	instance_destroy();
}