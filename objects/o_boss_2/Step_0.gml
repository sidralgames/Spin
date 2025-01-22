/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_MainMenu)
{
	switch(spriteBoss)
	{
		case s_bossNacho:
		{
			BossNachoStep();
		}
		break;
	
		case s_bossDemon:
		{
			BossDemonStep();
		}
		break;
	}
}
else
{
	image_angle -= rotSpeedBoss*global.relativeSpeed;
}

if (image_angle <= 0)
{
	image_angle +=360;
}

_angle = image_angle;