/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

y -= 0.8;

if (_hp <= 30)
{
	image_xscale = lerp(image_xscale, 0.75, 0.01);
	image_yscale = lerp(image_yscale, 0.75, 0.01);
	
	contAlpha--;
	
	if (contAlpha < 3)
	{
		image_alpha = 0.5;
	}
	else
	{
		image_alpha = 0.85;
	}
	
	if (contAlpha<=0)
	{
		contAlpha = 6;
	}
}

if (_hp <=0)
{
	instance_destroy();
}