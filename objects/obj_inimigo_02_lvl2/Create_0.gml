/// @description Insert description here
// You can write your code in this editor

vspeed = 0.5;
pontos = 10;
vida_atual = 1

chance = 5 + global.sorte;

if(place_meeting(x,y,obj_inimigo01)){
	instance_destroy(id, false);
}

alarm[0] = random_range(1,3) * room_speed;


dropa_item = function(chance){
 var valor = random(100);
 
	 if(valor <= chance){
		instance_create_layer(x,y, "Tiros", obj_power_up);
	 }else if(valor > 20 && valor <= 25){
		instance_create_layer(x,y, "shield", obj_power_up_shield);
	 }
	
}
