/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (changeSongCollection = false)
{
	if (global.song != snd_upgrade)
	{
		audio_stop_sound(global.song);
		global.song = snd_upgrade;
		audio_play_sound_on(global.audioEmitter,global.song, true, 100,,37);
		changeSongCollection = true;
		}
}

if (image_xscale <=1.2) && (scaled = false)
{
	image_xscale = lerp(image_xscale, 1.4, 0.09);
	image_yscale = lerp(image_yscale, 1.4, 0.09);
}
else
{
	scaled = true;
	
	image_xscale = lerp(image_xscale, 1, 0.1)
	image_yscale = lerp(image_yscale, 1, 0.1);
	
	if (image_xscale <= 1.08)
	{
		image_xscale =1;
		image_yscale =1;
		
		if (creatingUpgrades = false) && (alarm[0] <= 0)
		{
			screenShake(2,20,1)
			set = irandom(7);
			if (set = 0)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeGun);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeEnergy);
			}
			if (set = 1)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeGun);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeFireRate);
			}
			if (set = 2)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeFireRate);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeEnergy);
			}
			if (set = 3)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeSlowMotion);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeEnergy);
			}
			if (set = 4)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeWalls);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeFireRate);
			}
			if (set = 5)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeWalls);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeGun);
			}
			if (set = 6)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeSuperShot);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeWalls);
			}
			if (set = 7)
			{
				instance_create_layer(x+90, y, "BulletsDown", o_upgradeSuperShot);
				instance_create_layer(x-90, y, "BulletsDown", o_upgradeSlowMotion);
			}
			creatingUpgrades = true;
		}
	}
	
}



if instance_exists(o_viniloUpgrades)
{
	image_angle = o_viniloUpgrades.image_angle;
}

if !instance_exists(o_upgradesFather) && (creatingUpgrades = true)
{
	with(o_main)
	{
		changingLevel = true;
	}
	screenShake(6,120,4)
	exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
	exploOrange.sprite_index = s_exploOrange;
	exploOrange.image_xscale = 1.2;
	exploOrange.image_yscale = 1.2;
	upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_vinilo);
	upgradeGalleta = instance_create_layer(x,y,"Boss", o_boss);
	instance_destroy(o_viniloUpgrades);
	instance_destroy();
}