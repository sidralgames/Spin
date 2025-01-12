/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (scale<=1.5) && (scaled = false)
{
	scale+=0.2;
}

if (scaled = false) && scale >=1.5
{
	scaled = true;
	
}
if (scaled = true)
{
	scale = lerp(scale, 1, 0.2);
	if (scale < 1.1)
	{
		scale = 1;	
	}
}
image_xscale = scale;
image_yscale = scale;

speed = initialSpeed *global.relativeSpeed

_hpTime--;

if (_hpTime <= 0) || (point_distance(x,y,room_width/2, room_height/2) > 180)
{
	instance_destroy();	
}