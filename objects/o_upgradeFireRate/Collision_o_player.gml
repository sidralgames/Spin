/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	global.fireRateAux += 3;
	instance_destroy();
	instance_destroy(o_upgradesFather);
}