// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchStress()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Stress",
		achievement: "Stress",
		unlocked: 0,
		descPlaceholder: "Defeat 4 consecutive B-Sides\nonly with the RED cable",
		descPlaceholder: "Defeat 4 consecutive B-Sides\nonly with the RED cable",
		descUnlocked: "Defeat 4 consecutive Tracks\nonly with the RED cable",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}