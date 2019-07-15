/// @description Insert description here
// You can write your code in this editor
move_speed = 600;

myHealth = 100;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");


myGun = Loot.autoRifle;

gunFlow =0;


timer = 0;

spawnerList = ds_list_create();


radius = 400;


#region Camera
camera = view_camera[0];
follow = id;
view_W_half = camera_get_view_width(camera)*0.5;
view_H_half = camera_get_view_height(camera)*0.5;
xTo = xstart;
yTo = ystart;
viewBuffer = 80;
#endregion