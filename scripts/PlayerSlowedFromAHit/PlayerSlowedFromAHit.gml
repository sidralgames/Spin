// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerSlowedFromAHit()
{
	if (goSlow = false)
	{	
		if (tempoCorrupted = true)
		{
			global.tempoCorrupted = false;
			o_tempo.corrupted = false;
		}
	}
	
	//---- CHECK WHEN IS SLOWED ---//
	if (global.relativeSpeed <= 0.5)
	{
		goSlow = true;
	}
	
	//---- WHEN SLOWED, GO BACK TO NORMAL ---//
	if (goSlow)
	{
		if (tempoCorrupted = true)
		{
			global.tempoCorrupted = false;
			o_tempo.corrupted = false;
		}
		
		global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05)
		o_aguja.angleAguja-= o_aguja.fac * global.relativeSpeed;
		pitch = min(1,global.relativeSpeed);
		audio_emitter_pitch(global.audioEmitter, pitch);
		
		if(global.relativeSpeed > 0.9)
		{
			pitch = 1;
			audio_emitter_pitch(global.audioEmitter, pitch);
			global.relativeSpeed = 1;
			goSlow = false;
			slowedFromAHit = false;
			global.slowed = false;
			
			if (tempoCorrupted = true)
			{
				global.tempoCorrupted = true;
				o_tempo.corrupted = true;
			}
		}
	}
}