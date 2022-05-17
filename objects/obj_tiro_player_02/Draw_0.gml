/// @description Insert description here
// You can write your code in this editor

draw_self();

//alterando como o video trata as cores
gpu_set_blendmode(bm_add);
//desenhar o brilho

draw_sprite_ext(sp_brilho_tiro_1, image_index, x,y, image_xscale * 0.6, image_yscale * 0.6, image_angle, global.cores, 0.64);
//voltando ao normal
gpu_set_blendmode(bm_normal);