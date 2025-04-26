// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckCableToDestroy()
{
	for (var i = 0; i< global.numberOfCablesPlayer; i++)
	{
		cableToDestroy = ds_map_find_value(global.cablePlayerList, i);
		if (cableToDestroy.position > _hp)
		{
			if instance_exists(cableToDestroy.cable)
			{
				instance_destroy(cableToDestroy.cable);
				global.cablesLost +=1;
				global.runCablesLost +=1;
				global.runConsecutiveTracksDefeated = 0;
			}
		}
	}
	
	if instance_exists(o_cableFather)
	{
		o_cableFather.attached = false;
	}
}

// ---------OLD SYSTEM ----------//

	//if (_hp = 2) && instance_exists(o_cable)
	//{
	//	instance_destroy(o_cable)
	//}
	//else if (_hp = 2) && !instance_exists(o_cable)
	//{
	//	instance_destroy(o_cableYellow)
	//}

	//if (_hp = 1) && instance_exists(o_cableYellow)
	//{
	//	instance_destroy(o_cableYellow)
	//}
	//else if (_hp = 1) && !instance_exists(o_cableYellow)
	//{
	//	instance_destroy(o_cable)
	//}
