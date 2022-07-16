/// @description Insert description here
// You can write your code in this editor

follow = noone;
#region Camera
camera = view_camera[0];
view_W_half = camera_get_view_width(camera)*0.5;
view_H_half = camera_get_view_height(camera)*0.5;
xTo = 9088;
yTo = 320;
viewBuffer = 80;
#endregion


with (objPlayer){
	if (player_local){
		other.follow = id
	}
}