/// @description Insert description here
// You can write your code in this editor
if night_alpha < 0.9 {
	alpha += 0.01
	alarm[0] = 1;
} else if night_alpha >= 0.9 {
	alarm[1] = room_speed*length_night
}