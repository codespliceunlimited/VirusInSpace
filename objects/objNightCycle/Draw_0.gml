/// @description Insert description here
// You can write your code in this editor
if room = GameWorld {
	surface_set_target(surf_nightCycle);
	draw_clear(c_black);
	surface_reset_target();
	draw_surface_ext(surf_nightCycle,0,0,1,1,0,c_white,night_alpha);
}