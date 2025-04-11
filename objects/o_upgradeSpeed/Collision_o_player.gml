/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.speedAux += 0.25;
	other._speed = other.initialSpeed + global.speedAux; 
	instance_destroy();
	instance_destroy(o_upgradesFather);
}