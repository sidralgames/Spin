// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTotalKills320()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "TotalKills320",
		achievement: "320 kbps",
		unlocked: 0,
		desc: "Defeat 320 Tracks",
		descPlaceholder: "Defeat 320 Tracks in total\n(" + string(global.totalKills) + " / 320)",
		descUnlocked: "Defeat 320 Tracks",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}