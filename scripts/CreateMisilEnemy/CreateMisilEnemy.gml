// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateMisilEnemy(_racimoOdds, _spriteMisil)
{
	contMisil --;
	
	if (contMisil <= 0)
	{
		if (_racimoOdds = irandom(_racimoOdds))
		{
			misilToCreate = o_enemyMisilRacimo;
		}
		else
		{
			misilToCreate = o_enemyMisil;
		}
		
		misil = instance_create_layer(x + lengthdir_x(distEye, anglePlayer), y + lengthdir_y(distEye, anglePlayer), "BulletsDown", misilToCreate)
		misil.anglePlayer = anglePlayer+random_range(-90,90);
		misil.image_index = _spriteMisil
		contMisil = max(20, _hp/2);
	}
}