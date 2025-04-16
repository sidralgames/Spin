// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadDefaultGlobals()
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
	ini_close();
}