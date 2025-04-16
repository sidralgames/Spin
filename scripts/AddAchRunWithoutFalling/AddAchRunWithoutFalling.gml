// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchRunWithoutFalling()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "RunWithoutFalling",
		achievement: "Afraid of heights",
		unlocked: 0,
		desc: "Complete a run without falling"
		
	})

	global.totalNumberOfAchievements +=1;
}