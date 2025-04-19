// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadAllLocked()
{
	ini_open("SpinData.ini");
	
	//-------- BOSS COLLECTION --------//
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		ini_write_real("bossesCollection",thisBoss.alias, 0);
		ini_write_real("stats",thisBoss.killsName, 0);
		ini_write_real("stats",thisBoss.deathsName, 0);
		ini_write_real("stats",thisBoss.killsNameBSide, 0);
		ini_write_real("stats",thisBoss.deathsNameBSide, 0);
	}
	
	for (var i=0; i<global.totalNumberOfAchievements; i++)
	{
		achievement = ds_map_find_value(global.achievementList, i);
		ini_write_real("achievements",achievement.alias, 0);
	}
	
	global.maxLevelReached = 0;
	global.bulletsFired = 0;
	global.luckyBullets = 0;
	global.safeHits = 0;
	global.dashes = 0;
	global.falls = 0;
	global.cablesLost = 0;
	global.cablesRecovered = 0;
	global.trebolsPicked = 0;
	global.brokenWalls = 0;
	global.wins = 0;
	global.runningAgainstSpinmilisecsBest = 0;
	
	ini_write_real("stats","wins", 0);
	ini_write_real("stats","maxLevel", 0);
	ini_write_real("stats","bulletsFired", 0);
	ini_write_real("stats","luckyBullets", 0);
	ini_write_real("stats","safeHits", 0);
	ini_write_real("stats","dashes", 0);
	ini_write_real("stats","falls", 0);
	ini_write_real("stats","cablesLost", 0);
	ini_write_real("stats","cablesRecovered", 0);
	ini_write_real("stats","brokenWalls", 0);
	ini_write_real("stats","trebolsPicked", 0);
	ini_write_real("stats","runningAgainstSpinmilisecsBest", 0);
	ini_write_real("stats","enemiesKilled", 0);
	ini_write_real("stats","bombsDestroyed", 0);
	ini_write_real("bossesCollection","bossUpgrades", -4);
	
	ini_close();
}