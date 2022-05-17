/// @description Insert description here
// You can write your code in this editor
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);
shake = lerp(shake,0,0.1)

if shake <= .1
{
	instance_destroy();	
}