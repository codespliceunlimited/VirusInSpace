/// @description Insert description here
// You can write your code in this editor

var input = rollback_get_input();


timer ++;

image_index = ((-0.06*myHealth)+6);

if input.grab{
	var gun = collision_circle(x,y,radius/4,objPickup,false,true);
	if gun {
		myGun = gun.type;
		var sndReload = ITEMINFO[myGun,iteminfo.sndReload]
		audio_play_sound(sndReload,3,false);
		instance_destroy(gun);
	}
}

dir = point_direction(x,y,input.m_x,input.m_y);

#region Movement


var move_speed_this_frame = move_speed;

var move_xinput = input.right - input.left ;
var move_yinput = input.down - input.up;

 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    Movement(move_speed_this_frame,  move_dir);
}

#endregion
// Shooting
if input.fire_pressed{
	if gunFlow <= 0 {
		var sndShots = ITEMINFO[myGun,iteminfo.sndShot]
		audio_play_sound(sndShots,3,false);
		gunFlow = ITEMINFO[myGun,iteminfo.fireRate];
	}
	
}

// Timers
if timer % 10 = 0 {
	var gun = collision_circle(x,y,radius/4,objPickup,false,true);
	if gun{
		var E = instance_create_layer(gun.x,gun.y,"Interactions",o_damagetext);
		E.mytext = "E";
	}
	spawner = collision_circle_list(x,y,radius*2,objSpawner,false,true,spawnerList,false);
	if spawner > 0{
		for (var i=0; i< spawner; i++){
			thisSpawner = spawnerList[|i];
			thisSpawner.active = true;
		}
		ds_list_clear(spawnerList);
	}
	
	check = collision_circle(x,y,radius,objCheckpoint,false,true);
	if check{
		 if ds_list_find_index(checkPointList,check) < 0{
			ds_list_add(checkPointList, check);
		 }
	 }
}
if gunFlow > 0 {
	gunFlow --;
		var slug = instance_create_layer(x,y,"Bullets",objBullet);	
		var directions = point_direction(x,y,input.m_x,input.m_y);
		if myGun = Loot.shotgun{
			directions = directions + random_range(-10,10);
		}else{
			directions = directions + random_range(-1,1);
		}
		slug.dir = directions;	
		slug.dmg = ITEMINFO[myGun,iteminfo.damage];
		slug.bulletSpeed = (15 *ITEMINFO[myGun,iteminfo.spdMod]);
		slug.maxBulletSpeed= (15 *ITEMINFO[myGun,iteminfo.spdMod]);
}

#region Dying
if myHealth <= 0 {
	instance_destroy();
	if !instance_exists(objPlayer){
		Dead = true;
	
	}
	with(objGoodGuys){
		danger = noone;
	}
	var newYou = instance_create_layer(x,y,"Instances",objBzorgorbs);
	newYou.move_speed = 7;
	if !instance_exists( objCamera.follow){
		objCamera.follow = newYou;
	}
	var checkpoint = instance_nearest(x,y,objCheckpoint);
	var checknumber = ds_list_find_index(checkPointList,checkpoint);
	newYou.checkpoint = checknumber;
	audio_play_sound(sndTransform,4,false);
	audio_play_sound(sndPlayerDie,4,false);
	

	
}
#endregion
