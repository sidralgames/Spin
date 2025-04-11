/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (changeSongCollection = false)
{
	if (global.song != snd_upgradesLoop)
	{
		audio_stop_sound(global.song);
		global.song = snd_upgradesLoop;
		audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
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
	}
	
}

contChange --;

if (contChange <=0 )
{
	contChange = contChangeInitial*2;
	global.vinylSpin = -global.vinylSpin;
	o_upgradesFather.bossSpin = -o_upgradesFather.bossSpin;
}

if (scaled && image_xscale = 1)
{
	CreateUpgrades();
}



if instance_exists(o_viniloUpgrades)
{
	image_angle = o_viniloUpgrades.image_angle;
}

if !instance_exists(o_upgradesFather) && (creatingUpgrades = true)
{
	global.bossUpgradesCollection+=1;
	
	for (var i=0; i<global.totalNumberOfVinyls; i++)
	{	
		thisBoss = ds_map_find_value(global.collectionList, i);
		if (thisBoss.alias = alias)
		{
			thisBoss.unlocked+=1;
			ini_open("SpinData.ini");
			ini_write_real("bossesCollection",thisBoss.alias, thisBoss.unlocked);
			ini_close();
		}
	}
	
	SaveGame();
	
	with(o_main)
	{
		changingLevel = true;
	}
	
	for (var i = 0; i<global.totalNumberOfUpgrades; i++)
	{
		upgradeToChange = ds_map_find_value(global.upgradesList,i)
		upgradeToChange.choosedThisTime = false;
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