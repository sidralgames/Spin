// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ResetGame(_playing)
{
	DestroyCablesAndJacks();
	global.bossesDefeatedInRun = 0;
	instance_destroy(o_enemyFather);
	instance_destroy(o_wall);
	instance_destroy(o_bulletEnemyFather);
	instance_destroy(o_BulletPitchFather);
	instance_destroy(BombsFather);
	o_main.gameOverCreated = false;
	global.playing = _playing;
	global.level = 1;
	global.lives = global.initialLives;
	global.tempoCorrupted = false;
	global.weapon = "Gun";
	global.energyTotal = 150;
	global.superShot = 0;
	instance_destroy(o_boss);
	instance_destroy(o_bossHP);
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_create_layer(room_width/2, room_height/2, "Boss", o_boss);
	instance_create_layer(room_width/2, room_height/2, "Vinyl", o_vinilo);
	o_main.changingLevel = true;
}