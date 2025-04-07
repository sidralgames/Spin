// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossTribalStep()
{
	if (contAttack >= 0)
	{
		contAttack --;
	}
	
	if (contAttack <= 0) //&& (canChangeAttack) && (alarm[0] <= 0)
	{
		//---- BULLET ATTACKING TIME ---//
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
	if (contAttack > 100) || (isBreakingVinyl)
	{
		BossTribalBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	WallAttack(0,2,choose(25,25),40,3);

}