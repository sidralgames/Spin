/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	global._hpUpgradeWall += 3;
	instance_destroy();
	instance_destroy(o_upgradesFather);
}