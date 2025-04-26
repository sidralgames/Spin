// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckReallyHard()
{
	if (global.fullBSidesRun = true) && (global.haveDiedInRun = false)
	{
		for (var i = 0; i<global.totalNumberOfAchievements; i++)
		{
			ach = ds_map_find_value(global.achievementList, i)
			if (ach.alias = "ReallyHard")
			{
				ach.unlocked = 1;
			}
		}
		
		ini_open("SpinData.ini");
		ini_write_real("achievements", "ReallyHard", 1 );
		ini_close();
	}
}