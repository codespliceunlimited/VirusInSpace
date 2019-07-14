/// @description Insert description here
// You can write your code in this editor

if !active exit;

if checknumber = 0 {
	var checkpoint = instance_nearest(x,y,objCheckpoint);
	checknumber = ds_list_find_index(checkPointList,checkpoint);
}
if checknumber < 0{
	checknumber = 0	
}
if timer <= 0 {
	if instance_number(objBzorgorbs) < enemyTotal {
		var minion = instance_create_layer(x+sprite_width/2,y+sprite_height/2,"Instances",objBzorgorbs);
		minion.checkpoint = checknumber;
	}
	timer = 300;
}

timer --;