// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAch777Lucky()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		achievement: "Fire 777 Lucky Bullets",
		unlocked: false,
		desc: "Fire 777 Lucky Bullets"
		
	})

	global.totalNumberOfAchievements +=1;
}