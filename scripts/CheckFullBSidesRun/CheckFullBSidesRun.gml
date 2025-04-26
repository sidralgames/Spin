// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckFullBSidesRun()
{
	if (global.fullBSidesRun = true)
	{
		for (var i = 0; i<global.totalNumberOfAchievements; i++)
		{
			ach = ds_map_find_value(global.achievementList, i)
			if (ach.alias = "BSidesRun")
			{
				ach.unlocked = 1;
			}
		}
		
		ini_open("SpinData.ini");
		ini_write_real("achievements", "BSidesRun", 1 );
		ini_close();
	}
}