// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchGoodStreak()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "GoodStreak",
		achievement: "Good Streak",
		unlocked: 0,
		descPlaceholder: "Defeat 7 consecutive Tracks\nwithout falling or losing a cable",
		descPlaceholder: "Defeat 7 consecutive Tracks\nwithout falling or losing a cable",
		descUnlocked: "Defeat 7 consecutive Tracks\nwithout falling or losing a cable",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}