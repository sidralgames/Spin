// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossPentagovonStep()
{
	
	if (firstAttack = false)
	{
		isBreakingVinyl = true;
		warning = true;
		firstAttack = true;
		attack = "Roto";
		canRoto = true;
		contAttack = 400;
		rotoSprite = s_rotoPentagovon;
	}
	
	
	if (contAttack >= 0)
	{
		contAttack --;
	}
	
	if (contAttack <= 0) && (canChangeAttack) && (alarm[0] <= 0)
	{
		//---- BULLET ATTACKING TIME ---//
		
		contAttack = random_range(200,400);
		bulletsCreated = 0;
		BossChooseAttackGirl(150);
	}
	
	if (contRotoTime >= 0)
	{
		contRotoTime--;	
		if contRotoTime <= 0
		{
			canRoto = true;
		}
	}
	
	//---- ACTUAL BULLET ATTACKING TIME ---//
	if (contAttack > 100) || (isBreakingVinyl)
	{
		BossGirlBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	if (attack) != "BulletSpread"
	{
		WallAttack(0,2,choose(25,50),40,2);
	}
	else
	{
		WallAttack(0,2,choose(25,50),40,2);
	}

}