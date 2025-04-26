// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddAchKillEnemies()
{
	ds_map_add(global.achievementList, global.totalNumberOfAchievements,
	{ 
		alias: "KillEnemies",
		achievement: "Pest Control",
		achievementUnlocked: "KillEnemies",
		achievementPlaceholder: "KillEnemies",
		unlocked: 0,
		desc: "Kill 250 Enemies",
		descUnlocked: "Kill 250 Enemies",
		descPlaceholder: "Kill 250 Enemies\n(" + string(global.enemiesKilled) + " / 250)",
		haveAltDesc: true, 
		haveAltAch: false
		
	})

	global.totalNumberOfAchievements +=1;
}