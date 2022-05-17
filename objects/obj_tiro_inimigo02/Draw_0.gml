/// @description Insert description here
// You can write your code in this editor
draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sp_brilho_tiro_inimigo_02, image_index, x,y, image_xscale * 0.4, image_yscale * 0.4, image_angle, cores,  0.3);
gpu_set_blendmode(bm_normal);