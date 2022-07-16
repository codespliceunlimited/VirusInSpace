/// @description show_damagetext(x,y,dmgtext,dmgtext_color,dmgtext_life,dmgtext_scale);
/// @param x
/// @param y
/// @param dmgtext
/// @param dmgtext_color
/// @param dmgtext_life
/// @param dmgtext_scale
function show_damagetext(argument0, argument1, argument2, argument3, argument4, argument5) {

	var xx = argument0, yy = argument1;
	var txt = argument2;
	var col = argument3;
	var lifetime = argument4;
	var sc = argument5;

	with instance_create_layer(xx,yy,"Instances",o_damagetext) {
	    mytext = txt;
	    color = col;
	    vis = lifetime;    
	    scalemod = sc;
	}


	/*
	mytext = '';
	scale = 1.5;
	vis = 2;
	angle = irandom_range(-10,10);
	color = c_yellow;
	xtarg = random_range(x-50,x+50);
	ytarg = random_range(y-50,y+50);
	depth = -1;


/* end show_damagetext */
}
