/// @description Insert description here
// You can write your code in this editor
//glow flashlight
gpu_set_blendmode(bm_src_color);
draw_spr_ext(spr_flashlight,0,x,y,glow_size,glow_size,0,c_white,1);
gpu_set_blendmode(normal);
