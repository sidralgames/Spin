// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossNachoStep()
{
if (contAttack >= 0)
	{
		contAttack --;
	}
	
	if (contAttack <= 0) && (canChangeAttack)
	{
		//---- BULLET ATTACKING TIME ---//
		alarm[0] = 0;
		contAttack = random_range(400,800);
		bulletsCreated = 0;
		BossChooseAttackNacho(50)
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
		BossNachoBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	WallAttack(1,2,choose(50,75),35,3);
	
}