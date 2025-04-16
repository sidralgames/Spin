// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckUntouchable()
{
	if (achievementCheck.alias = "Untouchable")
		{
			for (var j = 0; j<global.numberOfUpgradesPlayer; j++)
			{
				upgradeToCheck = ds_map_find_value(global.playerUpgradesList,j)
				if (upgradeToCheck.upgrade = "Shield")
				{
					shieldOk = true;
				}
	
				if (upgradeToCheck.upgrade = "SlowMo")
				{
					slowMoOk = true;
				}
		
			}
	
			if (shieldOk = true) && (slowMoOk = true)
			{
				achievementCheck.unlocked = 1;
				shieldOk = false;
				slowMoOk = false;
			}
		}
}