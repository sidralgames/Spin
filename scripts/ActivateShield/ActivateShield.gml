function ActivateShield()
{
	global.energy -= 1;
					
	if (global.energy > 0)
	{
		haveShield = true;
	}
	else
	{
		haveShield = false;
	}
}