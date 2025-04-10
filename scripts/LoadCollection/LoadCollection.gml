// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadCollection()
{
	ini_open("SpinData.ini");
	
	
	global.maxLevelReached = ini_read_real("stats", "maxLevel", 0);
	global.totalDeaths = 0;
	global.totalKills = 0;
	
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