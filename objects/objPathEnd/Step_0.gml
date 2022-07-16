/// @description Insert description here
// You can write your code in this editor

if instance_exists(World){
	if paused exit;
}


	timer ++;

	if finished{
		var _on_sync = rollback_sync_on_frame();
		if _on_sync{
			with (objWallE){
				if moveBack >0{
					moveBack -=0.5;
					x -= 0.5;
				}
			}
			with (objWallW){
				if moveBack >0{
					moveBack -= 0.5;
					x += 0.5;
				}
			}
		}
	}
	


if timer {
	var finisher = collision_rectangle(x,y,x+sprite_width,y+sprite_height,objGoodGuys,true,true);
	if finisher{
		if ds_list_find_index(scoreboardList,finisher) <0 {
			ds_list_add(scoreboardList,finisher);
		}
	}
	if !finished{
		var _on_sync = rollback_sync_on_frame();
		if _on_sync{
			if ds_list_size(scoreboardList) >0 {
				finished= true;
				totalTime = timer;
			}
		}
	}
}

