/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.wingsUpgrade = true;
	global.wingsAux = 30;
	o_player.contDieMax = o_player.contDieMax + global.wingsAux;
	instance_destroy();
	instance_destroy(o_upgradesFather);
}