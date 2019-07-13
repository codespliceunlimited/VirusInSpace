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
setupItem(Loot.pistol, "Hand Gun", c, objWeapon,sprPistol,8,		"Pistol Packen Papa");
setupItem(Loot.autoRifle, "Ar-15", c, objWeapon,sprRifle,20,		"Is this thing legal?");
setupItem(Loot.shotgun, "Shotgun", c, objWeapon,sprShotgun,10,	"2 words, Cha Chink");
setupItem(Loot.boltAction, "Rifle",c, objWeapon,sprRifle,10,		"Am I a sniper now?");



var c = lootCat.ammo
setupItem(Loot.bullets, "Ammo Pack",c, objAmmo, sprAmmo, -1, "As valuable as gold",50);



var c = lootCat.suit;
setupItem(Loot.chest, "Body Armor", c, objSuit,sprChest,-1,"Pro-tech" );
setupItem(Loot.legs, "Pants", c, objSuit, sprPants, -1, "Good old brown pants");
setupItem(Loot.gloves, "Gloves", c, objSuit, sprGloves, -1, "Big Gloves...");

var c = lootCat.money;
setupItem(Loot.cash, "Money", c, objMoney, sprMoney, -1, "Cold Hard Cash");