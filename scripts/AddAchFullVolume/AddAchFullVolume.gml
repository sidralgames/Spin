// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchFullVolume()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "FullVolume",
		achievement: "Full Volume",
		achievementUnlocked: "Full Volume",
		achievementPlaceholder: "Full Volume",
		unlocked: 0,
		desc: "Win a run without The Limiter",
		descUnlocked: "Win a run without The Limiter",
		descPlaceholder: "Win a run without The Limiter",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}