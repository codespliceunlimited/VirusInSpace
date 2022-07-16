/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_self();
//draw_text(x,y-50,string(stale))

draw_healthbar(x-sprite_width,y-sprite_height,x+sprite_width,y-sprite_width-3,myHealth,c_black,c_green,c_green,0,true,true);