/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (contCanBeTouched > 0)
{
	contCanBeTouched --;
}

if (contCanBeTouched <= 0)
{
	canBeTouched = true;
}

dist = clamp(dist, 42, 170)

if instance_exists(nearDisc)
{
	x = nearDisc.x + lengthdir_x(dist, 35);
	y = nearDisc.y + lengthdir_y(dist, 35);
}
else
{
	x =	xIni;
	y = yIni;
}