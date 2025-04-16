// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckAllBSides()
{
	if (achievementCheck.alias = "AllBSides")
	{
		for (var j=0; j<global.totalNumberOfVinyls; j++)
		{
			bsideAch = ds_map_find_value(global.collectionList, j)
			if (bsideAch.haveBSide)
			{
				bsidesInGame +=1;
	
				if (bsideAch.kills >= bsideAch.minKillsBSide)
				{
					bsidesUnlocked +=1;	
				}
			}
		}
		
		if (bsidesInGame - bsidesUnlocked = 0)
		{
			achievementCheck.unlocked = 1;
			bsidesInGame = 0;
			bsidesUnlocked = 0;
		}
	}
}