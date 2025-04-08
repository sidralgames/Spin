// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadCollection()
{
	ini_open("SpinData.ini");
		
	//-------- Collection Bosses --------//
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		thisBoss.unlocked = ini_read_real("bossesCollection", thisBoss.alias, 0);
		thisBoss.kills = ini_read_real("stats", thisBoss.killsName, 0);
		thisBoss.deaths = ini_read_real("stats", thisBoss.deathsName, 0);
	}
	
	global.maxLevelReached = ini_read_real("stats", "maxLevel", 0);
		
	ini_close();
}