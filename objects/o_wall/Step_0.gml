/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (scale<1)
{
	scale+=0.1;
}

image_xscale = scale;
image_yscale = scale;

speed = initialSpeed *global.relativeSpeed

_hpTime--;

if (_hpTime <= 0) || (point_distance(x,y,room_width/2, room_height/2) > 180)
{
	instance_destroy();	
}