// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackRoto()
{
	contWarning--;
					
	if (warning = true)
	{
		if (pickAngle = false)
		{
			pickAngle = true;
			anglePicked = irandom(360);
			angleRotoBoss = anglePicked + image_angle;
		}								
	
		if (contWarning <= 2)
		{
			warning = false;
		}		
	}
					
	angleRotoBoss = anglePicked + image_angle;
					
	if (warning = false) && (contWarning <= 2)
	{			
		createRoto = true;
		alarm[9] = vibrationRotoTime;
		gamepad_set_vibration(0,vibrationRoto,vibrationRoto);
		screenShake(5,60,2)
		if (contWarning <= 0)
		{
			for (var i=0; i<10; i++)
			{
				angleOff = random_range(-10,10);
				distOff = random_range(-20,60);
				scaleExplo = random_range(0.3,0.6);
				exploRoto = instance_create_layer(x+ lengthdir_x(100+distOff, angleRotoBoss-90+angleOff),y + lengthdir_y(100+distOff, angleRotoBoss-90+angleOff), "Boss", o_explosion)
				exploRoto.sprite_index = s_exploOrange;
				exploRoto.image_xscale = scaleExplo;
				exploRoto.image_yscale = scaleExplo;
						
			}
			
			pickAngle = false;
			contAttack = 0;
			canChangeAttack = true;
			contWarning = 100;
			canRoto = false;
			contRotoTime = 500;
		}
	}
}