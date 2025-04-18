// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAch9999Bullets()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "9999Bullets",
		achievement: "9999 Bullets",
		unlocked: 0,
		descPlaceholder: "Fire 9999 Bullets\n(" + string(global.bulletsFired) + " / 9999)",
		descPlaceholder: "Fire 9999 Bullets\n(" + string(global.bulletsFired) + " / 9999)",
		descUnlocked: "Fire 9999 Bullets",
		
	})

	global.totalNumberOfAchievements +=1;
}