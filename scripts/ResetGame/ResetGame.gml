// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetGame(_playing)
{
	//--- RESET  UPGRADES ----//
	ResetUpgrades();
	
	
	//--- RESET  BOSSES DEFEATED THIS RUN ----//
	ResetBossesDefeated();
	
	
	//--- STOP & RESET SOUNDS ---//
	audio_stop_all();
	audio_stop_sound(global.song);
	global.song = snd_song1;
	audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65);
	
	
	//---- DESTROY CABLES ----//
	DestroyCablesAndJacks();
	
	
	//---- DESTROY INSTANCES ----//
	instance_destroy(o_alert);
	instance_destroy(o_enemyFather);
	instance_destroy(o_wall);
	instance_destroy(o_bulletEnemyFather);
	instance_destroy(o_BulletPitchFather);
	instance_destroy(BombsFather);
	instance_destroy(o_player);
	
	
	//---- RETRY OR GO TO MENU? ----//
	global.playing = _playing;
	
	
	//--- RESET GLOBALS ---//
	global.relativeSpeed = 1;
	global.wallSprite = s_wallNacho;
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
	global.cableUpgrade = false;
	global.dashSpeed = 3.2;
	global.luckAuxUpgrade = 1;
	global.oddsStrongConnection = 3;
	global.dobleShotOdds = 1;
	global.luckyShotOdds = 100;
	
	
	//--- RESET TEMPO ---//
	with(o_tempo)
	{
		
		corrupted = false;
		contCorrupted = 0;
	}
	
	
	//---- RESET BOSS ---//
	instance_destroy(o_boss);
	instance_destroy(o_upgrades)
	instance_destroy(o_viniloUpgrades);
	instance_destroy(o_upgradesFather)
	instance_destroy(o_bossHP);
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_create_layer(room_width/2, room_height/2, "Boss", o_boss);
	instance_create_layer(room_width/2, room_height/2, "Vinyl", o_vinilo);
	
	
	//--- RESET BACKGROUNDS ---//
	o_main.changingLevel = true;
	
	
	//--- RESET MAIN ---//
	o_main.gameOverCreated = false;
	
	
	//---- DESTROY FROM MEMORY AND RE-CREATE COLLECTION LIST ---//
	for (var i=0; i<=global.totalNumberOfVinyls; i++)
	{
		ds_map_delete(global.collectionList, i)
	}
	ds_map_clear(global.collectionList);
	ds_map_destroy(global.collectionList);
	
	global.collectionList = ds_map_create();
	global.totalNumberOfVinyls = 0;
	
	AddCollectionList();
	LoadCollection();
	
	
	//---- DESTROY FROM MEMORY AND RE-CREATE UPGRADE LIST ---//
	for (var i=0; i<=global.totalNumberOfUpgrades; i++)
	{
		ds_map_delete(global.upgradesList, i)
	}
	ds_map_clear(global.upgradesList);
	ds_map_destroy(global.upgradesList);
	
	global.upgradesList = ds_map_create();
	global.totalNumberOfUpgrades = 0;
	
	AddUpgradesList();
	
	
	//---- DESTROY FROM MEMORY AND RE-CREATE PLAYER UPGRADE LIST---//
	for (var i=0; i<=global.numberOfUpgradesPlayer; i++)
	{
		
		ds_map_delete(global.playerUpgradesList, i)
	}
	ds_map_clear(global.playerUpgradesList)
	ds_map_destroy(global.playerUpgradesList);
	
	global.playerUpgradesList = ds_map_create();
	global.numberOfUpgradesPlayer = 0;
	
	
	//---- DESTROY FROM MEMORY AND RE-CREATE CABLE LIST ---//
	for (var i=0; i<=global.numberOfCablesPlayer; i++)
	{
		ds_map_delete(global.cablePlayerList, i)
	}
	ds_map_clear(global.cablePlayerList);
	ds_map_destroy(global.cablePlayerList);
	
	global.cablePlayerList = ds_map_create();
	global.numberOfCablesPlayer = 0;
	
	
	//----- ADD INITIAL CABLES ---//
	AddCableWhite();
	AddCableYellow();
	AddCableRed();
	
	
	//---- RESET PARTICLES ---//
	instance_destroy(o_bulletPart);
	with(o_main)
	{
		instance_create_layer(0,0,"Main", o_bulletPart);
	}
}