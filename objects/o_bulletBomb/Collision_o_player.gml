/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (dying = false)
{
	with(other)
	{
		if (tocado = false)
		{
			tocado = true;
			_hp -=1;
			
			with(o_main)
			{
				drawflashPlayerHitted = true;
				drawflashCont = 30;
			}
	
			CheckCableToDestroy();
			screenShake(3,30,2);
	
			slowedFromAHit = true;
			alarm[1] = invincibleTime;
		}

	}

	image_xscale = scaleExplo;
}