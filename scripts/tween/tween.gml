/// @description  tween(current,target,amount)
/// @param current
/// @param target
/// @param amount
function tween(argument0, argument1, argument2) {
	var current, target, spd;
	current = argument0;
	target = argument1;
	spd = argument2*30*delta_time/1000000;

	var diff = (target-current);
	var newval = clamp(diff*spd,-abs(diff),abs(diff));
	return newval;



}
