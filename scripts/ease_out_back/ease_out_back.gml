/// @description ease_out_back(time, start, change, duration)
/// @param time
/// @param  start
/// @param  change
/// @param  duration

var _s = 1.70158;

argument0 = (argument0/argument3) - 1;
return argument2 * ((argument0) * argument0 * ((_s + 1) * argument0 + _s) + 1) + argument1;