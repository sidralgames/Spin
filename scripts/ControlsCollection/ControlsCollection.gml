// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ControlsCollection()
{
	if (key_leftP) && (o_vinilo.image_speed = 0)
	{
		//--- RESET PREV TRACK --//
		checkSong = false;
		vinylToPlay.sprite =  vinylToPlay.spriteMain
		
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50,0.5);
		selectedVinyl -=1;	
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaL = 260;
		o_MainMenu.xDistCollection = 0;
		o_camera.x = o_camera.x + 350;
		//o_MainMenu._alphaTitle = o_MainMenu._alphaTitleInitial;
		spriteBoss =  vinylToPlay.sprite;
		_songToPlay = vinylToPlay.song;
		ResetNeedle();
	}
	
	if (key_rightP) && (o_vinilo.image_speed = 0)
	{
		//--- RESET PREV TRACK --//
		checkSong = false;
		vinylToPlay.sprite =  vinylToPlay.spriteMain
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50,0.5);
		selectedVinyl +=1;
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaR = 260;
		//o_MainMenu._alphaTitle = o_MainMenu._alphaTitleInitial;
		o_MainMenu.xDistCollection = 100;
		o_camera.x = o_camera.x - 350;
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