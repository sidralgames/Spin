/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.bajacktroUpgrade = true;
	instance_destroy();
	instance_destroy(o_upgradesFather);
}