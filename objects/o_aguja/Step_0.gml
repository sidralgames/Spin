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

dist-= fac * global.relativeSpeed;

x = nearDisc.x + lengthdir_x(dist, 45);
y = nearDisc.y + lengthdir_y(dist, 45);