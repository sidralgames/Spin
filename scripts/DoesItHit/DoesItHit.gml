// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DoesItHit()
{
	if (global.strongConnectionUpgrade)
	{
		if ( global.oddsStrongConnection = irandom(global.oddsStrongConnection) )
		{
			loseHP = false;
		}
		else
		{
			loseHP = true;
		}
	}
	else
	{
		loseHP = true;
	}
	
	if (loseHP = true)
	{
		_hp -=1;
		
		CheckCableToDestroy();
	}
}