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
	}
	
	ini_write_real("stats","maxLevel", 1);
	ini_write_real("bossesCollection","bossUpgrades", -4);
	
	ini_close();
}