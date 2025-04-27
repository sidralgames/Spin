// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

//totalNumberOfAchievements not updated yet so es 28

function AddAchCompletionist()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Completionist",
		achievement: "Completionist",
		unlocked: 0,
		desc: "Unlock Every Achievement (" + string(global.totalAchUnlocked) + " / " + string(28) + ")",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}