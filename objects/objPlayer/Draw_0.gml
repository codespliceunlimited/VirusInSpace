/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_self();
var dir = point_direction(x,y,mouse_x,mouse_y);

if mouse_x < x {
	var flip = -1;	
}else{
	var flip = 1;	
}
draw_healthbar(x-sprite_width,y-sprite_height,x+sprite_width,y-sprite_width-3,myHealth,c_black,c_green,c_green,0,true,true);
draw_sprite_ext(ITEMINFO[myGun,iteminfo.sprite],0,x,y,1,flip,dir,c_white,1);