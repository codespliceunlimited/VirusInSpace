/// @description Insert description here
// You can write your code in this editor
timer ++;

#region Movement

seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    Movement(move_speed_this_frame,  move_dir);
}

#endregion
// Shooting
if mouse_check_button_pressed(mb_left){
	
	gunFlow = ITEMINFO[myGun,iteminfo.fireRate];
	
}

// Timers
if timer % 10 = 0 {
	spawner = collision_circle_list(x,y,radius*2,objSpawner,false,true,spawnerList,false);
	if spawner > 0{
		for (var i=0; i< spawner; i++){
			thisSpawner = spawnerList[|i];
			thisSpawner.active = true;
		}
		ds_list_clear(spawnerList);
	}
	
	check = collision_circle(x,y,radius*2,objCheckpoint,false,true);
	if check{
		 if ds_list_find_index(checkPointList,check) < 0{
			ds_list_add(checkPointList, check);
		 }
	 }
}
if gunFlow > 0 {
	gunFlow --;
		var slug = instance_create_layer(x,y,"Bullets",objBullet);	
		var directions = point_direction(x,y,mouse_x,mouse_y);
		directions = directions + random_range(-1,1);
		slug.dir = directions;	
		slug.dmg = ITEMINFO[myGun,iteminfo.damage];
}


#region Camera

	xTo = (x + mouse_x)/2;
	yTo = (y + mouse_y)/2;
	


//update object position 
//xTo += (xTo - x) / 100000;
//yTo += (yTo - y) / 80000;

//dont let camera go outside of the room
xTo = clamp(xTo,view_W_half, room_width+view_W_half);
yTo = clamp(yTo,view_H_half, room_height+view_H_half);


//update camera view
camera_set_view_pos(camera,	(lerp(camera_get_view_x(camera), xTo-view_W_half,0.2)),(lerp(camera_get_view_y(camera), yTo-view_H_half,0.2)));
#endregion