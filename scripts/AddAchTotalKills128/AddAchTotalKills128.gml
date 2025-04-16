// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTotalKills128()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "TotalKills128",
		achievement: "128 kbps",
		unlocked: 0,
		desc: "Defeat 128 Tracks",
		descPlaceholder: "Defeat 128 Tracks\n(" + string(global.totalKills) + " / 128)",
		descUnlocked: "Defeat 128 Tracks"
		
	})

	global.totalNumberOfAchievements +=1;
}