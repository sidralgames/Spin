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

if (global.playing = true) && ((spriteBoss = s_bossDemon) || (spriteBoss = s_bossRata))
{
	contEnemies --;
	
	if (contEnemies <= 0)
	{
		if (spriteBoss = s_bossDemon)
		{
			contEnemies = random_range(1500,1800);
		}
		else if (spriteBoss = s_bossRata)
		{
			contEnemies = random_range(1000,1200);
		}
		
		instance_create_layer(x+choose(75, -75),y+choose(75, -75),"Enemies", o_alert);
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
			bossHP = instance_create_layer(x-255,200,"Main", o_bossHP);
			
			with(o_aguja)
			{
				songDuration = audio_sound_length(global.song);

				framesSong = songDuration * room_speed;

				fac = (distToCenter / framesSong) * angleFac

				nearDisc = instance_nearest(x,y,o_vinilo);
				nearBoss = instance_nearest(x,y,o_boss);


				canBeTouched= true;
				contCanBeTouched = 200;

				x = nearDisc.x + lengthdir_x(dist, 35);
				y = nearDisc.y + lengthdir_y(dist, 35);

				xIni = x;
				yIni = y;
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
			
			case s_bossGirl:
			{
				BossGirlStep();
			}
			break;
			
			case s_bossRata:
			{
				BossRataStep();
			}
			break;
			
			default:
			{
				BossGirlStep();
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
	if instance_exists(o_player)
	{
		o_player.alarm[10] = 30
		gamepad_set_vibration(0,0.5,0.5)
	}
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
			
			case s_bossGirl:
			{
				global.bossGirlCollection = 1;
			}
			break;
			
			case s_bossRata:
			{
				global.bossRataCollection = 1;
			}
			break;
			
			case s_bossMixtape:
			{
				global.bossMixtapeCollection = 1;
			}
			break;
		}
		SaveGame();
		bossDef = instance_create_layer(x,y,"Menu", o_bossDefeated);
		instance_destroy();
	}
	
}

key_leftP = keyboard_check_pressed(vk_left)  || gamepad_button_check_pressed(0, gp_padl);
key_rightP = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
	
if (global.collection)
{
	
	if (key_leftP)
	{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl -=1;	
		changeSongCollection = false;
		o_main.changingLevel = true;
		
		with(o_aguja)
		{
			songDuration = audio_sound_length(global.song);

			framesSong = songDuration * room_speed;

			initialDist = 250;
			angleAguja = initialAngleAguja;

			dist = initialDist;

			distToCenter = dist - 10;

			fac = (distToCenter / framesSong) * angleFac

			nearDisc = instance_nearest(x,y,o_vinilo);
			nearBoss = instance_nearest(x,y,o_boss);


			canBeTouched= true;
			contCanBeTouched = 200;

			x = nearDisc.x + lengthdir_x(dist, 35);
			y = nearDisc.y + lengthdir_y(dist, 35);

			xIni = x;
			yIni = y;
		}
	}

	if (key_rightP)
	{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl +=1;
		changeSongCollection = false;
		o_main.changingLevel = true;
		
		with(o_aguja)
		{
			songDuration = audio_sound_length(global.song);

			framesSong = songDuration * room_speed;

			initialDist = 250;
			angleAguja = initialAngleAguja;

			dist = initialDist;

			distToCenter = dist - 10;

			fac = (distToCenter / framesSong) * angleFac

			nearDisc = instance_nearest(x,y,o_vinilo);
			nearBoss = instance_nearest(x,y,o_boss);


			canBeTouched= true;
			contCanBeTouched = 200;

			x = nearDisc.x + lengthdir_x(dist, 35);
			y = nearDisc.y + lengthdir_y(dist, 35);

			xIni = x;
			yIni = y;
		}
	}
		

	if (selectedVinyl > global.totalNumberOfVinyls-1)
	{
		selectedVinyl = 0;	
	}

	if (selectedVinyl < 0)
	{
		selectedVinyl = global.totalNumberOfVinyls-1;	
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
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
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
				global.vinylAlpha = 0.8;
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
				global.vinylAlpha = 0.90
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_tribal)
					{
						audio_stop_sound(global.song);
						global.song = snd_tribal;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.95;
				global.vinylColor = global.yellow;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_bossTribal;
			spriteBoss = s_bossTribal;
			
		}break;
		
		case 3:
		{
			if (global.bossGirlCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.90
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				
				if (changeSongCollection = false)
				{
					if (global.song != snd_e4u)
					{
						audio_stop_sound(global.song);
						global.song = snd_e4u;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.95;
				global.vinylColor = global.pink;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_bossGirl;
			spriteBoss = s_bossGirl;
			
		}break;
		
		case 4:
		{
			if (global.bossRataCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.95
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_chino)
					{
						audio_stop_sound(global.song);
						global.song = snd_chino;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.95;
				global.vinylColor = global.greenRat;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_bossRata;
			spriteBoss = s_bossRata;
			
		}break;
		
		case 5:
		{
			if (global.bossUpgradesCollection < 5)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.95
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_LoveSpell)
					{
						audio_stop_sound(global.song);
						global.song = snd_LoveSpell;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.95;
				global.vinylColor = c_white;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_galletaUpgrades;
			spriteBoss = s_galletaUpgrades;
			
		}break;
		
		case 6:
		{
			if (global.bossMixtapeCollection = 0)
			{
				image_blend = c_dkgray;
				global.vinylAlpha = 0.95
				global.vinylColor = c_dkgray;
				drawLocked = true;
			}
			else
			{
				if (changeSongCollection = false)
				{
					if (global.song != snd_chino)
					{
						audio_stop_sound(global.song);
						global.song = snd_chino;
						audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
						changeSongCollection = true;
					}
				}
				
				image_blend = c_white;
				global.vinylAlpha = 0.90;
				global.vinylColor = global.pink;
				drawLocked = false;
				//global.level = 3;
			}
			
			sprite_index = s_bossMixtape;
			spriteBoss = s_bossMixtape;
			
		}break;
	}
}