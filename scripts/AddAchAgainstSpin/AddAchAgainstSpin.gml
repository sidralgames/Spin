// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchAgainstSpin()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "AgainstSpin",
		achievement: "Against The Spin",
		unlocked: 0,
		desc:  "Run against the spin\nfor 4 min without dying (Best: " + GetTimeRunningAgainstSpin() + ")" ,
		descPlaceholder: "Run against the spin\nfor 4 min without dying (Best: " + GetTimeRunningAgainstSpin() + ")" ,
		descUnlocked: "Run against the spin\nfor 4 min without dying (Best: " + GetTimeRunningAgainstSpin() + ")" ,
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}