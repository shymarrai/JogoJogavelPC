// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(force){
	var screen = instance_create_layer(0,0, "shield", obj_screenshake);
	screen.shake = force
}

function destroi_seq(){
	if(global.fase == rm_level1 || room == rm_level1){
		var elementos = layer_get_all_elements("Boss_entrada");
		layer_sequence_destroy(elementos[0]);
	
		instance_create_layer(965,235, "Boss", obj_boss);
	}else if(global.fase == rm_level2 || room == rm_level2){
		var elementos = layer_get_all_elements("Boss_entrada");
		layer_sequence_destroy(elementos[0]);
	
		instance_create_layer(965,235, "Boss", obj_boss_lvl2);
	}
}

function cria_seq(){
	if(instance_exists(obj_player)){
		
		layer_sequence_create("sequences",obj_player.x,obj_player.y, sq_level_end);
		instance_destroy(obj_player, false);
		
		if(instance_exists(obj_control)){
			obj_control.level_end = true;
			if(room == rm_level1){
				global.fase = rm_level2
			}
			global.fase = rm_level2
			room_goto(rm_select_item)

		}
	}
	

}

function save_the_game(){
	ini_open("Save.ini");

	var fase = string(global.fase)
	var player = global.player
	var pontos = global.pontos
	var rapidez = global.rapidez
	var sorte = global.sorte
	var fire_rate = global.fire_rate
	var player_vida =  3 //global.player_vida
	var desvantagem_special = global.desvantagem_special
	var desvantagem_more_enemies =global.desvantagem_more_enemies
	var level_boss = global.level_boss
	var vantagem_escudo	 = global.vantagem_escudo	
	var vantagem_troca_tiro1 = global.vantagem_troca_tiro1
	var vantagem_troca_tiro2 = global.vantagem_troca_tiro2
	var vantagem_troca_tiro3 = global.vantagem_troca_tiro3
	var vantagem_troca_tiro4 = global.vantagem_troca_tiro4
	var vantagem_troca_tiro5 = global.vantagem_troca_tiro5

	
	ini_write_string("UltimaFase","fase",fase);
	ini_write_real("UltimaFase","player",player);
	ini_write_real("UltimaFase","pontos",pontos);
	ini_write_real("UltimaFase","rapidez",rapidez);
	ini_write_real("UltimaFase","sorte",sorte);
	ini_write_real("UltimaFase","fire_rate",fire_rate);
	ini_write_real("UltimaFase","player_vida",player_vida);
	ini_write_string("UltimaFase","desvantagem_special",desvantagem_special);
	ini_write_real("UltimaFase","desvantagem_more_enemies",desvantagem_more_enemies);
	ini_write_real("UltimaFase","level_boss",level_boss);
	ini_write_string("UltimaFase","vantagem_escudo",vantagem_escudo);
	ini_write_real("UltimaFase","vantagem_troca_tiro1",vantagem_troca_tiro1);
	ini_write_real("UltimaFase","vantagem_troca_tiro2",vantagem_troca_tiro2);
	ini_write_real("UltimaFase","vantagem_troca_tiro3",vantagem_troca_tiro3);
	ini_write_real("UltimaFase","vantagem_troca_tiro4",vantagem_troca_tiro4);
	ini_write_real("UltimaFase","vantagem_troca_tiro5",vantagem_troca_tiro5);
	
	
	
	

	ini_close();
	
	draw_set_font(fnt_gui);
	draw_text(room_width - 50, 50, "Salvando...");

}



function select_item(sorteio_vantagem,x_icone,y_icone){

	var code = 0
	// 20% +5 pontos em sorte 0 - 19
	if(sorteio_vantagem >= 0 && sorteio_vantagem <= 19){
		code = 1
		title_vantagem = "Sortudo!"
		texto_vantagem = "Ganhe mais 5 de sorte.No momento ela esta em ("+string(global.sorte)+")."
		layer_sprite_create(layer,x_icone,y_icone,clover);
	
	}else if(sorteio_vantagem >= 20 && sorteio_vantagem <= 39){
		// 20% +5 pontos em bonus de pontos 20 - 39
		code = 2
		title_vantagem = "Fominha!"
		texto_vantagem = "Ganhe mais 5 de bonus de pontos.No momento ele esta em ("+string(global.pontos)+")."
		layer_sprite_create(layer,x_icone,y_icone,meat);
	}else if(sorteio_vantagem >= 40 && sorteio_vantagem <= 59){
		// 20% +5 pontos em velocidade 40 - 59
		code = 3
		title_vantagem = "Ligeirinho!"
		texto_vantagem = "Ganhe mais 5 de rapidez.No momento ele esta em ("+string(global.rapidez)+")."
		layer_sprite_create(layer,x_icone,y_icone,falcon_moon);
	}else if(sorteio_vantagem >= 60 && sorteio_vantagem <= 79){
		// 20% 1 ganha um escudo gratis pra usar qnd quiser 60 - 79
		code = 4
		title_vantagem = "Protegido!"
		texto_vantagem = string("Ganhe um escudo pra usar quando quiser,funciona 1 vez.")
		layer_sprite_create(layer,x_icone,y_icone,shieldcomb);
	}else if(sorteio_vantagem >= 80 && sorteio_vantagem <= 99){
		// 80% trocar tiro de level 1 80 - 139
		code = 5
		title_vantagem = "Lvl 1 Make"
		texto_vantagem = string("Seu tiro nivel 1 sera trocado aleatoriamente.")
		layer_sprite_create(layer,x_icone,y_icone,d4);
	}else if(sorteio_vantagem >= 100 && sorteio_vantagem <= 119){
		// 60% trocar tiro de level 2 140 - 199
		code = 6
		title_vantagem = "Lvl 2 Make"
		texto_vantagem = string("Seu tiro nivel 2 sera trocado aleatoriamente.")
		layer_sprite_create(layer,x_icone,y_icone,d6);
	}else if(sorteio_vantagem >= 120 && sorteio_vantagem <= 139){
		// 40% trocar tiro de level 3 200 - 239
		code = 7
		title_vantagem = "Lvl 3 Make"
		texto_vantagem = string("Seu tiro nivel 3 sera trocado aleatoriamente.")
		layer_sprite_create(layer,x_icone,y_icone,d10);
	}else if(sorteio_vantagem >= 140 && sorteio_vantagem <= 159){
		// 20% trocar tiro de level 4 240 - 259
		code = 8
		title_vantagem = "Lvl 4 Make"
		texto_vantagem = string("Seu tiro nivel 4 sera trocado aleatoriamente.")
		layer_sprite_create(layer,x_icone,y_icone,d12);
	}else if(sorteio_vantagem >= 160 && sorteio_vantagem <= 164){
		// 5% trocar tiro de level 5 260 - 264
		code = 9
		title_vantagem = "Lvl 5 Make"
		texto_vantagem = string("Seu tiro nivel 5 sera trocado aleatoriamente.")
		layer_sprite_create(layer,x_icone,y_icone,d20);
	}else if(sorteio_vantagem >= 165){
		code = 10
		title_vantagem = "Metralha!"
		texto_vantagem = string("Seu tiro ganha mais fire rate.")
		layer_sprite_create(layer,x_icone,y_icone,uzi);
	
	}



	
	draw_self();
	if(room != rm_level1 && room != rm_level2){
		draw_set_font(fnt_text);
		draw_set_halign(fa_middle)
	}
	
	draw_text_ext(x_texto,y_texto, texto_vantagem,30,400);


	if(room != rm_level1 && room != rm_level2){
		draw_set_halign(fa_middle)
		draw_set_font(fnt_title);
	}
	draw_text_ext(x_title,y_title, title_vantagem,30,500);
	
	return code
}

function select_disadvantages(sorteio_desvantagem,x_icone_desvantagem,y_icone_desvantagem){
	var code = 0;


	if(sorteio_desvantagem >= 0 && sorteio_desvantagem <= 10){
		// menos 1 vida
		title_desvantagem = "Baleado!"
		texto_desvantagem = "Voce vai iniciar com 1 vida a menos."
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,half_heart);
		code = 1

	}else if(sorteio_desvantagem >= 11 && sorteio_desvantagem <= 20){
		// começa sem special
		title_desvantagem = "Fraco!"
		texto_desvantagem = "Inicie sem sua habilidade especial"
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,biohazard);
		code = 2

	}else if(sorteio_desvantagem >= 21 && sorteio_desvantagem <= 30){
		// menos sorte
		title_desvantagem = "Azarado!"
		texto_desvantagem = "Sua sorte diminui em 5, atualmente voce tem "+string(global.sorte)
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,bad_gnome);
		code = 3

	}else if(sorteio_desvantagem >= 31 && sorteio_desvantagem <= 40){
		// menos velocidade
		title_desvantagem = "Lento!"
		texto_desvantagem = "Voce vai perder 5 pontos de velocidade, atualmente voce tem "+string(global.rapidez)
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,turtle);
		code = 4

	}else if(sorteio_desvantagem >= 41 && sorteio_desvantagem <= 50){
		// menos bonus pontos
		title_desvantagem = "Faminto!"
		texto_desvantagem = "Voce vai perder 5 pontos de bonus de pontos, atualmente voce tem "+string(global.pontos)
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,vortex);
		code = 5
	
	}else if(sorteio_desvantagem >= 51 && sorteio_desvantagem <= 60){
		// tiro mais lento
		title_desvantagem = "Sem Bala!"
		texto_desvantagem = "Voce vai atirar mais lento."
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,ammo_box);
		code = 6


	}else if(sorteio_desvantagem >= 61 && sorteio_desvantagem <= 70){
		// anula essa vantagem
		title_desvantagem = "Anulado!"
		texto_desvantagem = "Voce não receberá essa vantagem"
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,interdiction);
		code = 7


	}else if(sorteio_desvantagem >= 71 && sorteio_desvantagem <= 80){
		// mais inimigos por level
		title_desvantagem = "Cercado!"
		texto_desvantagem = "As ondas de inimigos terao mais inimigos."
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,meeple_group);
		code = 8


	}else if(sorteio_desvantagem >= 81 && sorteio_desvantagem <= 90){
		// boss demora mais 2 leveis para surgir
		title_desvantagem = "Aguenta mais!"
		texto_desvantagem = "Boss ira demorar mais 2 leveis para surgir."
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,bully_minion);
		code = 9


	}else if(sorteio_desvantagem >= 91 && sorteio_desvantagem <= 100){
		// sem desvantem
		title_desvantagem = "NO!"
		texto_desvantagem = "Sem desvantagens dessa vez!"
		layer_sprite_create(layer,x_icone_desvantagem,y_icone_desvantagem ,freedom_dove);
		code = 0

	}
	
	draw_self();
	if(room != rm_level1 && room != rm_level2){
		draw_set_font(fnt_text);
		draw_set_halign(fa_middle)
	}

	//draw_text_transformed_color(x_title_desvantagem,y_title_desvantagem, title_desvantagem,3,3,0,c_black,c_black,c_black,c_black,1);
	draw_text_ext(x_texto_desvantagem,y_texto_desvantagem, texto_desvantagem,30,400);
	
	return code
}



function nave1_tiro1(){
	instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro_player);		

}

function nave1_tiro2(){
	instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);
}

function nave1_tiro3(){
	instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro_player);	
	instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);	
}

function nave1_tiro4(){
	
	var tiro01 = instance_create_layer(x - sprite_width / 2,y - sprite_height/5, "Tiros", obj_tiro_player_02);
				
	var tiro02 = instance_create_layer(x + sprite_width / 2,y - sprite_height/5, "Tiros", obj_tiro_player_02);
	
	tiro01.hspeed = -14;
	tiro02.hspeed = 14;

}

function nave1_tiro5(){
	instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);
	instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player);
		
	var tiro1 = instance_create_layer(x - sprite_width / 2,y - sprite_height/5, "Tiros", obj_tiro_player_02);
	var tiro2 = instance_create_layer(x + sprite_width / 2,y - sprite_height/5, "Tiros", obj_tiro_player_02);
		
	tiro2.hspeed += 14;
	tiro1.hspeed += -14;

}


function nave2_tiro1(){
		instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro_player_area);

}

function nave2_tiro2(){
	instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_area);
	instance_create_layer(x ,y + sprite_height/3, "Tiros", obj_tiro_player_mina);
}

function nave2_tiro3(){
	instance_create_layer(x - sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);
	instance_create_layer(x + sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);	
}

function nave2_tiro4(){
	instance_create_layer(x - sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);
	instance_create_layer(x + sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);	
	instance_create_layer(x ,y + sprite_height/3, "Tiros", obj_tiro_player_mina);	

}

function nave2_tiro5(){
	instance_create_layer(x - sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);
	instance_create_layer(x + sprite_width / 2 - 50,y - sprite_height/3, "Tiros", obj_tiro_player_area);	
		
	var mina = instance_create_layer(x ,y + sprite_height/3, "Tiros", obj_tiro_player_mina);	
	instance_create_layer(x ,y + sprite_height/3, "Tiros", obj_tiro_player_mina);	

	mina.vspeed = -8;

}

function nave3_tiro1(){
	instance_create_layer(x,y - sprite_height/3 - 100, "Tiros", obj_tiro_player_veloz);		
}


function nave3_tiro2(){
	if(!instance_exists(obj_tiro_player_indestrutivel)){
		instance_create_layer(x + 20,y - sprite_height/3 - 120, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 40,y - sprite_height/3 - 140, "Tiros", obj_tiro_player_indestrutivel);
	}
		
	instance_create_layer(x,y - sprite_height/3 - 100, "Tiros", obj_tiro_player_veloz);

}

function nave3_tiro3(){
	var tiro1 = instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
	var tiro2 = instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
		
	tiro1.hspeed += -8;
	tiro2.hspeed += 8;
		
	if(!instance_exists(obj_tiro_player_indestrutivel)){
		instance_create_layer(x + 20,y - sprite_height/3 - 120, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 40,y - sprite_height/3 - 140, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 60,y - sprite_height/3 - 160, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 80,y - sprite_height/3 - 180, "Tiros", obj_tiro_player_indestrutivel);
	}

}

function nave3_tiro4(){
	instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
		
	var tiro1 = instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
	var tiro2 = instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
		
	tiro1.hspeed += -8;
	tiro2.hspeed += 8;
		
		
	if(!instance_exists(obj_tiro_player_indestrutivel)){
		instance_create_layer(x + 20,y - sprite_height/3 - 120, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 40,y - sprite_height/3 - 140, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 60,y - sprite_height/3 - 160, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 80,y - sprite_height/3 - 180, "Tiros", obj_tiro_player_indestrutivel);
	}

}

function nave3_tiro5(){
	instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);	
		
	var tiro1 = instance_create_layer(x - sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
	var tiro2 = instance_create_layer(x + sprite_width / 2,y - sprite_height/3, "Tiros", obj_tiro_player_veloz);
		
	tiro1.hspeed += -8;
	tiro2.hspeed += 8;
		
	if(!instance_exists(obj_tiro_player_indestrutivel)){
		instance_create_layer(x + 20,y - sprite_height/3 - 120, "Tiros", obj_tiro_player_indestrutivel);
		instance_create_layer(x + 40,y - sprite_height/3 - 140, "Tiros", obj_tiro_player_indestrutivel);
		instance_create_layer(x + 60,y - sprite_height/3 - 160, "Tiros", obj_tiro_player_indestrutivel);
		//instance_create_layer(x + 80,y - sprite_height/3 - 180, "Tiros", obj_tiro_player_indestrutivel);
	}

}
