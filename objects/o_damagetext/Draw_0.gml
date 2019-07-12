/// @description Insert description here
// You can write your code in this editor
/// @description 
x += tween(x,xtarg,.1);
y += tween(y,ytarg,.1);

font_set(fnt_large,fa_center,fa_middle);
draw_text_transformed_colour(
    x,y,
    string_hash_to_newline(mytext),scale*scalemod,scale*scalemod,angle,
    color,color,color,color,
    vis);

scale += tween(scale,1,.2);
vis -= 2/room_speed
if vis < 0
    instance_destroy();

