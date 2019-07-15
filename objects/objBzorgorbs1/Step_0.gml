/// @description Insert description here
// You can write your code in this editor
#region Dying
if myHealth <= 0 {
	instance_destroy();
	
}
#endregion

#region Moveing 

var move_xinput = 0;
var move_yinput = 0;

if state = states.check{
		if ds_list_size(checkPointList) > 0{
		target = ds_list_find_value(checkPointList,checkpoint);	
		if target != undefined {
		if instance_exists(target){
			if distance_to_object(target) < 1{
				if ds_list_size(checkPointList) > checkpoint+1 {
					checkpoint++;	
				}else{
					state = states.wander;	
				}
			}
		}
		
		this_angle = point_direction(x,y,target.x,target.y);
		move_xinput += lengthdir_x(1, this_angle);
	    move_yinput += lengthdir_y(1, this_angle);
		}
	}
	food = collision_circle(x,y,radius,objFood,false,true);
	if food {
		if collision_line(x,y,food.x,food.y,objBuilding,false,true) = noone{
			state = states.chase;
		}
	}
}

if state = states.wander{
	move_speed = 400;
		change --;
	if change <= 0 {
		change = irandom_range(5,60);
		movement_inputs[irandom(3)] = irandom(1);

	}else if change mod 5 = 0{
		//xoff+= random(0.02)
		//image_index = wrap(scr_sn_noise(0,image_number*3,1,1,1,(xoff)),0,image_number-1);
	}
 
	for ( var i = 0; i < array_length_1d(movement_inputs); i++){
	    var this_key = movement_inputs[i];
	    if this_key {
	        var this_angle = i*90;
	        move_xinput += lengthdir_x(1, this_angle);
	        move_yinput += lengthdir_y(1, this_angle);
	    }
	}
	
	food = collision_circle(x,y,radius,objFood,false,true);
	if food {
		if collision_line(x,y,food.x,food.y,objBuilding,false,true) = noone{
			state = states.chase;
		}
	}
}
#endregion


if state = states.chase{
	if instance_exists(food){
		move_speed = 600;
		if distance_to_object(food) > 1{
		food = instance_nearest(x,y,objFood);
		
		this_angle = point_direction(x,y,food.x,food.y);
		move_xinput += lengthdir_x(1, this_angle);
	    move_yinput += lengthdir_y(1, this_angle);
		}else{
			state = states.bite;
			biteTimer = 30;
			with (food) {
				myHealth -= 20;
			}
		}
	}else{
		state = states.wander;
		
	}
	if distance_to_object(food) > radius*2{
		state = states.wander;	
	}
}

if state = states.bite {
	biteTimer --;
	if biteTimer <= 0 {
		state = states.wander;	
	}
}



var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	var move_speed_this_frame = move_speed*seconds_passed;
	var move_dir = point_direction(0,0,move_xinput,move_yinput);
	var spd = move_speed_this_frame;
	var dir = move_dir;

	var xtarg = clamp(x+lengthdir_x(spd,dir),0,room_width);
	var ytarg = clamp(y+lengthdir_y(spd,dir),0,room_height);

	if place_free(xtarg,ytarg) {
	    x = xtarg;
	    y = ytarg;
	}else {
	    var sweep_interval = 40;
    
	    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x+lengthdir_x(spd, angle_to_check);
	            ytarg = y+lengthdir_y(spd, angle_to_check);     
	            if place_free(xtarg,ytarg) {
	                x = xtarg;
	                y = ytarg;  
	                exit;       
	            }   
	        }
	    }
	}
}

