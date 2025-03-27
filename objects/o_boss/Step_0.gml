/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_yscale = scale;
image_xscale = scale;

GetBossHpLimiter();

BossReturnToScale();

if !instance_exists(o_MainMenu) && (global.howToPlay = false) && (global.collection = false)
{
	if (contToStart >= 0)
	{
		contToStart --;
	}
	
	if (contToStart <= 0) || (_hp < _hpMax)
	{
		//----- BOSS HP & AGUJA ----//
		BossCreateHPandResetAguja();
		image_angle -= -global.vinylSpin*global.relativeSpeed;
		
		//----- BOSS STEP ----//
		script_execute(bossStep);
		
		//---- NEEDEL HIT ---//
		NeedleAttack();
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
	BossCollection();
}