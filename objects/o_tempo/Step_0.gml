/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (contCorrupted > 0)
	{
		scale = random_range(0.97, 1.03);
		image_xscale = random_range(0.97, 1.03);
		image_yscale = random_range(0.97, 1.03);
	}
	else
	{
		scale = 1;
		image_xscale = scale;
		image_yscale = scale;
	}
	
	
	if (corrupted = true)
	{
		o_player.tempoCorrupted = true;
		
		contCorrupted -=0.5;
		FWD();
		
		if (contCorrupted <= 0)
		{
			corrupted = false;
			global.tempoCorrupted = false;
		}
	}

	
	if (global.slowed) 
	{
		meterY = lerp(meterY, y-49, 0.05)	
	}
	else if (global.fwd)
	{
		meterY = lerp(meterY, y+51, 0.05)	
	}
	else if o_player.slowedFromAHit
	{
		meterY = lerp(meterY, y-49, 0.05)	
	}
	else 
	{
		meterY = lerp(meterY, y, 0.05)	
	}
}



