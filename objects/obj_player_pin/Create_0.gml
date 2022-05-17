/// @description start variables
velocidade = 15;


left = function(){
	//image_alpha = 0;
	if(image_xscale >= image_xscale + 0.1){
		image_xscale +=  0.1;
	}
	
	if(image_yscale >= image_yscale + 0.1){
		image_yscale +=  0.1;
	}
	
	if(image_angle >= 0 && image_angle <= 10 ){
		image_angle = 10;
		
	}else{
		image_angle = 0
	}
	
	//draw_sprite_ext(sprite_index, image_index,x,y, image_xscale + 0.1, image_yscale - 0.1, image_angle + 10, image_blend, 1);
}

right = function(){
	//image_alpha = 0;
	
	if(image_xscale >= image_xscale + 0.1){
		image_xscale +=  0.1;
	}
	
	if(image_yscale >= image_yscale + 0.1){
		image_yscale +=  0.1;
	}
	
	if(image_angle >=  -15 && image_angle <= 0){
		image_angle = -15;
	}else{
		image_angle = 0
	}
	
	//draw_sprite_ext(sprite_index, image_index,x,y, image_xscale + 0.1, image_yscale - 0.1, image_angle + 10, image_blend, 1);
}


