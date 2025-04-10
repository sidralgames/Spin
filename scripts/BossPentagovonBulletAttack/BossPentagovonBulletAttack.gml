// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossPentagovonBulletAttack(_attack)
{
	switch(_attack)
	{
		case "Roto":
		{
			if (canRoto)
			{
				BossAttackRoto(100,300);
			}
			else
			{	
				isBreakingVinyl = false;
				contAttack = 0;
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
				BossAttackTempo(irandom_range(300,400), random_range(0.75,1), random_range(0.5,0.75));
			}
			else
			{
				_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
			}
		}break;
			
		case "SingleBullet":{ BossAttackSingleBullet(random_range(30,40), 0, 0); }break;
				
		case "BulletBurst":{ BossAttackBulletBurst(8, 36, 10); }break;
		
		case "DobleBullet":{ BossAttackMultiBullet(random_range(60,120), irandom_range(5,6), 0, 0); }break;
		
		case "BulletSpread":{ BossAttackBulletSpread(choose(20, -20), 50, 8, irandom_range(60,120)); }break;
	
		case "Pattern1": { BossAttackPattern(random_range(60,120), irandom_range(10,20)); }break;
	}
}