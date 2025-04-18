// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTrebol()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Trebol",
		achievement: "The Luckiest In The Park",
		unlocked: 0,
		desc: "Find 7 Lucky Trebols\n(" + string(global.trebolsPicked) + " / 7)",
		descPlaceholder: "Find 7 Lucky Clovers\n(" + string(global.trebolsPicked) + " / 7)",
		descUnlocked: "Find 7 Lucky Clovers",
		
	})

	global.totalNumberOfAchievements +=1;
}