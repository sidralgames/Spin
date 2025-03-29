// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckUpgradesFromLevelSelector()
{
	if (levelSelector) && (global.level > 1)
	{
		for (var i = 0; i < global.level-1; i++)
		{
			if (alarm[2] <= 0)
			{
				upgToCreate = ds_map_find_value(global.upgradesList,  irandom(global.totalNumberOfUpgrades-1));
		
				if (upgToCreate.canAppear) && ( (upgToCreate.times > 0) || (upgToCreate.times = -1))
				{
					upgToCreate.choosedThisTime = true;
				
					thisUp = instance_create_layer(x, y, "BulletsDown", upgToCreate.obj);
				
					//-- ADD UPGRADE TO PLAYER UPGRADE LIST --//
					ds_map_add(global.playerUpgradesList, global.numberOfUpgradesPlayer,
					{ 
						upgrade: upgToCreate.alias,
						sprite: upgToCreate.sprite,
						icon: upgToCreate.icon
					
					})

					global.numberOfUpgradesPlayer +=1;

					upgsCreated+=1;
					thisUp.autoPicked = true;
					thisUp.canBePicked = true;
					thisUp.image_alpha = 1;
				
					if (upgToCreate.unique = true)
					{
						upgToCreate.canAppear = false;
					}
				
				}
			
				alarm[2] = 30;
			}
		}
	}

	if (upgsCreated >= global.level-1) && (levelSelector = true)
	{	
		for (var i = 0; i<global.totalNumberOfUpgrades; i++)
		{
			upgradeToChange = ds_map_find_value(global.upgradesList,i)
			upgradeToChange.choosedThisTime = false;
		}
	
		levelSelector = false;
	}
}