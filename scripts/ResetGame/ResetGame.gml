// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetGame(_playing)
{
	//Reset UPGRADES
	ResetUpgrades();
	
	//Stop & Reset SOUNDS
	audio_stop_all();
	audio_stop_sound(global.song);
	global.song = snd_song1;
	audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65);
	
	//Destroy CABLES
	DestroyCablesAndJacks();
	
	//Destroy INSTANCES
	instance_destroy(o_alert);
	instance_destroy(o_enemyFather);
	instance_destroy(o_wall);
	instance_destroy(o_bulletEnemyFather);
	instance_destroy(o_BulletPitchFather);
	instance_destroy(BombsFather);
	instance_destroy(o_player);
	
	//Retry or Menu?
	global.playing = _playing;
	
	//Reset GLOBALS
	global.bossHpLimiterUpgrade = false;
	global.bossesDefeatedInRun = 0;
	global.level = 1;
	global.maxLives = 3;
	global.lives = global.maxLives;
	global.speedAux = 0;
	global.dashEnergyMin = 25;
	global.shootingEnergyMin = 25;
	global.fwd = false;
	global.slowed = false;
	global.tempoCorrupted = false;
	global.weapon = "Gun";
	global.energyTotal = 150;
	global.superShot = 0;
	global.fireRateAux = 0;
	global.luckyShot = false;
	global.strongConnectionUpgrade = false;
	global.energyRecharge = 0.45;
	global.haloUpgrade = false;
	global.shieldUpgrade = false;
	global.slowmoUpgrade = false;
	global.smartBulletUpgrade = false;
	global.hpWallUpgrade = 0;
	global.dobleShotUpgrade = false;
	global.luckAuxUpgrade = 1;
	global.dashSpeed = 3.2;
	
	
	//Reset Tempo
	with(o_tempo)
	{
		corrupted = false;
		contCorrupted = 0;
	}
	
	//Reset Boss
	instance_destroy(o_boss);
	instance_destroy(o_upgrades)
	instance_destroy(o_upgradesFather)
	instance_destroy(o_bossHP);
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_create_layer(room_width/2, room_height/2, "Boss", o_boss);
	instance_create_layer(room_width/2, room_height/2, "Vinyl", o_vinilo);
	
	//Reset Backgrouds
	o_main.changingLevel = true;
	
	//Reset Main
	o_main.gameOverCreated = false;
	
	for (var i=0; i<global.numberOfUpgradesPlayer; i++)
	{
		ds_map_delete(global.playerUpgradesList, i)
	}
	
	ds_map_destroy(global.playerUpgradesList);
	
	global.playerUpgradesList = ds_map_create();
	global.numberOfUpgradesPlayer = 0;
	
	instance_destroy(o_bulletPart);
	with(o_main)
	{
		instance_create_layer(0,0,"Main", o_bulletPart);
	}
}