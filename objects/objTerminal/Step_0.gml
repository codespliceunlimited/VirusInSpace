/// @description Insert description here
// You can write your code in this editor
if instance_exists(World){
	if paused exit;
}

if collision_circle(x,y,sprite_height,objEngineer,false,true){
	cost --;
	image_speed = 0.3;
}else{
	image_speed = 0;	
}

if cost <= 0 {
	var anotherOne = collision_circle(x,y,400,objTerminal,false,true)
	if anotherOne = noone{
		with objWall {
			if distance_to_object(other) < 800{
				blocking = false;	
			}
		}
	}

	instance_destroy();	
}

