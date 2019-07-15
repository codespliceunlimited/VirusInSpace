/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,sprite_height,objEngineer,false,true){
	cost --;
	image_speed = 0.3;
}else{
	image_speed = 0;	
}

if cost <= 0 {
var door = instance_nearest(x,y,objWallN);
	door.blocking = false;
	
var door = instance_nearest(x,y,objWallS);
door.blocking = false;

	instance_destroy();	
}