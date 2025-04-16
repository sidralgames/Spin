// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchBreakWalls()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "BreakWalls",
		achievement: "Wrecking Ball",
		unlocked: 0,
		descPlaceholder: "Break 1000 Walls\n(" + string(global.brokenWalls) + " / 1000)",
		descUnlocked: "Break 1000 Walls",
		desc: "Break 1000 Walls"
		
	})

	global.totalNumberOfAchievements +=1;
}