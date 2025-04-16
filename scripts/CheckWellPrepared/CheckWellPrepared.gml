// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckWellPrepared()
{
if (achievementCheck.alias = "WellPrepared")
		{
			for (var j = 0; j<global.numberOfUpgradesPlayer; j++)
			{
				upgradeToCheck = ds_map_find_value(global.playerUpgradesList,j)
				if (upgradeToCheck.upgrade = "Tool Box")
				{
					toolBoxOk = true;
				}
	
				if (upgradeToCheck.upgrade = "Cable")
				{
					cableOk = true;
				}
			
				if (upgradeToCheck.upgrade = "StrongConnection")
				{
					adapterOk = true;
				}
			}
	
			if (cableOk = true) && (toolBoxOk = true) && (adapterOk = true)
			{
				achievementCheck.unlocked = 1;
				cableOk = false;
				toolBoxOk = false;
				adapterOk = false;
			}
		}
}