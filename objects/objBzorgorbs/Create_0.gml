/// @description Insert description here
// You can write your code in this editor
move_speed = 400;




myGun = Loot.autoRifle;


movement_inputs[0] = 0;
movement_inputs[1] = 0;
movement_inputs[2] = 0;
movement_inputs[3] = 0;
change = 5;
xoff = random(100);
radius = 800;
food = noone;

checkpoint = 0;

myHealth = 100;

biteTimer = 0;


state = states.wander;