/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//vstick_step(0);

if (load = false)
{
	LoadCollection();
	load = true;
}

if (changingLevel = true)
{
	if instance_exists(o_boss)
	{
		switch(o_boss.spriteBoss)
		{
			case s_bossNacho:
			{
				color_fx_params.g_TintCol = global.lightBlueArray;
				noise_fx_params.g_FractalNoiseTintColour = global.pinkArray

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossDemon:
			{
				color_fx_params.g_TintCol = global.yellowArray;
				noise_fx_params.g_FractalNoiseTintColour = global.BlueArray

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossTribal:
			{
				color_fx_params.g_TintCol = [0,0,0,1]
				noise_fx_params.g_FractalNoiseTintColour = global.yellowArray2;

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossGirl:
			{
				color_fx_params.g_TintCol = global.purpleArray;
				noise_fx_params.g_FractalNoiseTintColour = global.yellowGirlArray;

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossRata:
			{
				color_fx_params.g_TintCol = global.greenOscRatArray;
				noise_fx_params.g_FractalNoiseTintColour = global.greenRatArray;

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_bossMixtape:
			{
				color_fx_params.g_TintCol = global.yellowGirlArray;
				noise_fx_params.g_FractalNoiseTintColour = global.lighPinkArray;

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
			
			case s_galletaUpgrades:
			{
				color_fx_params.g_TintCol = global.brightArray;
				noise_fx_params.g_FractalNoiseTintColour = global.lighPinkArray

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
			break;
		}
	}
	
	if instance_exists(o_upgrades)
	{
		
		color_fx_params.g_TintCol = global.brightArray;
		noise_fx_params.g_FractalNoiseTintColour = global.lighPinkArray

		fx_set_parameters(color_fx, color_fx_params);
		fx_set_parameters(noise_fx, noise_fx_params);

		layer_set_fx("EffectColor", color_fx);
		layer_set_fx("Noise", noise_fx);
	
		changingLevel = false;
	}
}

if (global.playing)
{
	if !instance_exists(o_player) && (global.lives > 0)
	{
		newPosX = lastX+random_range(100,-100)
		newPosY = lastY+random_range(100,-100)
	
		if collision_circle(newPosX, newPosY , 2, o_Floor, true, true) && 
		point_distance(o_Floor.x, o_Floor.y, newPosX, newPosY) < 150 && 
		point_distance(o_Floor.x, o_Floor.y, newPosX, newPosY) > 70
		{
			DestroyCablesAndJacks();
			newPlayer = instance_create_layer(newPosX, newPosY, "Player", o_player);
			newPlayer.comeFromDeath = true;
		}
	}
	if !instance_exists(o_player) && (global.lives <= 0)
	{
		global.gameOver = true;
		if (gameOverCreated = false)
		{
			instance_create_layer(x, y, "Menu", o_gameOver)
			gameOverCreated = true;
		}
	}
}


if (global.playing) && !instance_exists(o_MainMenu) && !instance_exists(o_gameOver)
{
	if keyboard_check_pressed(ord("R"))
	{
		ResetGame(false);
		instance_create_layer(x,y,"Menu",o_MainMenu);
	}
}


