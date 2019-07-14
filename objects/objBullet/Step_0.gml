/// @description 
damage = bulletSpeed*dmg;

badie = collision_point(x,y,objBzorgorbs,false,true);
if badie{
	with (badie){
		myHealth -= other.damage;	
	}
	bulletSpeed -= 2;
	if bulletSpeed <= 0 bulletSpeed = 0;
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