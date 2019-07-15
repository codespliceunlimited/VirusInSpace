/// @arg item
/// @arg name
/// @arg category
/// @arg object
/// @arg sprite
/// @arg capacity
/// @arg Description
/// @arg fireRate
/// @arg damage
/// @arg spdMod
/// @arg [max_stacks=-1]

var i = argument[0];
ITEMINFO[i, iteminfo.name]		= argument[1];
ITEMINFO[i, iteminfo.category]	= argument[2];
ITEMINFO[i, iteminfo.object]	= argument[3];
ITEMINFO[i, iteminfo.sprite]	= argument[4];
ITEMINFO[i, iteminfo.capacity]	= argument[5];
ITEMINFO[i, iteminfo.description]	= argument[6]; 
ITEMINFO[i, iteminfo.fireRate]	= argument[7];
ITEMINFO[i, iteminfo.damage]	= argument[8];
ITEMINFO[i, iteminfo.spdMod]	= argument[9];
ITEMINFO[i, iteminfo.sndShot]	= argument[10];
ITEMINFO[i, iteminfo.sndReload]	= argument[11];



/*
ITEMINFO[i, iteminfo.stackmax]	= -1;

if argument_count > 9 {
	ITEMINFO[i, iteminfo.stackmax] = argument[9];
}else{
		
}