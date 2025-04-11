// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossReturnToScale()
{
	if (scalingFromCollection)
	{
		if (scale <= 0.2)
		{
			scalingUp = true;
	
		}
	
		if (scalingUp)
		{
			scale =lerp(scale,1.4,0.22);	
			if (scale > 1.15)
			{
				scale = 1;
				scalingUp = false;
				scalingFromCollection = false;
			}
		}
	}
	else
	{
		if (scale > 1)
		{
			scale = lerp(scale,1,0.05);	
	
			if (scale < 1.03)
			{
				scale = 1;
			}
		}
	}
}