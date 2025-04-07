// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossSaveCollectionAndCreateDef()
{
	for (var i=0; i<global.totalNumberOfVinyls-1; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		if (thisBoss.sprite = spriteBoss)
		{
			thisBoss.unlocked = bossIsInCollection;
		}
	}
	
	SaveGame();
		
	bossDef = instance_create_layer(x,y,"Menu", o_bossDefeated);
	instance_destroy();
}