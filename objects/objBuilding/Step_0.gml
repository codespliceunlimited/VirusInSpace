/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(x+1,y+1,x+sprite_width-1,y+sprite_height-1,objPlayer, false,false){
	alpha = 0.6;
	sprite_index = BuildingRoofless;
}else{
	alpha = 1;
	sprite_index = Building;
}