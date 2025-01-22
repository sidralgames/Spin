/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_MainMenu)
{
	if (createHP = false)
	{
		createHP = true;
		bossHP = instance_create_layer(x-230,y-120,"Main", o_bossHP);
		if spriteBoss = s_bossDemon
		{
			 instance_create_layer(x+100,y,"Enemies", o_enemy);
			  instance_create_layer(x-100,y,"Enemies", o_enemy);
		}
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
	global.level+=1;
	instance_destroy(bossHP);
	screenShake(6,120,4)
	exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
	exploOrange.sprite_index = s_exploOrange;
	exploOrange.image_xscale = 1.2;
	exploOrange.image_yscale = 1.2;
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
	upgradeGalleta.image_xscale = 0.2;
	upgradeGalleta.image_yscale = 0.2;
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_destroy();
	
}