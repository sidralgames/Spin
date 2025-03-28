// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadAllUnlocked()
{
	ini_open("SpinData.ini");
	
	//-------- BOSS COLLECTION --------//
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		ini_write_real("bossesCollection",thisBoss.alias, 1);
	}
	
	ini_close();
}