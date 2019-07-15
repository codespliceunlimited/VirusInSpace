/// @description Insert description here
// You can write your code in this editor






if Dead {
	draw_sprite(sprDeath,0,view_W_half,view_H_half);
	
}






#region		News Feed
var size = ds_list_size(newsFeed);
draw_set_font(fnt_small);
//draw them newest to oldest virticaly 
if size > 0 {
	for (var i = 0; i < size; i++){
		
		draw_text(startfeedx,startfeedy - i*50, string(newsFeed[|i]));	
	}
	newsTimeOut --;
}else{
	newsTimeOut = 300;	
}

//expire old entries
if newsTimeOut < 0 {
	ds_list_delete(newsFeed, 0);
	newsTimeOut = 100;
}
#endregion
#region		FPS Draw
draw_set_color(c_green);
draw_set_alpha(0.6);
draw_text(15,10,fps_real);
draw_text(15,50,instance_number(objBzorgorbs));

#endregion