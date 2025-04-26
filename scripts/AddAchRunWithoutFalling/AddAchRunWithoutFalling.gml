// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchRunWithoutFalling()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "RunWithoutFalling",
		achievement: "Afraid Of Heights",
		unlocked: 0,
		desc: "Complete a run without falling",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}