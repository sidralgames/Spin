/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	global.speedAux += 0.5;
	other._speed = other.initialSpeed + global.speedAux; 
	instance_destroy();
	instance_destroy(o_upgradesFather);
}