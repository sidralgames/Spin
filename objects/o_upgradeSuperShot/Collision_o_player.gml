/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.superShot += 0.5;
	instance_destroy(o_bulletPart);
	with(o_main)
	{
		instance_create_layer(0,0,"Main", o_bulletPart);
	}
	instance_destroy();
	instance_destroy(o_upgradesFather);
}