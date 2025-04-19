// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAch777Lucky()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "777LuckyBullets",
		achievement: "Lucky Bullet Lover",
		unlocked: 0,
		desc: "Fire 777 Lucky Bullets",
		descPlaceholder: "Fire 777 Lucky Bullets\n(" + string(global.luckyBullets) + " / 777)",
		descUnlocked: "Fire 777 Lucky Bullets",
		
	})

	global.totalNumberOfAchievements +=1;
}