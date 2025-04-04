// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossBigEyeStep()
{
	
	if (firstAttack = false)
	{
		warning = true;
		firstAttack = true;
		attack = "Roto";
		rotoSprite = s_rotoBossBigEye;
		canRoto = true;
		contAttack = 400;
	}
	
	contScaleEye --;
	
	if (contScaleEye <= 0)
	{
		scaleEye = 1.25;
		contScaleEye = random_range(20,60)
	}
	
	scaleEye = lerp(scaleEye, 1, 0.15)
	
	if (cocoSpawner = false)
	{
		instance_create_layer(x,y,"BulletsDown", o_cocoSpawner)
		cocoSpawner = true;
	}
	
	if (contAttack >= 0)
		{
			contAttack --;
		}
	
		if (contAttack <= 0) && (canChangeAttack) && (alarm[0] <= 0)
		{
			//---- BULLET ATTACKING TIME ---//
			contAttack = random_range(300,400);
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
		if (contAttack > 50) || (isBreakingVinyl)
		{
			BossBigEyeBulletAttack(attack);
		}
	
		//---- WALL ATTACK ----//
		WallAttack(1,3,choose(25,50),35,4);
}