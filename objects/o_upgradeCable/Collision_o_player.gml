/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_X) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.cableUpgrade = true;
	
	with(other)
	{
		AddCableBlue();
		
		instance_create_layer(x,y,"Cable",o_cableBlue);
		
		_hpMax = global.numberOfCablesPlayer;
		_hp = _hpMax;
	}
	
	instance_destroy();
	instance_destroy(o_upgradesFather);
}