// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SetLevelSelectorFight()
{
	global.level = vinylToPlay.number + 1;
		
	bossToCreate = ds_map_find_value(global.collectionList, global.level -1);
		
	if (global.song != bossToCreate.song) 
	{
		audio_stop_sound(global.song);
		global.song = bossToCreate.song;
		audio_play_sound_on(global.audioEmitter,global.song, true, 100,,bossToCreate.offsetSong);
	}
		
	spriteBoss = bossToCreate.sprite;
	bossNumber = bossToCreate.number;
	bossIsInCollection = bossToCreate.unlocked;
	step = bossToCreate.step
	_hpMax = bossToCreate.hpMax;
	_hp = _hpMax
	spriteVinyl = bossToCreate.spriteVinyl;
		
	GetBossHpLimiter();
		
	o_player.levelSelector = true;
}