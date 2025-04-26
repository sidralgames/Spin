// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchReallyHard()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "ReallyHard",
		achievement: "You like it REALLY hard, uh?",
		unlocked: 0,
		desc: "Complete a FULL B-SIDES run without dying",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}