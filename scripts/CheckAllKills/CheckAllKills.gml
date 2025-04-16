// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckAllKills()
{
	if (achievementCheck.alias = "AllKills")
	{
		for (var j=0; j<global.totalNumberOfVinyls; j++)
		{
			bossKills = ds_map_find_value(global.collectionList, j)
			
			if (bossKills.haveBSide)
			{
				if (bossKills.kills > 0) && (bossKills.killsBSide > 0)
				{
					killAch = true;
				}
				else
				{
					killAch = false;
					break;
				}
				
			}
			else
			{
				if (bossKills.kills > 0)
				{
					killAch = true;
				}
				else
				{
					killAch = false;
					break;
				}
			}
		
		
			if (killAch = true)
			{
				achievementCheck.unlocked = 1;
			}
		}
	}
}