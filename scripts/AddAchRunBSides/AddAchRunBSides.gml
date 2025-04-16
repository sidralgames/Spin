// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchRunBSides()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "BSidesRun",
		achievement: "You like it hard, uh?",
		unlocked: 0,
		desc: "Complete a FULL B-SIDES run"
		
	})

	global.totalNumberOfAchievements +=1;
}