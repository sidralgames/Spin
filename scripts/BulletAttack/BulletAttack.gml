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
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
						
							screenShake(5,60,2);
							global.vibration+=5;
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
						
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
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
						
						if (bulletsCreated >= 20)
						{
							contAttack = 0;
							canChangeAttack = true;
							offsetRound = 0;
						}
						else
						{
							alarm[0] = 10;
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
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
						global.vibration+=5;
							screenShake(5,60,2)
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						offsetRound -=10;
						dir = image_angle;
						
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = dir + offsetRound;
						
						fireRateSingleBullet = irandom_range(60,120);
						bulletsCreated +=1;
						
						if (bulletsCreated >= 16)
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
						TotBulletsP1 = irandom_range(4,6);
						alarm[0] = fireRatePattern1;
						
					}
				}break;
		
			}
		}
		break;
		
		case s_bossTribal:
		{
			switch(_attack)
			{
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
						global.vibration+=5;
							screenShake(5,60,2)
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
	
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
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
		}break;
		
		case s_bossGirl:
		{
			switch(_attack)
			{
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
						global.vibration+=5;
							screenShake(5,60,2)
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
	
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						offsetRound -=choose(20, -20);
						dir = image_angle;
						
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = dir + offsetRound;
						
						bullet2 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet2.speed = -random_range(2,2.5);
						bullet2.initialSpeed = bullet2.speed
						bullet2.direction = dir + offsetRound;
						
						fireRateSingleBullet = irandom_range(60,120);
						bulletsCreated +=1;
						
						if (bulletsCreated >= 50)
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
							bullet.initialSpeed = random_range(1.5,2);
							bullet.direction = (360 / TotBulletsP1) *i + offsetPattern1;	
						}
				
						offsetPattern1+=5;
						fireRatePattern1 = irandom_range(60,180);
						TotBulletsP1 = irandom_range(6,10);
						alarm[0] = fireRatePattern1;
						
					}
				}break;
		
			}
		}break;
		
		case s_bossRata:
		{
			switch(_attack)
			{
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
							alarm[9] = vibrationRotoTime;
							gamepad_set_vibration(0,vibrationRoto,vibrationRoto);
							screenShake(5,60,2)
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
	
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						offsetRound -=choose(25, -25);
						dir = image_angle;
						
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = dir + offsetRound;
						
						bullet2 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet2.speed = -random_range(2,2.5);
						bullet2.initialSpeed = bullet2.speed
						bullet2.direction = dir + offsetRound;
						
						fireRateSingleBullet = irandom_range(60,120);
						bulletsCreated +=1;
						
						if (bulletsCreated >= 60)
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
							bullet.initialSpeed = random_range(1.5,2);
							bullet.direction = (360 / TotBulletsP1) *i + offsetPattern1;	
						}
				
						offsetPattern1+=5;
						fireRatePattern1 = irandom_range(60,180);
						TotBulletsP1 = irandom_range(6,10);
						alarm[0] = fireRatePattern1;
						
					}
				}break;
		
			}
		}break;
		
		default: 
		{
			switch(_attack)
			{
				case "Roto":
				{
					if (canRoto)
					{
						contWarning--;
					
						if (warning = true)
						{
							if (pickAngle = false)
							{
								pickAngle = true;
								anglePicked = irandom(360);
								angleRotoBoss = anglePicked + image_angle;
							}
						
						
							if (contWarning <= 2)
							{
								warning = false;
							}
						
						}
					
						angleRotoBoss = anglePicked + image_angle;
					
						if (warning = false) && (contWarning <= 2)
						{
							
							createRoto = true;
						global.vibration+=5;
							screenShake(5,60,2)
							if (contWarning <= 0)
							{
								for (var i=0; i<10; i++)
								{
									angleOff = random_range(-10,10);
									distOff = random_range(-20,60);
									scaleExplo = random_range(0.3,0.6);
									exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
									exploRoto.sprite_index = s_exploOrange;
									exploRoto.image_xscale = scaleExplo;
									exploRoto.image_yscale = scaleExplo;
									
								}
								
								
								pickAngle = false;
								contAttack = 0;
								canChangeAttack = true;
								contWarning = 100;
								canRoto = false;
								contRotoTime = 500;
							}
						}
					}
					else
					{	
						createRoto = false;
						drawflashRoto = false;
						drawflashCont = 0;
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
					}
				}break;
				
				case "BulletTempo":
				{
					if (o_tempo.contCorrupted <= 0)
					{
						if (alarm[0] <= 0) && instance_exists(o_player)
						{
	
							bulletToShoot = choose(o_bulletPitch, o_bulletHPBoss)
							if (bulletToShoot = o_bulletPitch)
							{
								dir = point_direction(x,y,o_tempo.x, o_tempo.y+random_range(20,-20))
							}
							else
							{
								dir = point_direction(x,y,o_bossHP.x, o_bossHP.y+random_range(20,-20))
							}
							bullet1 = instance_create_layer(x,y,"Bullets", bulletToShoot);
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
						_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
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
				
				
				case "BulletBurst":
				{
					if (alarm[0] <= 0) && instance_exists(o_player)
					{
						offsetRound -=choose(20, -20);
						dir = image_angle;
						
						bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet1.speed = random_range(2,2.5);
						bullet1.initialSpeed = bullet1.speed
						bullet1.direction = dir + offsetRound;
						
						bullet2 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
						bullet2.speed = -random_range(2,2.5);
						bullet2.initialSpeed = bullet2.speed
						bullet2.direction = dir + offsetRound;
						
						fireRateSingleBullet = irandom_range(60,120);
						bulletsCreated +=1;
						
						if (bulletsCreated >= 50)
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
							bullet.initialSpeed = random_range(1.5,2);
							bullet.direction = (360 / TotBulletsP1) *i + offsetPattern1;	
						}
				
						offsetPattern1+=5;
						fireRatePattern1 = irandom_range(60,180);
						TotBulletsP1 = irandom_range(6,10);
						alarm[0] = fireRatePattern1;
						
					}
				}break;
		
			}
		}break;
	}
}