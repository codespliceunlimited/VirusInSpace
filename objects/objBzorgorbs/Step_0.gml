/// @description Insert description here
// You can write your code in this editor
#region Dying
if myHealth <= 0 {
	instance_destroy();
	
}
#endregion

#region Moveing 

if state = states.wander{
	change --;
	if change <= 0 {
		change = irandom_range(5,60);
		movement_inputs[irandom(3)] = irandom(1);

	}else if change mod 5 = 0{
		xoff+= random(0.02)
		image_index = wrap(scr_sn_noise(0,image_number*3,1,1,1,(xoff)),0,image_number-1);
	}
	
	
	
	var seconds_passed = delta_time/1000000;
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
}



var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	var move_dir = point_direction(0,0,move_xinput,move_yinput);
	Movement(move_speed_this_frame,  move_dir);
}

#endregion