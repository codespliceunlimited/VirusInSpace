/// @description  tween(current,target,amount)
/// @param current
/// @param target
/// @param amount
var current, target, spd;
current = argument0;
target = argument1;
spd = argument2*30*delta_time/1000000;

var diff = (target-current);
var newval = clamp(diff*spd,-abs(diff),abs(diff));
return newval;
