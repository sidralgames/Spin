// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateUpgrades()
{
	if (global.isBossBSide = false)
	{
		if (alarm[0] <= 0) && (upgradesCreated <3)
		{
			screenShake(2,20,1)
			
			//GET RANDOM UPGRADES 
			upgrade = ds_map_find_value(global.upgradesList, irandom(global.totalNumberOfUpgrades-1))
			
			//1ST
			if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 0)
			{
				instance_create_layer(x+120, y, "Main", upgrade.obj);
				upgradesCreated +=1;
				upgrade.choosedThisTime = true;
				
			}//2ND
			else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 1)
			{
				instance_create_layer(x-120, y, "Main", upgrade.obj)
				upgradesCreated+=1;
				upgrade.choosedThisTime = true;
				creatingUpgrades = true;
			}//3RD
			else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 2)
			{
				instance_create_layer(x, y-120, "Main", upgrade.obj)
				upgradesCreated+=1;
				upgrade.choosedThisTime = true;
				creatingUpgrades = true;
			}
		}
	}
	else
	{
		if (alarm[0] <= 0) && (upgradesCreated <4)
		{
			screenShake(2,20,1)
			
			//GET RANDOM UPGRADES 
			upgrade = ds_map_find_value(global.upgradesList, irandom(global.totalNumberOfUpgrades-1))
			
			//1ST
			if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 0)
			{
				instance_create_layer(x+120, y, "Main", upgrade.obj);
				upgradesCreated +=1;
				upgrade.choosedThisTime = true;
				
			}//2ND
			else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 1)
			{
				instance_create_layer(x-120, y, "Main", upgrade.obj)
				upgradesCreated+=1;
				upgrade.choosedThisTime = true;
				creatingUpgrades = true;
			}//3RD
			else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 2)
			{
				instance_create_layer(x, y-120, "Main", upgrade.obj)
				upgradesCreated+=1;
				upgrade.choosedThisTime = true;
				creatingUpgrades = true;
			}//4TH
			else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 3)
			{
				instance_create_layer(x, y+120, "Main", upgrade.obj)
				upgradesCreated+=1;
				upgrade.choosedThisTime = true;
				creatingUpgrades = true;
			}
			
			//CHEK LIMITED & UNIQUES ON UPGRADES FATHER
		}
	}
}