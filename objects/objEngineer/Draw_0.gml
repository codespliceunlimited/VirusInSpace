/// @description Insert description here
// You can write your code in this editor
if instance_exists(World){
	if paused exit;
}

draw_set_alpha(1);
draw_self();
draw_text_ext_transformed(x-30,y-30, "Engineer",1,900,0.4,0.4,1);

//draw_healthbar(x-sprite_width,y-sprite_height,x+sprite_width,y-sprite_width-3,myHealth,c_black,c_green,c_green,0,true,true);