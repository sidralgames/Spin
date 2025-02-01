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
			audio_play_sound_on(global.audioEmitter,snd_hit,false, 50,0.5,,random_range(0.8,0.9));
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