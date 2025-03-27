// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackTempo()
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
			bullet1.speed = random_range(0.75,1);
		}
		else
		{
			bullet1.speed = random_range(0.5,0.75);
		}
					
		bullet1.initialSpeed = bullet1.speed
		bullet1.direction = dir;
				
		fireRatePitchBullet = irandom_range(360,420)
		alarm[0] = fireRatePitchBullet;
		contAttack = 0;
		canChangeAttack = true;
	}
}