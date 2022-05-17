/// @description Insert description here
// You can write your code in this editor


var altura_gui = display_get_height();
var cont = 40;
var mult = 0;
repeat(vida){
	draw_sprite_ext(sprite, 0, 30 + cont * mult, altura_gui - altura_gui + 90, 0.3,0.3,0, color_life, 0.4);
	mult++;
}
