// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossOblongStep()
{

	if (firstAttack = false)
	{
		isBreakingVinyl = true;
		warning = true;
		firstAttack = true;
		attack = "Roto";
		canRoto = true;
		contAttack = 400;
		rotoSprite = s_rotoOblong;
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
	
	//----- LASERS ----//
	
	laserCont --;
	
	
	if (angleLaserChoose = false)
	{
		angleLaserChoose = true;
		
		for (var i=0; i<laserNum; i++)
		{
			_angleLaser_L[i] = irandom(360)
		}
	}
	
	if (lasersCreated = false) && (laserCont < 700)
	{
		for (var i=0; i<laserNum; i++)
		{
			//if !collision_circle(x+lengthdir_x(50, _angleLaser_L[i]), y + lengthdir_y(50, _angleLaser_L[i]),10,o_laserBossOblong_L,false,true)
			//{
				laser_L[i] = instance_create_layer(x+lengthdir_x(50, _angleLaser_L[i]), y + lengthdir_y(50, _angleLaser_L[i]), "Laser", o_laserBossOblong_L)
			//}
			//else
			//{
			//	laserNum = max(0,laserNum - 1);
			//}
		}
		
		lasersCreated = true;
	}
	
	
	if (lasersCreated)
	{		
		isAttackingLaser = true;
		
		for (var i=0; i<laserNum; i++)
		{
			laser_L[i].x = x+lengthdir_x(25 + scale*25, _angleLaser_L[i] + image_angle)
			laser_L[i].y = y+lengthdir_y(25 + scale*25, _angleLaser_L[i] + image_angle)
			laser_L[i].angleLaser = _angleLaser_L[i] + image_angle;
			laser_L[i].image_angle = _angleLaser_L[i] + image_angle;
		}
		
	}
	
	if (isAttackingLaser)
	{
		if (laserCont > 500) && (laserCont < 600)
		{
			isWarningLaser = true;
		}
		
		if (laserCont <= 500) && (laserCont >= 100)
		{
			isLaser = true;
			isWarningLaser = false;
		}
		
		if (laserCont <100)
		{
		
			isLaser = false;
			
		}
		if (laserCont <=0)
		{
			laserCont = 1000;
			angleLaserChoose = false;
	
			for (var i=0; i<laserNum; i++)
			{
				instance_destroy(laser_L[i])
			}
			
			lasersCreated = false;
			laserNum = 1 + irandom(5);
		}
	}

}