// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossBigEyeStep()
{
	if (contAttack >= 0)
		{
			contAttack --;
		}
	
		if (contAttack <= 0) && (canChangeAttack)
		{
			//---- BULLET ATTACKING TIME ---//
			contAttack = random_range(200,300);
			bulletsCreated = 0;
			BossChooseAttackBigEye(80)
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
			BossBigEyeBulletAttack(attack);
		}
	
		//---- WALL ATTACK ----//
		WallAttack(1,3,choose(25,50),35,4);
}