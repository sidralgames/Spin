/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (tocado = false)
{
	tocado = true;
	_hp -=1;
	if (_hp = 2) && instance_exists(o_cableYellow)
	{
		instance_destroy(o_cableYellow)
	}
	else if (_hp = 2) && !instance_exists(o_cableYellow)
	{
		instance_destroy(o_cable)
	}

	if (_hp = 1) && instance_exists(o_cableYellow)
	{
		instance_destroy(o_cableYellow)
	}
	else if (_hp = 1) && !instance_exists(o_cableYellow)
	{
		instance_destroy(o_cable)
	}
	alarm[1] = invincibleTime;
}

instance_destroy(other);