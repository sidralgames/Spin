/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_yscale = scale;
image_xscale = scale;

GetBossHpLimiter();

if (scale > 1)
{
	scale = lerp(scale,1,0.05);	
	
	if (scale < 1.03)
	{
		scale = 1;
	}
}

BossCreateEnemyDisc();


if !instance_exists(o_MainMenu) && (global.howToPlay = false) && (global.collection = false)
{
	if (contToStart >= 0)
	{
		contToStart --;
	}
	
	if (contToStart <= 0) || (_hp < _hpMax)
	{
		BossCreateHPandResetAguja();
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
	
	BossExploDie();
	
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
		
		for (var i=0; i<global.totalNumberOfVinyls-1; i++)
		{	
			thisBoss = ds_map_find_value(global.collectionList, i);
			if (thisBoss.sprite = spriteBoss)
			{
				thisBoss.collection = bossIsInCollection;
			}
		}
	
		SaveGame();
		
		bossDef = instance_create_layer(x,y,"Menu", o_bossDefeated);
		instance_destroy();
	}	
}



if (global.collection)
{
	ControlsCollection();
	
	vinylToPlay = ds_map_find_value(global.collectionList, selectedVinyl);
	
	if (vinylToPlay.collection = 1)
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
	else
	{
		image_blend = c_dkgray;
		global.vinylAlpha = 0.85
		global.vinylColor = c_dkgray;
		drawLocked = true;
	}
			
	sprite_index = vinylToPlay.sprite;
	spriteBoss = vinylToPlay.sprite;
}