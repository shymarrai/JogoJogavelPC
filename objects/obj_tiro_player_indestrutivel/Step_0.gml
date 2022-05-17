/// @description Insert description here
// You can write your code in this editor

image_xscale = lerp(image_xscale, 1, 0.3);
image_yscale = lerp(image_yscale, 1, 0.3);

if(instance_exists(obj_inimigo01)){
	direction = point_direction(x,y, obj_inimigo01.x, obj_inimigo01.y);
	image_angle = direction + 90 ;
}else if(instance_exists(obj_boss)){
	direction = point_direction(x,y, obj_boss.x, obj_boss.y);
	image_angle = direction + 90 ;
}
