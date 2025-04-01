/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_x) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.luckyShot = true;
	global.luckyShotOdds = (global.luckyShotOdds / global.luckAuxUpgrade) 
	instance_destroy();
	instance_destroy(o_upgradesFather);
}