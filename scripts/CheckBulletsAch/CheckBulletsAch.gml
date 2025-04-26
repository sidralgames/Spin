// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckBulletsAch()
{
	if (achievementCheck.alias = "Nullifier")
	{
		if (global.bossBulletsDestroyed >= 100)
		{
			achievementCheck.unlocked = 1;
		}
	}

	if (achievementCheck.alias = "KillEnemies")
	{
		if (global.enemiesKilled >= 250)
		{
			achievementCheck.unlocked = 1;
		}
	}
	
	if (achievementCheck.alias = "ControlledExplosion")
	{
		if (global.bombsDestroyed >= 250)
		{
			achievementCheck.unlocked = 1;
		}
	}
	
	if (achievementCheck.alias = "Trebol")
	{
		if (global.trebolsPicked >= 7)
		{
			achievementCheck.unlocked = 1;
		}
	}
	
	
	//--- 9999 BULLETS ----//
	if (achievementCheck.alias = "9999Bullets")
	{
		if (global.bulletsFired >= 99999)
		{
			achievementCheck.unlocked = 1;
		}
		
	}
	
	if (achievementCheck.alias = "BreakWalls")
	{
		if (global.brokenWalls >= 500)
		{
			achievementCheck.unlocked = 1;
		}
	}
		
	//--- 777 LUCKY BULLETS ----//
	if (achievementCheck.alias = "777LuckyBullets")
	{
		if (global.luckyBullets >= 777)
		{
		achievementCheck.unlocked = 1;
		}
	}
	
	//---- SPIN X TIMES?? ---//
	if (achievementCheck.alias = "Unknown")
	{
		if (global.bulletsFired > 15000)
		{
			achievementCheck.unlocked = 1;
		}
	}
}