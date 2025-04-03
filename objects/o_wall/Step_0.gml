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
if instance_exists(o_boss)
{
	dist = point_distance(x,y,o_boss.x, o_boss.y)

	if (scaled = true)
	{
		if scale1 = false
		{
			scale = lerp(scale, 1, 0.2);
			if (scale < 1.1)
			{
				scale = 1;
				scale1 = true
			}
		}
	
		if scale2 = false && (dist > 10) && scale1 = true
		{
			scale = lerp(scale, 1.25, 0.02);
			if (scale > 1.2)
			{
				scale = 1.25;
				scale2 = true
			}
		}
	}
}
else
{
	instance_destroy();
}

image_xscale = scale;
image_yscale = scale;

speed = initialSpeed *global.relativeSpeed

_hpTime--;

if (_hpTime <= 0) || (point_distance(x,y,global.cx, global.cy) > 180)
{
	instance_destroy();	
}

if (_hp <= 0)
{
	instance_destroy();	
}
