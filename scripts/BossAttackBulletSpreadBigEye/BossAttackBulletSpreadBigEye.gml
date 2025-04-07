// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackBulletSpreadBigEye(_offset, _maxBullets, _fireRate, _fireRateRound, _dist, _angle)
{
	if (alarm[0] <= 0) && instance_exists(o_player)
	{
		offsetRound = _offset;
		dir = image_angle;
						
		bullet1 = instance_create_layer(x + lengthdir_x(_dist, _angle),y+ lengthdir_y(_dist, _angle),"Bullets", o_bulletBoss);
		bullet1.speed = random_range(2,2.5);
		bullet1.initialSpeed = bullet1.speed
		bullet1.direction = anglePlayer + offsetRound;
										
		fireRateSingleBullet = _fireRateRound;
		bulletsCreated +=1;
						
		if (bulletsCreated >= _maxBullets)
		{
			//contAttack = 0;
			canChangeAttack = true;
			offsetRound = 0;
		}
		else
		{
			alarm[0] = _fireRate;
			canChangeAttack = false;
		}
						
	}
}