/// @arg item
/// @arg name
/// @arg category
/// @arg object
/// @arg sprite
/// @arg [max_stacks=-1]

var i = argument[0];
ITEMINFO[i, iteminfo.name]		= argument[1];
ITEMINFO[i, iteminfo.category]	= argument[2];
ITEMINFO[i, iteminfo.object]	= argument[3];
ITEMINFO[i, iteminfo.sprite]	= argument[4];
ITEMINFO[i, iteminfo.stackmax]	= -1;

if argument_count > 5 {
	ITEMINFO[i, iteminfo.stackmax] = argument[5];
}else{
		
}