// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchAllUpgrades()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "AllUpgrades",
		achievement: "What does this do?",
		unlocked: 0,
		desc: "Try every Upgrade on the game"
		
	})

	global.totalNumberOfAchievements +=1;
}