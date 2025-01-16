// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
if instance_exists(o_camera)
{
	with (o_camera)
	{
		if (argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = argument0;
			shakeLenght = argument1;
			angleRemain = argument2;
			angleMagnitude = argument2;
			if argument2 = undefined
			{
				angleRemain = global.standardAngleShake;
				angleMagnitude = global.standardAngleShake;
			}
		}
	}
}