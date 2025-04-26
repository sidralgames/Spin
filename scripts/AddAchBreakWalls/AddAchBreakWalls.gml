// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchBreakWalls()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "BreakWalls",
		achievement: "Wrecking Ball",
		unlocked: 0,
		descPlaceholder: "Break 500 Walls\n(" + string(global.brokenWalls) + " / 500)",
		descUnlocked: "Break 500 Walls",
		desc: "Break 500 Walls",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}