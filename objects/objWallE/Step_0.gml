/// @description Insert description here
// You can write your code in this editor
if instance_exists(World){
	if paused exit;
}
solid = true;

if blocking exit;

if moved > 0{
x+=1;
moved --;
moveBack ++;
}
