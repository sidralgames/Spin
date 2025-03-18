// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayGame(_playing)
{
	global.bossesDefeatedInRun = 0;
	instance_destroy(o_enemyFather);
	instance_destroy(o_wall);
	instance_destroy(o_bulletEnemyFather);
	instance_destroy(o_BulletPitchFather);
	instance_destroy(BombsFather);
	o_main.gameOverCreated = false;
	global.playing = _playing;
	global.level = 1;
	global.lives = global.maxLives;
	global.tempoCorrupted = false;
	global.weapon = "Gun";
	global.energyTotal = 150;
	global.superShot = 0;
	o_boss.image_blend = c_white;
	global.vinylAlpha = 1;
	global.vinylColor = global.pink;
	o_main.changingLevel = true;
}