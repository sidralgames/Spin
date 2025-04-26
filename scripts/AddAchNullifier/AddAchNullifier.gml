// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchNullifier()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "Nullifier",
		achievement: "Nullifier",
		unlocked: 0,
		desc: "Destroy 100 Special Boss Bullets",
		descPlaceholder: "Destroy 100 Special Boss Bullets\n(" + string(global.bossBulletsDestroyed) + " / 100)",
		descUnlocked: "Destroy 100 Special Boss Bullets",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}