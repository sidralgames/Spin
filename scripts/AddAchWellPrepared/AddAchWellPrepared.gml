// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchWellPrepared()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		achievement: "Well Prepared",
		unlocked: false,
		desc: "Pick Tool Box & Blue Jack in the same run"
		
	})

	global.totalNumberOfAchievements +=1;
}