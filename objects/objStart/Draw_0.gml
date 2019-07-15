/// @description Insert description here
// You can write your code in this editor
switch (room)
{
case Lobby:
	draw_set_font(fnt_title_main);
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "Virus In Space", 3, 3, 0, c, c, c, c, 1);
	draw_set_font(fnt_title_description);
	draw_text(room_width / 2, 200, 
	@"Rescue as many friendlys as you can!
	
	WASD to move
	Click to shoot
	
	>>PRESS ANY KEY TO START<<");
	draw_set_halign(fa_left);
	break;
case GameWorld:
    break;
}
