// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckRunWithoutFalling()
{
	if (global.fallFromVinyl = false)
	{
		for (var i = 0; i<global.totalNumberOfAchievements; i++)
		{
			ach = ds_map_find_value(global.achievementList, i)
			if (ach.alias = "RunWithoutFalling")
			{
				ach.unlocked = 1;
			}
		}
				
		ini_open("SpinData.ini");
		ini_write_real("achievements", "RunWithoutFalling", 1 );
		ini_close();
	}
}