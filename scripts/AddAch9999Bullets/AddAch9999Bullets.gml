// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAch9999Bullets()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		achievement: "Fire 9999 Bullets",
		unlocked: false,
		desc: "Fire 9999 Bullets"
		
	})

	global.totalNumberOfAchievements +=1;
}