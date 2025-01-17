/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(other)
{
	if (tocado = false)
	{
		tocado = true;
		_hp -=1;
	
		CheckCableToDestroy();
		screenShake(3,30,2);
	
		slowedFromAHit = true;
		alarm[1] = invincibleTime;
	}

}

image_xscale = scaleExplo;