// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerIsHit(_destroyOther)
{
	if (inDash = false)
	{
		if (haveShield = false)
		{
			if (tocado = false) 
			{
				tocado = true;
				audio_play_sound_on(global.audioEmitter,snd_hit,false, 50,0.5,,random_range(0.8,0.9));
		
				with(o_main)
				{
					drawflashPlayerHitted = true;
					drawflashCont = 30;
				}
		
				DoesItHit();
		
				slowedFromAHit = true;
				alarm[1] = invincibleTime;
				screenShake(3,30,2);
				alarm[9] = tocadoVibrationTime
				gamepad_set_vibration(0,0.4,0.4);
	
			}
		}
		else
		{
			screenShake(3,40,2);
			alarm[9] = tocadoVibrationTime-2
			gamepad_set_vibration(0,0.2,0.2);
		}
		
		if (destroyOther = _destroyOther)
		{
			instance_destroy(other);
		}
	}
}