// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchWellPrepared()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "WellPrepared",
		achievement: "Well Prepared",
		unlocked: 0,
		desc: "In the same run\nPick Tool Box, Blue Jack and Adapter"
		
	})

	global.totalNumberOfAchievements +=1;
}