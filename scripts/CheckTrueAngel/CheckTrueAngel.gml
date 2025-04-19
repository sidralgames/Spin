// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckTrueAngel()
{
	if (achievementCheck.alias = "TrueAngel")
	{
		for (var j = 0; j<global.numberOfUpgradesPlayer; j++)
		{
			upgradeToCheck = ds_map_find_value(global.playerUpgradesList,j)
			if (upgradeToCheck.upgrade = "Halo")
			{
				haloOk = true;
			}
			
			if (upgradeToCheck.upgrade = "Wings")
			{
				wingsOk = true;
			}
		}
	
		if (haloOk = true) && (wingsOk = true)
		{
			achievementCheck.unlocked = 1;
			ini_open("SpinData.ini");
			ini_write_real("achievements",achievementCheck.alias, 1);
			ini_close();
		}
	}
}