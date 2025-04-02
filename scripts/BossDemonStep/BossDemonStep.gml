// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossDemonStep()
{
	if (contAttack >= 0)
	{
		contAttack --;
	}
	
	if (contAttack <= 0) && (canChangeAttack)
	{
		//---- BULLET ATTACKING TIME ---//
		alarm[0] = 0;
		contAttack = random_range(400,600);
		bulletsCreated = 0;
		BossChooseAttackDemon(80)
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
	if (contAttack > 200) || (canRoto)
	{
		BossDemonBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	WallAttack(0,2,choose(25,50),35,2);
	
	//---- MINI DEMONS ----//
	CreateMiniDemons();
}