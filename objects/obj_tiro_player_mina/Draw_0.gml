/// @description Insert description here
// You can write your code in this editor

//desenhar o tiro
draw_self();

//alterando como o video trata as cores
gpu_set_blendmode(bm_add);
//desenhar o brilho

var tamanho_x = image_xscale 
var tamanho_y = image_yscale 


draw_sprite_ext(sp_mina_brilho, image_index, x,y - 10, tamanho_x , tamanho_y , image_angle, global.cores, 0.4);
//voltando ao normal
gpu_set_blendmode(bm_normal);