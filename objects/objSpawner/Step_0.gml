/// @description Insert description here
// You can write your code in this editor

if !active exit;

if timer <= 0 {
	if instance_number(objBzorgorbs) < enemyTotal {
		instance_create_layer(x+sprite_width/2,y+sprite_height/2,"Instances",objBzorgorbs);	
	}
	timer = 300;
}

timer --;