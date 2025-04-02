/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if ( (canBePicked) && (key_x) ) || ((canBePicked) && (autoPicked) )
{
	CheckLimitedAndUniqueUpgrades();
	
	instance_destroy();
	
	with(o_upgradesFather)
	{
		
			upgrade = ds_map_find_value(global.upgradesList, irandom(global.totalNumberOfUpgrades-1))	
			//1ST
			if (upgrade.canAppear)
			{
				instance_destroy();
				instance_create_layer(x, y, "Main", upgrade.obj);
				upgrade.choosedThisTime = true;
			}
			else
			{
				upgrade = ds_map_find_value(global.upgradesList, irandom(global.totalNumberOfUpgrades-1))
			}
		
		
		
	}
	
}