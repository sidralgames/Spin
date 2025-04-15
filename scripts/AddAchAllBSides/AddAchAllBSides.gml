// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchAllBSides()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		achievement: "Unlock ALL B-Sides",
		unlocked: true,
		desc: "Unlock ALL B-Sides"
		
	})

	global.totalNumberOfAchievements +=1;
}