// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadCollection()
{
	ini_open("SpinData.ini");
	
	
	global.maxLevelReached = ini_read_real("stats", "maxLevel", 0);
	
	global.totalDeaths = 0;
	global.totalKills = 0;
	
	global.bulletsFired = ini_read_real("stats", "bulletsFired", 0);
	global.cablesLost = ini_read_real("stats", "cablesLost", 0);
	global.safeHits = ini_read_real("stats", "safeHits", 0);
	global.dashes = ini_read_real("stats", "dashes", 0);
	global.luckyBullets = ini_read_real("stats", "luckyBullets", 0);
	global.cablesRecovered = ini_read_real("stats", "cablesRecovered", 0);
	global.falls = ini_read_real("stats", "falls", 0);
	global.enemiesKilled = ini_read_real("stats", "enemiesKilled", 0);
	global.bombsDestroyed = ini_read_real("stats", "bombsDestroyed", 0);
	global.bossBulletsDestroyed = ini_read_real("stats", "bossBulletsDestroyed", 0);
	global.favTrackName = ini_read_string("stats", "favTrackName", "None");
	global.totalAchUnlocked = ini_read_real("stats", "totalAchUnlocked", 0)
	global.runningAgainstSpinmilisecsBest= ini_read_real("stats", "runningAgainstSpinmilisecsBest", 0);
	//-------- Collection Bosses --------//
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		thisBoss.unlocked = ini_read_real("bossesCollection", thisBoss.alias, 0);
		thisBoss.kills = ini_read_real("stats", thisBoss.killsName, 0);
		thisBoss.deaths = ini_read_real("stats", thisBoss.deathsName, 0);
		thisBoss.killsBSide = ini_read_real("stats", thisBoss.killsNameBSide, 0);
		thisBoss.deathsBSide = ini_read_real("stats", thisBoss.deathsNameBSide, 0);
		global.totalDeaths += thisBoss.deaths;
		global.totalDeaths += thisBoss.deathsBSide;
		global.totalKills += thisBoss.kills;
		global.totalKills += thisBoss.killsBSide;
	}
	
	ini_close();
}