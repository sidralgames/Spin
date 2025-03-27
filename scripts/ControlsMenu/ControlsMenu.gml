// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ControlsMenu()
{
	if (key_downP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected +=1;	
	}
	if (key_upP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected -=1;	
	}
	
	if (selected > 4)
	{
		selected = 0;	
	}
	if (selected < 0)
	{
		selected = 4;	
	}
}