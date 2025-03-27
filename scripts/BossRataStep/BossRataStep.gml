// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossRataStep(){


	if (contAttack > 0)
	{
		contAttack --;
	}
	if (contAttack <= 0) && (canChangeAttack)
	{
		bulletsCreated = 0;
		contAttack = random_range(100,200);
		
		
		if (_hp < 200)
		{
			attack = choose("BulletBurst", "BulletTempo","BulletBurst", "Pattern1", "Roto");
		}
		else 
		{
			attack = choose("Pattern1","DobleBullet", "BulletBurst","Roto", "Pattern1", "Roto")
		}
		
		if (attack = "Roto") && (canRoto)
		{
			warning = true;
			rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
		}
	}
	
	if (contRotoTime >= 0)
	{
		contRotoTime--;	
		if contRotoTime <= 0
		{
			canRoto = true;
		}
	}
	
	BossCreateEnemyDisc();
	
	BulletAttack(attack);

	if (attack) != "BulletBurst"
	{
		WallAttack(2,3,choose(25,50),40,3);
	}
	else
	{
		WallAttack(1,2,choose(25,50),40,2);
	}

}