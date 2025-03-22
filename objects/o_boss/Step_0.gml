/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_yscale = scale;
image_xscale = scale;

if (checkLimiter = false)
{
	if (global.bossHpLimiterUpgrade)
	{
		_hp = 0.85 *_hpMax;
	}
	
	checkLimiter = true;
}


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
		ResetNeedle();
	}
	
	if (key_rightP)
	{
		//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl +=1;
		changeSongCollection = false;
		o_main.changingLevel = true;
		ResetNeedle();
	}
		
	if (selectedVinyl > global.totalNumberOfVinyls-1)
	{
		selectedVinyl = 0;	
	}

	if (selectedVinyl < 0)
	{
		selectedVinyl = global.totalNumberOfVinyls-1;	
	}
	
	vinylToPlay = ds_map_find_value(global.collectionList, selectedVinyl);
	
	if (vinylToPlay.collection = 0)
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
			
			if (global.song != vinylToPlay.song)
			{
				audio_stop_sound(global.song);
				global.song = vinylToPlay.song;
				audio_play_sound_on(global.audioEmitter,global.song, true, 100,,0);
				changeSongCollection = true;
			}
		}
		
		image_blend = c_white;
		global.vinylAlpha = vinylToPlay.vinylAlpha;
		global.vinylColor = vinylToPlay.vinylColor;
		drawLocked = false;
	}
			
	sprite_index = vinylToPlay.sprite;
	spriteBoss = vinylToPlay.sprite;;
}