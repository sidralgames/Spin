// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossCollection()
{
	Controls_Input();
	
	ControlsCollection();
	
	vinylToPlay = ds_map_find_value(global.collectionList, selectedVinyl);
	
	if (checkSong = false)
	{
		checkSong = true;
		_songToPlay = vinylToPlay.song;
		thisVinyl.sprite_index = vinylToPlay.spriteVinyl;
		global.vinylColor = vinylToPlay.vinylColor;
		global.vinylAlpha = vinylToPlay.vinylAlpha;
	}
	
	alias = vinylToPlay.alias;
	kills = vinylToPlay.kills;
	deaths = vinylToPlay.deaths;
	
	if (vinylToPlay.unlocked >= 1)
	{
		if (changeSongCollection = false)
		{
			if (global.song != _songToPlay)
			{
				audio_stop_sound(global.song);
				global.song = _songToPlay;
				audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
				changeSongCollection = true;
			}
		}
		
		image_blend = c_white;
		

		drawLocked = false;
		
		if (vinylToPlay.kills >= vinylToPlay.minKillsBSide) && (vinylToPlay.haveBSide = true)
		{
			if ( (key_R2) || (key_B) ) && (o_vinilo.image_speed = 0)
			{
				o_vinilo.image_angle = 7;
				o_vinilo.image_index = 0;
				o_vinilo.image_speed = o_vinilo.speedImgInitial;
				
				screenShake(1,30,4)
				scale = 0;
				scalingFromCollection = true;
				audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
				if (spriteBoss =  vinylToPlay.spriteMain)
				{
					vinylToPlay.sprite = vinylToPlay.spriteBSide;
					_songToPlay = vinylToPlay.songBSide;
					global.vinylColor = vinylToPlay.vinylColorBSide;
					global.vinylAlpha = vinylToPlay.vinylAlphaBSide;
					o_MainMenu._alphaTitle = -5;
				}
				else
				{
					vinylToPlay.sprite = vinylToPlay.spriteMain;
					_songToPlay = vinylToPlay.song;
					global.vinylColor = vinylToPlay.vinylColor;
					global.vinylAlpha = vinylToPlay.vinylAlpha;
					o_MainMenu._alphaTitle = -5;
				}
				
				changeSongCollection = false;
				o_main.changingLevel = true;
				ResetNeedle();
			}
		}
		
	}
	else
	{
		image_blend = c_dkgray;
		global.vinylAlpha = 0.85
		global.vinylColor = c_dkgray;
		drawLocked = true;
	}
	
	spriteBoss = vinylToPlay.sprite;
	sprite_index = spriteBoss;
}