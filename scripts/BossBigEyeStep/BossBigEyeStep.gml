// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossBigEyeStep()
{
	if (bossSet = false)
	{
		global.haveEye = true;
		spriteEyeBoss = s_Eye;
		global.spriteBossEye = spriteEyeBoss;	
	}
	
	if (firstAttack = false)
	{
		isBreakingVinyl = true;
		warning = true;
		firstAttack = true;
		attack = "Roto";
		canRoto = true;
		contAttack = 400;
		rotoSprite = s_rotoBossBigEye;
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
	
	if (contAttack <= 0) //&& (canChangeAttack) && (alarm[0] <= 0)
	{
		//---- BULLET ATTACKING TIME ---//
		rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
		contAttack = random_range(400,550);
		bulletsCreated = 0;
		BossChooseAttackBigEye(150);
		
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
	if (contAttack < 300) || (isBreakingVinyl)
	{
		BossBigEyeBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	WallAttack(1,3,choose(25,50),35,4);
	

}