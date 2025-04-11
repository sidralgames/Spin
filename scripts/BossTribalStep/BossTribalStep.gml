// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossTribalStep()
{
	
	if (firstAttack = false)
	{
		isBreakingVinyl = true;
		warning = true;
		firstAttack = true;
		attack = "Roto";
		canRoto = true;
		contAttack = 400;
		rotoSprite = s_rotoBossTribal;
	}
	
	if (contAttack >= 0)
	{
		contAttack --;
	}
	
	if (contAttack <= 0) //&& (canChangeAttack) && (alarm[0] <= 0)
	{
		//---- BULLET ATTACKING TIME ---//
		rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
		contAttack = random_range(400,500);
		bulletsCreated = 0;
		BossChooseAttackTribal(100)
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
	if (contAttack > 250) || (isBreakingVinyl)
	{
		BossTribalBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	WallAttack(0,2,choose(25,25),40,2);
	
	
	CreateMisilTribal(0,0);

}