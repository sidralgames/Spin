/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_yscale = scale;
image_xscale = scale;

if (scale > 1)
{
	scale = lerp(scale,1,0.05);	
	
	if (scale < 1.03)
	{
		scale = 1;
	}
}
if !instance_exists(o_MainMenu) && (global.howToPlay = false)
{
	if (contToStart >= 0)
	{
		contToStart --;
	}
	
	if (contToStart <= 0) || (_hp < _hpMax)
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
		
		image_angle -= -global.vinylSpin*global.relativeSpeed;
		
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
			
			case s_bossTribal:
			{
				BossTribalStep();
			}
			break;
		}
	}
	else
	{
		image_angle -= -global.vinylSpin*global.relativeSpeed;
	}
}
else
{
	image_angle -= -global.vinylSpin*global.relativeSpeed;
}

if (image_angle <= 0)
{
	image_angle +=360;
}

_angle = image_angle;

if (_hp <= 0)
{
	with(o_main)
	{
		changingLevel = true
		drawflash = true;
		drawflashCont = 40;
	}
	global.level+=1;
	instance_destroy(bossHP);
	screenShake(6,100,4);
	exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
	exploOrange.sprite_index = s_exploOrange;
	exploOrange.image_xscale = 1.2;
	exploOrange.image_yscale = 1.2;
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
	upgradeGalleta.image_xscale = 0.12;
	upgradeGalleta.image_yscale = 0.12;
	instance_destroy(o_vinilo);
	instance_destroy(oViniloFake);
	instance_destroy();
	
}