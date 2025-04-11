/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.luckAuxUpgrade = 2;
	
	global.dobleShotOdds = round(global.dobleShotOdds / 2);
	global.luckyShotOdds = round(global.luckyShotOdds / 2);
	global.oddsStrongConnection = round(global.oddsStrongConnection / 2);
	
	instance_destroy();
	instance_destroy(o_upgradesFather);
}