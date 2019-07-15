/// @description Insert description here
// You can write your code in this editor
move_speed = 650;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");


myGun = Loot.autoRifle;
gunFlow =0;

myHealth = 100;

timer = 0;

spawnerList = ds_list_create();


radius = 400;


