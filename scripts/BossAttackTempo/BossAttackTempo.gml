// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackTempo(_fireRatePitchBullet, pitchBulletSpeed, _HPBulletSpeed)
{
	if (alarm[0] <= 0) && instance_exists(o_player)
	{
		bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss);
		
		if (bulletToShoot = o_bulletPitch)
		{
			dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
		}
		else
		{
			dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
		}
		
		bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
				
		if (bulletToShoot = o_bulletPitch)
		{
			bullet1.speed = pitchBulletSpeed;
		}
		else
		{
			bullet1.speed = _HPBulletSpeed;
		}
					
		bullet1.initialSpeed = bullet1.speed
		bullet1.direction = dir;
				
		 
		alarm[0] = _fireRatePitchBullet ;
		contAttack = 0;
		canChangeAttack = true;
	}
}