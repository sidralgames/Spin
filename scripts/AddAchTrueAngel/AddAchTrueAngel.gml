// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchTrueAngel()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "TrueAngel",
		achievement: "A True Angel",
		unlocked: 0,
		desc: "In the same run\nPick Halo and Wings",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}