/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle+=0.5;
image_xscale = scale;
image_yscale = scale;

if (alarm[0] <= 20)
{
	scale = 1;
}
else
{
	scale = 1.005;
}

if (alarm[0] <= 0)
{
	alarm[0] = 40;
}