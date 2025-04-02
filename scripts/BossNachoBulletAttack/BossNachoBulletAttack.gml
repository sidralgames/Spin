// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossNachoBulletAttack(_attack)
{
	switch(_attack)
	{
		case "Roto":
		{
			if (canRoto)
			{
				BossAttackRoto(120,600);
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
				BossAttackTempo(irandom_range(400,500), random_range(0.5,0.75), random_range(0.5,0.65));
			}
			else
			{
				_attack = choose("SingleBullet", "DobleBullet", "BulletBurst")
			}
		}break;
			
		case "SingleBullet":{ BossAttackSingleBullet(random_range(80,140), 0, 0); }break;
				
		case "BulletBurst":{ BossAttackBulletBurst(10, 12, 8); }break;
		
		case "DobleBullet":{ BossAttackMultiBullet(random_range(80,140), irandom_range(1,2), 0, 0); }break;
	
		case "Pattern1": { BossAttackPattern(random_range(60,120), irandom_range(3,5)); }break;
	}
}