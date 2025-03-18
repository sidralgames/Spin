// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetUpgrades()
{
	for (var i = 0; i<global.totalNumberOfUpgrades; i++)
	{
		upgradeToChange = ds_map_find_value(global.upgradesList,i)
		upgradeToChange.choosedThisTime = false;
		upgradeToChange.canAppear = true;
		upgradeToChange.times = upgradeToChange.timesInitial;
	}
}