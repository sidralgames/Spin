// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossDefeatedInRun()
{
	global.bossesDefeatedInRun += 1;
	global.runConsecutiveTracksDefeated += 1;
	
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		if (thisBoss.sprite = spriteBoss)
		{
			thisBoss.defeatedInRun = 1;
			
			if (thisBoss.sprite = thisBoss.spriteMain)
			{
				thisBoss.kills += 1
			}
			else
			{
				thisBoss.killsBSide += 1
			}
		}
	}
}