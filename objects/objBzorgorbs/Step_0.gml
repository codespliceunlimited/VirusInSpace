/// @description Insert description here
// You can write your code in this editor

if instance_exists(World){
	if paused exit;
}


#region Dying
if myHealth <= 0 {
	instance_destroy();
	
}
#endregion

#region Moveing 

var move_xinput = 0;
var move_yinput = 0;

stale --

if state = states.check{
	var listSize = ds_list_size(checkPointList)
		if stale <= 0{
			if listSize > checkpoint{
				checkpoint++;
				stale = 250;
			}else{
				state = states.wander;	
				stale = 800;
			}
			
		}
		if listSize > 0{
		target = ds_list_find_value(checkPointList,checkpoint);	
		if target != undefined {
		if instance_exists(target){
			if distance_to_object(target) < 20{
				stale = 800;
				if ds_list_size(checkPointList) > checkpoint+1 {
					checkpoint++;	
					
				}else{
					state = states.wander;	
					stale = 800;
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
	
	if stale <= 0{
		state = states.check;
		checkpoint -= 2
	}
}
#endregion


if state = states.chase{
	stale = 800
	if instance_exists(food){
		if distance_to_object(food) > 1{
			newFood = instance_nearest(x,y,objFood);
			if collision_line(x,y,newFood.x,newFood.y,objBuilding,false,true) = noone{
				food = newFood;
			}
				
		
		this_angle = point_direction(x,y,food.x,food.y);
		var rand = random_range(-5,5)
		move_xinput += lengthdir_x(1, this_angle+rand);
	    move_yinput += lengthdir_y(1, this_angle+rand);
		}else{
			state = states.bite;
			biteTimer = 90;
			biteint = 30;
			bitestart = 0;
			with (food) {
				myHealth -= 10;
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
	bitestart ++;
	if bitestart >= biteint {
		bite = choose(sndBite1,sndBite2,sndBite3,sndBite4,sndBite5,sndBite6,sndBite7,sndBite8,sndBite9,sndBite10,sndBite11,sndBite12,sndBite13,sndBite14,sndBite15,sndBite16,sndBite17,sndBite18)
		audio_play_sound(bite,4,false);
		bitestart = 0;
	}
	if biteTimer <= 0 {
		state = states.wander;	
	}
}



var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	var move_speed_this_frame = move_speed;
	var move_dir = point_direction(0,0,move_xinput,move_yinput);
	var spd = move_speed_this_frame;
	var dir = move_dir;

	var xtarg = clamp(x+lengthdir_x(spd,dir),0,room_width);
	var ytarg = clamp(y+lengthdir_y(spd,dir),0,room_height);

	if !place_meeting(xtarg,ytarg,objWall) {
	    x = xtarg;
	    y = ytarg;
	}else {
	    var sweep_interval = 40;
    
	    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x+lengthdir_x(spd, angle_to_check);
	            ytarg = y+lengthdir_y(spd, angle_to_check);     
	            if !place_meeting(xtarg,ytarg,objWall) {
	                x = xtarg;
	                y = ytarg;  
	                exit;       
	            }   
	        }
	    }
	}
}

