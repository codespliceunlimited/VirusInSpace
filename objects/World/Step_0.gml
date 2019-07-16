/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(ord("R")){
	room_restart();	
}


seconds_passed = delta_time/1000000;

#region Camera

	xTo = (follow.x + mouse_x)/2;
	yTo = (follow.y + mouse_y)/2;
	


//update object position 
//xTo += (xTo - x) / 100000;
//yTo += (yTo - y) / 80000;

//dont let camera go outside of the room
xTo = clamp(xTo,view_W_half, room_width+view_W_half);
yTo = clamp(yTo,view_H_half, room_height+view_H_half);


//update camera view
camera_set_view_pos(camera,	(lerp(camera_get_view_x(camera), xTo-view_W_half,0.2)),(lerp(camera_get_view_y(camera), yTo-view_H_half,0.2)));
#endregion