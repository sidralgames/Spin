
_angle +=  global.vinylSpin*global.relativeSpeed


image_angle = o_vinilo.image_angle;



if (image_angle <= 0)
{
	image_angle +=360;
}

if (_angle <= 0)
{
	_angle+=360;
}

if (image_angle <= 0)
{
	image_angle+=360;
}
