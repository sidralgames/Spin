// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossRataStep()
{

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
		BossChooseAttackRata(200);
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
	if (contAttack > 300) || (isBreakingVinyl)
	{
		BossRataBulletAttack(attack);
	}
	
	//---- WALL ATTACK ----//
	if (attack) != "BulletSpread"
	{
		WallAttack(2,3,choose(25,50),40,2);
	}
	else
	{
		WallAttack(1,2,choose(25,50),40,1);
	}
	
	//--- ENEMY DISC ---//
	BossCreateEnemyDisc();

}