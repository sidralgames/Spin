// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ControlsCollection()
{
	if (key_leftP)
	{
		//--- RESET PREV TRACK --//
		checkSong = false;
		vinylToPlay.sprite =  vinylToPlay.spriteMain
		
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50,0.5);
		selectedVinyl -=1;	
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaL = 240;
		spriteBoss =  vinylToPlay.sprite;
		_songToPlay = vinylToPlay.song;
		ResetNeedle();
	}
	
	if (key_rightP)
	{
		//--- RESET PREV TRACK --//
		checkSong = false;
		vinylToPlay.sprite =  vinylToPlay.spriteMain
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50,0.5);
		selectedVinyl +=1;
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaR = 240;
		spriteBoss =  vinylToPlay.sprite;
		_songToPlay = vinylToPlay.song;
		ResetNeedle();
	}
		
	if (selectedVinyl > global.totalNumberOfVinyls-1)
	{
		selectedVinyl = 0;	
	}

	if (selectedVinyl < 0)
	{
		selectedVinyl = global.totalNumberOfVinyls-1;	
	}
}