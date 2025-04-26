// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchFavTrack()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "FavTrack",
		achievement: "Fav Track",
		unlocked: 0,
		desc: "Defeat the same Track more than 10 times",
		descPlaceholder: "Defeat the same Track more than 10 times",
		descUnlocked: "Defeat the same Track more than 10 times\n" + string(global.favTrackName),
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}