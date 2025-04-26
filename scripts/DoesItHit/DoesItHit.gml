// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DoesItHit()
{
	//----- CHECK IF ADAPTER UPGRADE TRIGGERS -----//
	if (global.strongConnectionUpgrade)
	{
		if ( global.oddsStrongConnection = irandom(global.oddsStrongConnection) )
		{
			loseHP = false;
			instance_create_layer(x,y,"Menu",o_safe)
			global.safeHits +=1;
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
	
	//----- LOSE HP -----//
	if (loseHP = true)
	{
		_hp -=1;
		
		CheckCableToDestroy();
		
		//----- CHECK BAJACKTRO UPGRADE -----//
		if (global.bajacktroUpgrade)
		{
			if (_hp =1)
			{
				global.damageAuxUpgrade = 3;
			}
			else
			{
				global.damageAuxUpgrade = 1;
			}
		}
	}
}