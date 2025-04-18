// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchLotsOfBullets()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "LotsOfBullets",
		achievement: "Lots Of Bullets",
		achievementUnlocked: "Lots Of Bullets",
		achievementPlaceholder: "Lots Of Bullets",
		unlocked: 0,
		desc: "In the same run\nPick Shotgun and Mitosis",
		descUnlocked: "In the same run\nPick Shotgun and Mitosis",
		descPlaceholder: "In the same run\nPick Shotgun and ???????"
		
	})

	global.totalNumberOfAchievements +=1;
}