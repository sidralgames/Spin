// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchAllKills()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "AllKills",
		achievement: "Defeat EVERY Track",
		unlocked: 0,
		desc: "Kill each Track at least once\n(B-Sides included)",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}