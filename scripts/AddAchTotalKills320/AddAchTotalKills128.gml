// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTotalKills128()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "TotalKills128",
		achievement: "Defeat 128 Tracks",
		unlocked: 0,
		desc: "128 kbps"
		
	})

	global.totalNumberOfAchievements +=1;
}