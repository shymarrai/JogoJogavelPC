
//movendo para a esquerda

// var up, down, left, right, fire;
image_angle = 0;
if(keyboard_check(ord("W"))){
	y -= keyboard_check(ord("W")) * velocidade;
}else if(keyboard_check(vk_up)){
	y -= keyboard_check(vk_up) * velocidade;
}

if(keyboard_check(ord("S"))){
	y += keyboard_check(ord("S")) * velocidade;
}else if(keyboard_check(vk_down)){
	y += keyboard_check(vk_down) * velocidade;
}

if(keyboard_check(ord("A"))){
	x -= keyboard_check(ord("A")) * velocidade;
	left();
}else if(keyboard_check(vk_left)){
	x -= keyboard_check(vk_left) * velocidade;
	left();
}

if(keyboard_check(ord("D"))){
	x += keyboard_check(ord("D")) * velocidade;
	right();
}else if(keyboard_check(vk_right)){
	x += keyboard_check(vk_right) * velocidade;
	right();
}

//limitando movimentação na tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);





