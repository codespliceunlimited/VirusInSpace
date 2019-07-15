/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

width = room_width/sprite_width;
height = room_height/sprite_height;

globalvar seconds_passed,checkPointList ;

seconds_passed = delta_time/1000000;
checkPointList = ds_list_create();