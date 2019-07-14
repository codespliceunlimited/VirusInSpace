/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);

for (var i=0; i< screenWidthPosition; i++){
	draw_line(i*32,0,i*32,room_height);
}

for (var i=0; i< screenH; i++){
	draw_line(0,i*32,room_width,i*32);
}