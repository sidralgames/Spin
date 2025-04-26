// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Die()
{
	if instance_exists(o_vinilo)
	{
		if (!collision_circle(x,y,5,o_vinilo,true,true)) && (inDash = false)
		{
			contDie --;
			if (contDie <=0) && (dying = false)
			{
				if (image_angle > 270 || image_angle < 90)
				{
					image_yscale = 1;
				}
				else
				{
					image_yscale = -1;
				}
	
				image_angle = direction;
				dying = true;
				depth = o_vinilo.depth+3
			}
		}
		else
		{
			lastTouchedX = x;
			lastTouchedY = y;
			contDie = contDieMax ;
		}

		if (dying = true)
		{
			tocado = true;
		
			if (scaleReset = false)
			{
				image_xscale = 1;
				if (image_angle > 270 || image_angle < 90)
				{
					image_yscale = 1;
				}
				else
				{
					image_yscale = -1;
				}
				scaleReset = true;
			}
	
			image_xscale -= 0.01;
			image_yscale -= 0.01 * sign(image_yscale);	
	
			if (image_xscale <= 0.1)
			{
				o_main.lastX = lastTouchedX;
				o_main.lastY = lastTouchedY;
				if (global.playing)
				{
					if (global.haloUpgrade = true)
					{
						global.haloUpgrade = false;
					}
					else
					{
						global.lives -=1;
						global.haveDiedInRun = true;
					}
				}
				
				instance_destroy();
				
				global.fallFromVinyl = true;
				
				if (global.runningAgainstSpinmilisecs > global.runningAgainstSpinmilisecsBest)
				{
					global.runningAgainstSpinmilisecsBest = global.runningAgainstSpinmilisecs;
					global.runningAgainstSpinmilisecs = 0;
				}
				else
				{
					global.runningAgainstSpinmilisecs = 0;
				}
				
				if (global.playing)
				{
					global.falls += 1;
					global.runFalls +=1;
					global.runConsecutiveTracksDefeated = 0;
				}
			}
		}
	}
	
	if (_hp <= 0)
	{
		o_main.lastX = x;
		o_main.lastY = y;
		
		if (global.playing)
		{
			if (global.haloUpgrade = true)
			{
				global.haloUpgrade = false;
			}
			else
			{
				global.lives -=1;
				global.haveDiedInRun = true;
			}
		}
		
		instance_destroy();
		
		if (global.runningAgainstSpinmilisecs > global.runningAgainstSpinmilisecsBest)
		{
			global.runningAgainstSpinmilisecsBest = global.runningAgainstSpinmilisecs;
			global.runningAgainstSpinmilisecs = 0;
		}
		else
		{
			global.runningAgainstSpinmilisecs = 0;
		}
	}
}