/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	global.energyTotal += 50;
	global.energy += 50;
	instance_destroy();
	instance_destroy(o_upgradesFather);
}