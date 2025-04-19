// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTrebol()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Trebol",
		achievement: "The Luckiest In The Park",
		unlocked: 0,
		desc: "Find 77 Lucky Clovers",
		descPlaceholder: "Find 77 Lucky Clovers\n(" + string(global.trebolsPicked) + " / 77)",
		descUnlocked: "Find 77 Lucky Clovers",
		
	})

	global.totalNumberOfAchievements +=1;
}