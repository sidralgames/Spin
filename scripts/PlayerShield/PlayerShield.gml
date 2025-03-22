// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerShield()
{
	if (global.shieldUpgrade)
	{
		if (key_escudo)
		{
			if (global.energy <=0)
			{
				shieldBurned = true;
				haveShield = false;
			}
		
			if (shieldBurned = false)
			{
				ActivateShield();
			}
			else
			{
				if (global.energy > 40)
				{
					shieldBurned = false;
					ActivateShield();
				}
			}
		}
		else
		{
			haveShield = false;
		}
	}
}