/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other.dying = false)
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

	other._hp = 0;
}