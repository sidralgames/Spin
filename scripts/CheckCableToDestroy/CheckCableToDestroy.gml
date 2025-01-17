// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckCableToDestroy()
{
	if (_hp = 2) && instance_exists(o_cable)
	{
		instance_destroy(o_cable)
	}
	else if (_hp = 2) && !instance_exists(o_cable)
	{
		instance_destroy(o_cableYellow)
	}

	if (_hp = 1) && instance_exists(o_cableYellow)
	{
		instance_destroy(o_cableYellow)
	}
	else if (_hp = 1) && !instance_exists(o_cableYellow)
	{
		instance_destroy(o_cable)
	}
}