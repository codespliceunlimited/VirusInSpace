/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

width = room_width/sprite_width;
height = room_height/sprite_height;
for (var i=0; i<=width+1; i++){
	for (var j=0; j < height+2; j++){
		instance_create_layer(i*(sprite_width+15),j*(sprite_height+25),"Instances",TowerThing);
	}
}