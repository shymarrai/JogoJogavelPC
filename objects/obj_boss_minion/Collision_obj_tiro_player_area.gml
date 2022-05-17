/// @description Insert description here
// You can write your code in this editor

if(vida > 0){
	vida -= 2 ;
	screenshake(10);
}else{
	instance_destroy();
}

instance_destroy(other);
