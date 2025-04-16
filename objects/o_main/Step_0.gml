/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//vstick_step(0);

if (changingLevel = true)
{
	if instance_exists(o_boss)
	{
		for (var i=0; i<global.totalNumberOfVinyls; i++)
		{	
			thisBoss = ds_map_find_value(global.collectionList, i);
			
			if (thisBoss.alias = o_boss.alias)
			{
				if (thisBoss.sprite = thisBoss.spriteMain)
				{
					_tintCol = thisBoss.tintCol;
					_noiseTintCol = thisBoss.noiseTintCol;
					global.wallSprite = thisBoss.wallSprite;
				}
				else
				{
					_tintCol = thisBoss.tintColBSide;
					_noiseTintCol = thisBoss.noiseTintColBSide;
					global.wallSprite = thisBoss.wallSpriteBSide;
				}
				
				
				color_fx_params.g_TintCol = _tintCol;
				noise_fx_params.g_FractalNoiseTintColour = _noiseTintCol

				fx_set_parameters(color_fx, color_fx_params);
				fx_set_parameters(noise_fx, noise_fx_params);

				layer_set_fx("EffectColor", color_fx);
				layer_set_fx("Noise", noise_fx);
	
				changingLevel = false;
			}
		}
	}
	
	if instance_exists(o_upgrades)
	{
		
		color_fx_params.g_TintCol = global.brightArray;
		noise_fx_params.g_FractalNoiseTintColour = global.lightPinkArray

		fx_set_parameters(color_fx, color_fx_params);
		fx_set_parameters(noise_fx, noise_fx_params);

		layer_set_fx("EffectColor", color_fx);
		layer_set_fx("Noise", noise_fx);
	
		changingLevel = false;
	}
}

if instance_exists(o_boss)
{
	global.cx = o_boss.x;
	global.cy = o_boss.y;
}
else
{	
	global.cx = room_width/2;
	global.cy = room_height/2;
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
		bsidesInGame = 0;
		bsidesUnlocked = 0;
		SaveAchievements();
		ResetGame(false);
		instance_create_layer(x,y,"Menu",o_MainMenu);
	}
}


