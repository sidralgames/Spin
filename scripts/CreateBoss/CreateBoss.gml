// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateBoss(_selectedBossFromCollection, _additionalHP)
{
	if (_selectedBossFromCollection = 0) // False -> Normal Run
	{
		if (bossToCreate.kills > bossToCreate.minKillsBSide)
		{
			spriteBoss = choose(bossToCreate.spriteMain, bossToCreate.spriteBSide);
		}
		else
		{
			spriteBoss = bossToCreate.spriteMain;
		}
	}
	else //--ASprite selected from collection
	{
		spriteBoss = bossToCreate.sprite;
	}
	
	
	if (spriteBoss = bossToCreate.spriteMain)
	{
		_songToPlay = bossToCreate.song;
		_offsetSong = bossToCreate.offsetSong;
	}
	else
	{
		_songToPlay = bossToCreate.songBSide;
		_offsetSong = bossToCreate.offsetSongBSide;
	}
		
	if (global.playing)
	{
		if (global.song != _songToPlay) 
		{
			audio_stop_sound(global.song);
			global.song = _songToPlay;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100,,_offsetSong);
		}
	}
		
	alias = bossToCreate.alias;
	killsName = bossToCreate.killsName;
	deathsName = bossToCreate.deathsName;
	killsNameBSide = bossToCreate.killsNameBSide;
	deathsNameBSide = bossToCreate.deathsNameBSide;
	bossToCreate.sprite = spriteBoss;
	bossNumber = bossToCreate.number;
	bossIsInCollection = bossToCreate.unlocked;
	_hpMax = bossToCreate.hpMax + _additionalHP;
	_hp = _hpMax;
	bossStep = bossToCreate.step;
	spriteVinyl = bossToCreate.spriteVinyl;
}