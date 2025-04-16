// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchCompletionist()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Completionist",
		achievement: "Unlock Every Achievement",
		unlocked: 0,
		desc: "You know what to do"
		
	})

	global.totalNumberOfAchievements +=1;
}