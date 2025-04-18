// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaveGame()
{
	ini_open("SpinData.ini");
	
	//-------- BOSS COLLECTION --------//
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		ini_write_real("bossesCollection",thisBoss.alias, thisBoss.unlocked);
		ini_write_real("stats",thisBoss.killsName, thisBoss.kills);
		ini_write_real("stats",thisBoss.deathsName, thisBoss.deaths);
		ini_write_real("stats",thisBoss.killsNameBSide, thisBoss.killsBSide);
		ini_write_real("stats",thisBoss.deathsNameBSide, thisBoss.deathsBSide);
	}
	
	
	if (global.level > global.maxLevelReached)
	{
		global.maxLevelReached = global.level;
		ini_write_real("stats","maxLevel", global.maxLevelReached);
	}
	
	ini_write_real("stats","bulletsFired", global.bulletsFired)
	ini_write_real("stats","cablesLost", global.cablesLost)
	ini_write_real("stats","safeHits", global.safeHits)
	ini_write_real("stats","dashes", global.dashes)
	ini_write_real("stats","luckyBullets", global.luckyBullets)
	ini_write_real("stats","cablesRecovered", global.cablesRecovered)
	ini_write_real("stats","falls", global.falls)
	ini_write_real("stats","brokenWalls", global.brokenWalls)
	ini_write_real("stats", "trebolsPicked", global.trebolsPicked);
	
	ini_close();
}