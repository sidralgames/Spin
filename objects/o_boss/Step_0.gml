/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

contScaleEye --;
	
if (contScaleEye <= 0)
{
	scaleEye = 1.25;
	contScaleEye = random_range(20,60)
}

if (checkVinylForm = false)
{
	//if (global.playing)
	//{
	//	instance_create_layer(x,y,"Menu", o_bossName);
	//}
	
	if instance_exists(o_vinilo)
	{
		o_vinilo.sprite_index = spriteVinyl;
		thisVinyl = instance_nearest(x,y,oViniloFake);
		thisVinyl.sprite_index = spriteVinyl;
		checkVinylForm = true;
	}
}

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
	BossDefeatedInRun();
	
	layer_enable_fx("Boss", false);
	
	instance_destroy(o_spawnersFather);
	instance_destroy(o_pickUpFather);
	instance_destroy(bossHP);
	instance_destroy(o_enemyFather);
	instance_destroy(o_bulletEnemyFather);
	
	with(o_main)
	{
		changingLevel = true
		drawflash = true;
		drawflashCont = 40;
	}
	
	global.level+=1;
	
	if instance_exists(o_player)
	{
		o_player.alarm[10] = 30
		gamepad_set_vibration(0,0.5,0.5)
	}

		if (bossToCreate.sprite = spriteBoss)
		{
			if (bossToCreate.haveBSide = true) && (bossToCreate.kills = bossToCreate.minKillsBSide)
			{
				BossSaveCollectionAndCreateBSIDE();
			}
			else
			{
				if (bossIsInCollection = 1)
				{
					BossDestroyAndCreateUpgrade();
				}
				else
				{
					bossIsInCollection = 1;
					BossSaveCollectionAndCreateDef()
				}
			}
		}
	
	
	BossExploDie();
}

if (global.collection)
{
	BossCollection();
}