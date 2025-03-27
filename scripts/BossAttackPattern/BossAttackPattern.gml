// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackPattern(_fireRatePattern, _bulletsPattern)
{
	if (alarm[0] <= 0) && instance_exists(o_player)
	{
		for (var i=0; i<_bulletsPattern; i++)
		{
			bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
			bullet.speed = 2;
			bullet.initialSpeed = 2;
			bullet.direction = (360 / _bulletsPattern) *i + offsetPattern1;	
		}
				
		offsetPattern1+=5;
		alarm[0] = _fireRatePattern;
	}
}