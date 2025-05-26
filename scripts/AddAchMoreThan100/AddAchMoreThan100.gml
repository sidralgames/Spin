// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchMoreThan100()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "MoreThan100",
		achievement: "NICE SHOT!",
		unlocked: 0,
		desc: "Do more than 75 damage\nwith a single bullet",
		descPlaceholder: "Deal more than 75 damage\nwith a single bullet",
		descUnlocked: "Do more than 75 damage\nwith a single bullet",
		haveAltDesc: false, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}