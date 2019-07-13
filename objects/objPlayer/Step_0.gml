/// @description Insert description here
// You can write your code in this editor


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
if gunFlow > 0 {
	gunFlow --;
		var slug = instance_create_layer(x,y,"Bullets",objBullet);	
		var directions = point_direction(x,y,mouse_x,mouse_y);
		directions = directions + random_range(-1,1);
		slug.dir = directions;	
}