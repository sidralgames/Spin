/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other.tocado = false)
{
	other.tocado = true;
	other._hp -=1;
	if (other._hp = 2) && instance_exists(o_cable)
	{
		instance_destroy(o_cable)
	}
	else if (other._hp = 2) && !instance_exists(o_cable)
	{
		instance_destroy(o_cableYellow)
	}

	if (other._hp = 1) && instance_exists(o_cableYellow)
	{
		instance_destroy(o_cableYellow)
	}
	else if (other._hp = 1) && !instance_exists(o_cableYellow)
	{
		instance_destroy(o_cable)
	}
	other.alarm[1] = other.invincibleTime;
}

image_xscale = scaleExplo;