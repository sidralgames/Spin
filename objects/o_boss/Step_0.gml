/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_MainMenu)
{
	if (createHP = false)
	{
		createHP = true;
		bossHP = instance_create_layer(x-230,y-120,"Main", o_bossHP);
	}
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

if (_hp <= 0)
{
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_destroy();
	
}