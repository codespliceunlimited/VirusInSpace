
switch (room)
{
case Lobby:
font_set(fnt_title_main,fa_center,fa_left)
	draw_set_font(fnt_title_main);
	draw_set_halign(fa_center);
    var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "Virus In Space", 3, 3, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 200, 
@"Save as many friendlys as possible!

WASD to move
Click to shoot");
	draw_set_halign(fa_left);
    break;
}