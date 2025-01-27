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
if !instance_exists(o_MainMenu) && (global.howToPlay = false) && (global.collection = false)
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
	global.bossesDefeatedInRun +=1;
	thisBoss = ds_map_find_value(global.collectionList, bossNumber);
	thisBoss.defeatedInRun = 1;
	
	with(o_main)
	{
		changingLevel = true
		drawflash = true;
		drawflashCont = 40;
	}
	
	global.level+=1;
	instance_destroy(bossHP);
	instance_destroy(o_enemyFather);
	instance_destroy(o_bulletEnemyFather);
	screenShake(8,120,5);
	exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
	exploOrange.sprite_index = s_exploOrange;
	exploOrange.image_xscale = 1.2;
	exploOrange.image_yscale = 1.2;
	
	if (bossIsInCollection = 1)
	{
		upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
		upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
		upgradeGalleta.image_xscale = 0.12;
		upgradeGalleta.image_yscale = 0.12;
		instance_destroy(o_vinilo);
		instance_destroy(oViniloFake);
		instance_destroy();
	}
	else
	{
		bossIsInCollection = 1;
		switch(spriteBoss)
		{
			case s_bossNacho:
			{
				global.bossNachoCollection = 1;
			}
			break;
			
			case s_bossDemon:
			{
				global.bossDemonCollection = 1;
			}
			break;
			
			case s_bossTribal:
			{
				global.bossTribalCollection = 1;
			}
			break;
		}
		SaveGame();
		bossDef = instance_create_layer(x,y,"Menu", o_bossDefeated);
		instance_destroy();
	}
	
}

key_leftP = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl);
key_rightP = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr);
	
if (global.collection)
{
	
	if (key_leftP)
	{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl -=1;	
		changeSongCollection = false;
	}

	if (key_rightP)
	{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl +=1;
		changeSongCollection = false;
	}
		

	if (selectedVinyl > 2)
	{
		selectedVinyl = 0;	
	}

	if (selectedVinyl < 0)
	{
		selectedVinyl = 2;	
	}
	switch(selectedVinyl)
	{
		case 0:
		{
			if (global.bossNachoCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.85
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_song1)
					{
						audio_stop_sound(global.song);
						global.song = snd_song1;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,65);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 1;
				global.vinylColor = global.pink;
				drawLocked = false;
				//global.level = 1;
			}
			
			sprite_index = s_bossNacho;
			spriteBoss = s_bossNacho;
			
		}break;
		
		case 1:
		{
			if (global.bossDemonCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.75;
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_songDemon)
					{
						audio_stop_sound(global.song);
						global.song = snd_songDemon;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.75;
				global.vinylColor = global.lightBlue;
				drawLocked = false;
				//global.level = 2;
			}
			
			sprite_index = s_bossDemon;
			spriteBoss = s_bossDemon;
			
		}break;
		
		case 2:
		{
			if (global.bossTribalCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.95
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				image_blend = c_white;
				global.vinylAlpha = 0.95;
				global.vinylColor = global.yellow;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_bossTribal;
			spriteBoss = s_bossTribal;
			
		}break;
	}
}