// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackMultiBulletBigEye(_fireRateSingleBullet, _bullets, _dist, _angle)
{
	if (alarm[0] <= 0) && instance_exists(o_player)
	{			
		for (var i=0; i<_bullets; i++)
		{				
			dir = anglePlayer
			bullet1 = instance_create_layer(x + lengthdir_x(_dist, _angle),y + lengthdir_y(_dist, _angle),"Bullets", o_bulletBoss);
			bullet1.speed = random_range(2,2.5);
			bullet1.initialSpeed = bullet1.speed
			bullet1.direction = dir-10*i;
		}
				
		alarm[0] = _fireRateSingleBullet;
	}
}