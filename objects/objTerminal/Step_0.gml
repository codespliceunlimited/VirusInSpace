/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,sprite_height,objEngineer,false,true){
	cost --;
	image_speed = 0.3;
}else{
	image_speed = 0;	
}

if cost <= 0 {
	with objWall {
		if distance_to_object(other) < 800{
			blocking = false;	
		}
	}

	instance_destroy();	
}