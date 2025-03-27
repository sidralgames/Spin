// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadCollection()
{
	ini_open("SpinData.ini");
		
	//-------- Collection Bosses --------//
	for (var i=0; i<global.totalNumberOfVinyls-1; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		thisBoss.collection = ini_read_real("bossesCollection", thisBoss.alias, 0);
	}
		
	ini_close();
}