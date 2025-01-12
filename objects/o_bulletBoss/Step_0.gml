/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

if (_hp <= 0)
{
	instance_destroy();
}
if global.relativeSpeed> 1.4
{
	speed = initialSpeed * 1.4
}
else
{
	speed = initialSpeed * global.relativeSpeed
}
