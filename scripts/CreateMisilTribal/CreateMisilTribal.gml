// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateMisilTribal(_racimoOdds, _spriteMisil)
{
	contMisil --;
	
	if (contMisil <= 0)
	{
		
		misilToCreate = o_enemyMisilTribal;
		
		misil = instance_create_layer(x + lengthdir_x(2, anglePlayer), y + lengthdir_y(2, anglePlayer), "BulletsDown", misilToCreate)
		misil.direction = anglePlayer+random_range(-90,90);
		misil.anglePlayer = misil.direction;
		misil.image_angle = misil.direction;
		misil.image_index = _spriteMisil
		contMisil = max(120, _hp);
	}
}