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
	if (alarm[0] <= 0) && (upgradesCreated <3)
	{
		screenShake(2,20,1)
			
		//GET RANDOM UPGRADES 
		upgrade = ds_map_find_value(global.upgradesList, irandom(global.totalNumberOfUpgrades-1))
			
		//1ST
		if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 0)
		{
			instance_create_layer(x+120, y, "Main", upgrade.obj);
			upgradesCreated +=1;
			upgrade.choosedThisTime = true;
				
		}//2ND
		else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 1)
		{
			instance_create_layer(x-120, y, "Main", upgrade.obj)
			upgradesCreated+=1;
			upgrade.choosedThisTime = true;
			creatingUpgrades = true;
		}//3RD
		else if (upgrade.canAppear) && (upgrade.choosedThisTime = false) && (upgradesCreated = 2)
		{
			instance_create_layer(x, y-120, "Main", upgrade.obj)
			upgradesCreated+=1;
			upgrade.choosedThisTime = true;
			creatingUpgrades = true;
		}
		
		//CHEK LIMITED & UNIQUES ON UPGRADES FATHER
	
	}
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