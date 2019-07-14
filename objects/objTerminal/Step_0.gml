/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,sprite_height,objEngineer,false,true){
	cost --;
}

if cost <= 0 {
	instance_destroy();	
}