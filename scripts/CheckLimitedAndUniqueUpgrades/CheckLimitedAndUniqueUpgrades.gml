// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckLimitedAndUniqueUpgrades()
{
	if (checkUpgradeChosen = false)
	{
		for (var i = 0; i<global.totalNumberOfUpgrades; i++)
		{
			upgrade = ds_map_find_value(global.upgradesList, i)
			
			if (upgrade.alias = alias)
			{
				//---- ADD TO PLAYER UPGRADES ----//
				if (!autoPicked)
				{
					ds_map_add(global.playerUpgradesList, global.numberOfUpgradesPlayer,
					{ 
						upgrade: upgrade.alias,
						sprite: upgrade.sprite,
						icon: upgrade.icon
					
					})
					global.numberOfUpgradesPlayer +=1;
				}
				
				//---- CHECK LIMITED TIMES ----//
				if (upgrade.choosedThisTime = true) && (upgrade.times != -1) && (upgrade.times > 0)
				{
					upgrade.times -=1;
			
					if (upgrade.times = 0)
					{
						upgrade.canAppear = false;
					}
				}
			
				//---- CHECK UNIQUES ----//
				if (upgrade.choosedThisTime = true) && (upgrade.unique = true)
				{
					upgrade.canAppear = false;
				}
			}
		}
		
		checkUpgradeChosen = true;
	}
}