/// @description Insert description here
// You can write your code in this editor
if !finished{
	timer ++;
}else{
	
	with (objWallE){
		if moveBack >0{
			moveBack --;
			x -=1;
		}
	}
	with (objWallW){
		if moveBack >0{
			moveBack --;
			x +=1;
		}
	}
}

if timer % 20 {
	var finisher = collision_rectangle(x,y,x+sprite_width,y+sprite_height,objGoodGuys,false,true);
	if finisher{
		if ds_list_find_index(scoreboardList,finisher) <0 {
			ds_list_add(scoreboardList,finisher);
		}
	}
	
	if ds_list_size(scoreboardList) >0 {
		finished= true;
		totalTime = timer;
	}
}

