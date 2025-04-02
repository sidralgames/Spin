// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetBossesDefeated()
{
	for (var i = 0; i<global.totalNumberOfVinyls; i++)
	{
		bossesDefeated = ds_map_find_value(global.collectionList,i)
		bossesDefeated.defeatedInRun = 0;
	}
}