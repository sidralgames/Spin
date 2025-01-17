// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BulletAttack(_attack)
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
				fireRateSingleBullet = irandom_range(30,40)
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
				fireRatePattern1 = irandom_range(60,180)
				alarm[0] = fireRatePattern1;
				TotBulletsP1 = irandom_range(4,20)
			}
		}break;
		
	}
}