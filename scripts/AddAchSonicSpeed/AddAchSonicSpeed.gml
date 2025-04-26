// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchSonicSpeed()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "SonicSpeed",
		achievement: "Sonic Speed",
		unlocked: 0,
		desc: "In the same run\n pick the Running Shoes 3 times",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}