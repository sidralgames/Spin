// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaveAchievements()
{
	
	//---- DESTROY FROM MEMORY AND RE-CREATE ACHIEVEMENT LIST ---//
	for (var i=0; i<=global.totalNumberOfAchievements; i++)
	{
		ds_map_delete(global.achievementList, i)
	}
	ds_map_clear(global.achievementList);
	ds_map_destroy(global.achievementList);
	
	global.achievementList = ds_map_create();
	global.totalNumberOfAchievements = 0;
	
	AddAchievementsList();
	
	ini_open("SpinData.ini");
	
	CheckAchievements();
	
	//-------- SAVE ACHIEVEMENTS --------//
	for (var i=0; i<global.totalNumberOfAchievements; i++)
	{	
		thisAch = ds_map_find_value(global.achievementList, i);
		ini_write_real("achievements",thisAch.alias, thisAch.unlocked);
	}
	
	
	ini_close();
}