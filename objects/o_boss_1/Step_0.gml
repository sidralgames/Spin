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

	