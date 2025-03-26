/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_x) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	global.bossHpLimiterUpgrade = true;
	
	if instance_exists(o_boss)
	{
		with(o_boss)
		{
			_hp = 0.85 *_hpMax;
			
		}
	}
	
	instance_destroy();
	instance_destroy(o_upgradesFather);
}