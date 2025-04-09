// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossCollection()
{
	Controls_Input();
	
	ControlsCollection();
	
	vinylToPlay = ds_map_find_value(global.collectionList, selectedVinyl);

	alias = vinylToPlay.alias;
	kills = vinylToPlay.kills;
	deaths = vinylToPlay.deaths;
	
	if (vinylToPlay.unlocked >= 1)
	{
		if (changeSongCollection = false)
		{
			if (global.song != vinylToPlay.song)
			{
				audio_stop_sound(global.song);
				global.song = vinylToPlay.song;
				audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
				changeSongCollection = true;
			}
		}
		
		image_blend = c_white;
		global.vinylAlpha = vinylToPlay.vinylAlpha;
		global.vinylColor = vinylToPlay.vinylColor;
		drawLocked = false;
		
		
		if (key_buttonL) 
		{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			if (spriteBoss =  vinylToPlay.spriteMain)
			{
				vinylToPlay.sprite = vinylToPlay.bside;
			}
			else
			{
				vinylToPlay.sprite = vinylToPlay.spriteMain;
			}
			changeSongCollection = false;
			//o_main.changingLevel = true;
			ResetNeedle();
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
	
	thisVinyl.sprite_index = vinylToPlay.spriteVinyl;
}