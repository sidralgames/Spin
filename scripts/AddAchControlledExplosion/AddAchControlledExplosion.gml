// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchControlledExplosion()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "ControlledExplosion",
		achievement: "Controlled Explosion",
		unlocked: 0,
		desc: "Destroy 250 Bombs or Missiles",
		descUnlocked: "Destroy 250 Bombs or Missiles",
		descPlaceholder: "Destroy 250 Bombs or Missiles\n(" + string(global.bombsDestroyed) + " / 250)"
		
	})

	global.totalNumberOfAchievements +=1;
}