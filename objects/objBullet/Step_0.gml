/// @description 

lifeSpan --;

if lifeSpan <= 0 {
	instance_destroy();	
}


if bulletSpeed <= 0  exit;

if x<-100 or y < -100 or x > room_width+100 or y > room_height+100{
	instance_destroy();	
}

damage = bulletSpeed*dmg;

badie = collision_point(x,y,objBzorgorbs,false,true);
if badie{
	if badie != target{
		with (badie){
			myHealth -= other.damage;
			var text = instance_create_layer(x+irandom_range(-20,20),y-50,"Bullets",o_damagetext);
			text.mytext = round(other.damage);
		}
		bulletSpeed -= 2;
		if bulletSpeed <= 0 bulletSpeed = 0;
	}
	target = badie;
}









#region movement
var spd = bulletSpeed;


var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);

if place_free(xtarg,ytarg) {
    x = xtarg;
    y = ytarg;

}else {
    var sweep_interval = 10;
    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir+angle*multiplier;
            xtarg = x+lengthdir_x(spd, angle_to_check);
            ytarg = y+lengthdir_y(spd, angle_to_check); 
			bulletSpeed -= 0.2;
            if place_free(xtarg,ytarg) {
                x = xtarg;
                y = ytarg;  
				dir = angle_to_check
                exit;       
            }   
        }
    }
}
if bulletSpeed < maxBulletSpeed{
	if bulletSpeed > 0 bulletSpeed -= 0.2;
	if bulletSpeed <= 0 bulletSpeed = 0;
}
#endregion