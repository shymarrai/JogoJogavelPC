/// @description Insert description here
// You can write your code in this editor
draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sp_brilho_shield, image_index, x,y, image_xscale * 0.4, image_yscale * 0.5, image_angle, c_aqua,  .3);
gpu_set_blendmode(bm_normal);