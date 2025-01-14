/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle -= 0.57*global.relativeSpeed
_angle -=  0.57*global.relativeSpeed
angleReal =_angle
image_xscale = scale;
image_yscale = scale;

if (_angle <= 0)
{
	_angle+=360;
}

if (image_angle <= 0)
{
	image_angle+=360;
}



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

drawing = false;


