/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (tocado = false)
{
	tocado = true;
	_hp -=1;
	alarm[1] = invincibleTime;
}

instance_destroy(other);