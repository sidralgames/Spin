function ActivateShield()
{
	global.energy -= 1;
					
	if (global.energy > 0)
	{
		haveShield = true;
		draw_sprite_ext(s_shield, 0, x, y ,0.6,0.6,0,image_blend,image_alpha)
	}
	else
	{
		haveShield = false;
	}
}