// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchWellPrepared()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "WellPrepared",
		achievement: "Well Prepared",
		achievementUnlocked: "Well Prepared",
		achievementPlaceholder: "?????",
		unlocked: 0,
		desc: "In the same run\nPick Tool Box, Blue Jack and Adapter",
		descUnlocked: "In the same run\nPick Tool Box, Blue Jack and Adapter",
		descPlaceholder: "In the same run\nPick Tool Box, ???? and Adapter",
		haveAltDesc: true, 
		haveAltAch: true
		
	})

	global.totalNumberOfAchievements +=1;
}