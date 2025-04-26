// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchUnknown()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Unknown",
		achievementUnlocked: "Spin 9999 times", 
		achievementPlaceholder: "????",
		achievement: "Spin 1000 times",
		unlocked: 0,
		desc: "Give it another spin",
		haveAltDesc: false, 
		haveAltAch: true
		
	})

	global.totalNumberOfAchievements +=1;
}