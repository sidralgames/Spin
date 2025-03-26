/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_x) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.luckAuxUpgrade = 2;
	
	global.dobleShotOdds = global.dobleShotOdds / global.luckAuxUpgrade;
	global.luckyShotOdds = global.luckyShotOdds / global.luckAuxUpgrade;
	global.oddsStrongConnection = global.oddsStrongConnection / global.luckAuxUpgrade;
	
	instance_destroy();
	instance_destroy(o_upgradesFather);
}