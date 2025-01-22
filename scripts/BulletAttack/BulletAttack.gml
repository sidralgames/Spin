// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BulletAttack(_attack)
{
	switch(spriteBoss)
	{
		case s_bossNacho:
		{
			switch(_attack)
			{
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
	
							dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							bullet1 = instance_create_layer(x,y,"Bullets", o_bulletPitch);
							bullet1.speed = random_range(0.75,1);
							bullet1.initialSpeed = bullet1.speed
							bullet1.direction = dir;
						
							fireRatePitchBullet = irandom_range(360,420)
							alarm[0] = fireRatePitchBullet;
							contAttack = 0;
							canChangeAttack = true;
						}
					}
					else
					{
						_attack = choose("SingleBullet", "DobleBullet", "BulletRound")
					}
				}break;
				
				case "SingleBullet":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						if (o_player.runningAgainstDisc)
						{
							anticipatedOffset = 40;
						}
						else
						{
							anticipatedOffset = -30;
						}
	
						fireRate = random_range(100,200);
						dir = point_direction(x,y,o_player.x, o_player.y)
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = anticipatedOffset + dir-10;
						
						fireRateSingleBullet = irandom_range(60,120)
						alarm[0] = fireRateSingleBullet;
					}
				}break;
				
				
				case "BulletRound":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						offsetRound -=7;
						dir = image_angle;
						
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = dir + offsetRound;
						
						fireRateSingleBullet = irandom_range(60,120);
						bulletsCreated +=1;
						
						if (bulletsCreated >= 38)
						{
							contAttack = 0;
							canChangeAttack = true;
							offsetRound = 0;
						}
						else
						{
							alarm[0] = 8;
							canChangeAttack = false;
						}
						
					}
				}break;
				
				
				case "DobleBullet":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						if (o_player.runningAgainstDisc)
						{
							anticipatedOffset = 40;
						}
						else
						{
							anticipatedOffset = -30;
						}
	
						fireRate = random_range(100,200);
						dir = point_direction(x,y,o_player.x, o_player.y)
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = anticipatedOffset + dir-10;
						
						bullet2 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet2.speed = random_range(2,2.5);
						bullet2.initialSpeed = bullet2.speed
						bullet2.direction = anticipatedOffset + dir+10;
						
						fireRateSingleBullet = irandom_range(60,120)
						alarm[0] = fireRateSingleBullet;
					}
				}break;
		
		
				case "Pattern1":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						for (var i=0; i<TotBulletsP1; i++)
						{
							bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
							bullet.speed = 2;
							bullet.initialSpeed = 2;
							bullet.direction = (360 / TotBulletsP1) *i + offsetPattern1;	
						}
				
						offsetPattern1+=5;
						fireRatePattern1 = irandom_range(60,180);
						TotBulletsP1 = irandom_range(4,8);
						alarm[0] = fireRatePattern1;
						
					}
				}break;
		
			}
		}
		break;
		
		case s_bossDemon:
		{
			switch(_attack)
			{
				case "SingleBullet":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						anticipatedOffset = 40;
	
						fireRate = random_range(100,200);
						dir = point_direction(x,y,o_player.x, o_player.y) + random_range(-30,30)
						bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet.speed = random_range(2,2.5);
						bullet.initialSpeed = bullet.speed
						bullet.direction = dir;
						fireRateSingleBullet = irandom_range(60,120)
						alarm[0] = fireRateSingleBullet;
					}
				}break;
		
		
				case "Pattern1":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						for (var i=0; i<TotBulletsP1; i++)
						{
							bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
							bullet.speed = 2;
							bullet.initialSpeed = 2;
							bullet.direction = (360 / TotBulletsP1) *i + offsetPattern1;	
						}
				
						offsetPattern1+=5;
						fireRatePattern1 = irandom_range(60,180);
						alarm[0] = fireRatePattern1;
						TotBulletsP1 = irandom_range(4,20);
					}
				}break;
		
			}
		}
		break;
	}
}