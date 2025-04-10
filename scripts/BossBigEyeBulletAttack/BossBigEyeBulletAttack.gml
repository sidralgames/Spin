// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossBigEyeBulletAttack(_attack)
{
	switch(_attack)
	{
		case "Roto":
		{
			if (canRoto)
			{
				BossAttackRoto(100,350);
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
			
		case "SingleBullet":{ BossAttackMultiBulletBigEye(random_range(60,80), irandom_range(2,3), distEye+8, anglePlayer); }break;
				
		case "BulletSpread":{ BossAttackBulletSpreadBigEye(choose(5, -5), 60, 8, irandom_range(60,120), distEye+8, anglePlayer); }break;
		
		case "MultiBullet":{ BossAttackMultiBulletBigEye(random_range(60,80), irandom_range(2,3), distEye+8, anglePlayer); }break;
	
		case "Pattern1": { BossAttackPattern(random_range(60,100), irandom_range(5,8)); }break;
	}
}