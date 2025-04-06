/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
gamepad_set_vibration(0,0,0)

if audio_is_playing(soundActive)
{
	audio_sound_gain(soundActive, 0, 300);
}

if instance_exists(o_boss)
{
	if (o_boss._hp <= 0)
	{
		audio_stop_sound(soundActive);
		audio_stop_sound(soundCharge);
	}
}
