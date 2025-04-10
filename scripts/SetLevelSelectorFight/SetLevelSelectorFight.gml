// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SetLevelSelectorFight()
{
	global.level = vinylToPlay.number + 1;
		
	bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
		
	CreateBoss(1,0)
		
	GetBossHpLimiter();
		
	o_player.levelSelector = true;
}