/// @description Insert description here
// You can write your code in this editor
if(image_alpha < 1){
	image_alpha += 1 / room_speed;
}

if(escala > 1.1 || escala < 0.8){
	aumento_escala *= -1; 
}else{
	aumento_escala *= 1; 
}

escala += aumento_escala

