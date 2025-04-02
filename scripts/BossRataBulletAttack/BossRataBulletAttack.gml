// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossRataBulletAttack(_attack)
{
	switch(_attack)
	{
		case "Roto":
		{
			if (canRoto)
			{
				BossAttackRoto(100,500);
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
				BossAttackTempo(irandom_range(360,420), random_range(0.75,1), random_range(0.5,0.75));
			}
			else
			{
				_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
			}
		}break;
			
		case "SingleBullet":{ BossAttackSingleBullet(random_range(60,120), 0, 0); }break;
				
		case "BulletBurst":{ BossAttackBulletBurst(8, 20, 12); }break;
		
		case "DobleBullet":{ BossAttackMultiBullet(random_range(60,120), irandom_range(2,3), 0, 0); }break;
		
		case "BulletSpread":{ BossAttackBulletSpread(choose(25, -25), 60, 8, irandom_range(60,120)); }break;
	
		case "Pattern1": { BossAttackPattern(random_range(60,120), irandom_range(6,10)); }break;
	}
}