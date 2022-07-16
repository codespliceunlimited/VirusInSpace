/// @description Insert description here
// You can write your code in this editor
if instance_exists(World){
	if paused exit;
}

if blocking exit;

if moved > 0{
y+=1;
moved --;
}
