// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function RecoverJacksFromUpgrade()
{
	DestroyCablesAndJacks();
	
	with(o_player)
	{
	
		for (var i = 0; i< global.numberOfCablesPlayer; i++)
		{
			cableToCreate = ds_map_find_value(global.cablePlayerList, i)
			instance_create_layer(x,y,"Cable",cableToCreate.cable);
		}

		_hpMax = global.numberOfCablesPlayer;
		_hp = _hpMax;
		global.damageAuxUpgrade = 1;
	}
}