// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckCompletionist()
{
	//--- 9999 BULLETS ----//
	if (achievementCheck.alias = "Completionist")
	{
		for (var i = 0; i<global.totalNumberOfAchievements; i++)
		{
			achievementListCheck = ds_map_find_value(global.achievementList, i)
			if (achievementListCheck.unlocked = 1)
			{
				achievementCheck.unlocked = 1;
			}
			else
			{
				achievementCheck.unlocked = 0;
				break;
			}
		}
	}
		
}