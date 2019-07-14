/// @description Insert description here
// You can write your code in this editor
move_speed = 300;




myGun = Loot.shotgun;


movement_inputs[0] = 0;
movement_inputs[1] = 0;
movement_inputs[2] = 0;
movement_inputs[3] = 0;
change = 5;
xoff = random(100);

myHealth = 100;


enum states {
	wander,
	chase,
	run
}
state = states.wander;