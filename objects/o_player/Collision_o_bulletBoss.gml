/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (inDash = false)
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
	instance_destroy(other);
}