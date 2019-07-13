enum loot{
	weapon,
	suit,
	attachment,
	money,
	ammo,
	
	
}

enum iteminfo {
	name,
	category,
	object,
	sprite,
	capacity,
	stackmax,
	description
}

enum weapons {
	pistol,
	autoRifle,
	shotgun,
	boltAction,
	
}



var c = loot.weapon;
setupItem(weapons.pistol, "Hand Gun", c, objWeapon,SprPistol,8, "Pistol Packen Papa");
setupItem(weapons.autoRifle, "Ar-15", c, objWeapon,SprRifle,20,"Is this thing legal?");
