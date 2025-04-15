// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchAllUpgrades()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		achievement: "Discover ALL Upgrades",
		unlocked: false,
		desc: "Pick every upgrade on the game"
		
	})

	global.totalNumberOfAchievements +=1;
}