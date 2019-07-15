/// @description Insert description here
// You can write your code in this editor


image_index = ((-0.06*myHealth)+6);


#region wander

var move_xinput = 0;
var move_yinput = 0;

if state = states.wander{
	change --;
	if change <= 0 {
		change = irandom_range(5,60);
		movement_inputs[irandom(3)] = irandom(1);

	}else if change mod 5 = 0{
		xoff+= random(0.02)
		image_index = wrap(scr_sn_noise(0,image_number*3,1,1,1,(xoff)),0,image_number-1);
	}
 
	for ( var i = 0; i < array_length_1d(movement_inputs); i++){
	    var this_key = movement_inputs[i];
	    if this_key {
	        var this_angle = i*90;
	        move_xinput += lengthdir_x(1, this_angle);
	        move_yinput += lengthdir_y(1, this_angle);
	    }
	}
	if instance_exists(objPlayer){
		if distance_to_object(objPlayer) > (radius/2){
			state = states.comeBack;
		}
	}
	danger = collision_circle(x,y,radius,objBzorgorbs,false,true);
	if danger {
		state = states.run;
	}
}
#endregion
#region  ComeBack
if state= states.comeBack{
	if instance_exists(objPlayer){
		this_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		move_xinput += lengthdir_x(1, this_angle);
	    move_yinput += lengthdir_y(1, this_angle);
	}
		danger = collision_circle(x,y,radius,objBzorgorbs,false,true);
		if danger {
			state = states.run;
		}
		if instance_exists(objPlayer){
			if distance_to_object(objPlayer) < (radius/3){
				state = states.wander;
			}
		}
}
#endregion
#region  Run
if state= states.run{
		if instance_exists(danger){
			danger = instance_nearest(x,y,objBzorgorbs);
		if distance_to_object(danger) > radius-100{
			state=states.wander;	
		}
		this_angle = point_direction(danger.x,danger.y,x,y);
		move_xinput += lengthdir_x(1, this_angle);
	    move_yinput += lengthdir_y(1, this_angle);
	}else{
		state = states.wander;	
	}
}

#endregion
#region Chase
if state = states.chase{
		if instance_exists(target){
		if distance_to_object(target) > 1{
			this_angle = point_direction(x,y,target.x,target.y);
			move_xinput += lengthdir_x(1, this_angle);
		    move_yinput += lengthdir_y(1, this_angle);
		}
		danger = collision_circle(x,y,radius,objBzorgorbs,false,true);
		if danger {
			state = states.run;
		}
	}else{
		state = states.wander;	
	}	
}

#endregion
#region Move
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

#endregion

#region Dying
if myHealth <= 0 {
	instance_destroy();
	var newYou = instance_create_layer(x,y,"Instances",objBzorgorbs);
	var checkpoint = instance_nearest(x,y,objCheckpoint);
	var checknumber = ds_list_find_index(checkPointList,checkpoint);
	newYou.checkpoint = checknumber;
	
}
#endregion