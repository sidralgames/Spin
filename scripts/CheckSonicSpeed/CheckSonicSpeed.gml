// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckSonicSpeed()
{
	if (achievementCheck.alias = "SoonicSpeed")
	{
		for (var j = 0; j<global.numberOfUpgradesPlayer; j++)
		{
			upgradeToCheck = ds_map_find_value(global.playerUpgradesList,j)
			if (upgradeToCheck.upgrade = "Speed Up")
			{
				speedUpOk += 1;
			}
	
		}
	
		if (speedUpOk >= 3)
		{
			achievementCheck.unlocked = 1;
			ini_open("SpinData.ini");
			ini_write_real("achievements",achievementCheck.alias, 1);
			ini_close();

		}
	}
}