enum lootCat{
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
	fireRate,
	description
}

enum Loot {
	pistol,
	autoRifle,
	shotgun,
	boltAction,
	bullets,
	chest,
	legs,
	gloves,
	boots,
	cash
}



var c = lootCat.weapon;
setupItem(Loot.pistol, "Hand Gun", c, objWeapon,sprPistol,8,		"Pistol Packen Papa",1);
setupItem(Loot.autoRifle, "Ar-15", c, objWeapon,sprRifle,20,		"Is this thing legal?",3);
setupItem(Loot.shotgun, "Shotgun", c, objWeapon,sprShotgun,10,	"2 words, Cha Chink",5);
setupItem(Loot.boltAction, "Rifle",c, objWeapon,sprRifle,10,		"Am I a sniper now?",1);



var c = lootCat.ammo
setupItem(Loot.bullets, "Ammo Pack",c, objAmmo, sprAmmo, -1, "As valuable as gold",50,-1);



var c = lootCat.suit;
setupItem(Loot.chest, "Body Armor", c, objSuit,sprChest,-1,"Pro-tech" ,-1);
setupItem(Loot.legs, "Pants", c, objSuit, sprPants, -1, "Good old brown pants",-1);
setupItem(Loot.gloves, "Gloves", c, objSuit, sprGloves, -1, "Big Gloves...",-1);

var c = lootCat.money;
setupItem(Loot.cash, "Money", c, objMoney, sprMoney, -1, "Cold Hard Cash",-1);