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
setupItem(weapons.pistol, "Hand Gun", c, objWeapon,sprPistol,8,		"Pistol Packen Papa");
setupItem(weapons.autoRifle, "Ar-15", c, objWeapon,sprRifle,20,		"Is this thing legal?");
setupItem(weapons.shotgun, "Shotgun", c, objWeapon,sprShotgun,10,	"2 words, Cha Chink");
setupItem(weapons.boltAction, "Rifle",c, objWeapon,sprRifle,10,		"Am I a sniper now?");

enum ammo{
	bullets	
}

var c = loot.ammo
setupItem(ammo.bullets, "Ammo Pack",c, objAmmo, sprAmmo, -1, "As valuable as gold",50);


enum suits {
	chest,
	legs,
	gloves,
	boots
}
var c = loot.suit;
setupItem(suits.chest, "Body Armor", c, objSuit,sprChest,-1,"Pro-tech" );
setupItem(suits.legs, "Pants", c, objSuit, sprPants, -1, "Good old brown pants");
setupItem(suits.gloves, "Gloves", c, objSuit, sprGloves, -1, "Big Gloves...");


setupItem(cash, "Money", c, objMoney, sprMoney, -1, "Cold Hard Cash");