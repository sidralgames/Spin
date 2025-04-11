/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Puede escribir su código en este editor
Controls_Input();

rot += global.vinylSpin;

if (getBossDeath = false)
{
	for (var i = 0; i < global.totalNumberOfVinyls; i++)
	{
		thisBossDeath = ds_map_find_value(global.collectionList, i);
		if (thisBossDeath.alias = o_boss.alias)
		{
			if( thisBossDeath.sprite = thisBossDeath.spriteMain)
			{
				thisBossDeath.deaths += 1;
			}
			else
			{
				thisBossDeath.deathsBSide += 1;	
			}
		}
	}
	
	SaveGame();
	getBossDeath = true;
}

if (alarm[0] <= 0)
{
	if (_visible)
	{
		if (key_downP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected +=1;	
		}
		if (key_upP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected -=1;	
		}
		
		if (selected > 1)
		{
			selected = 0;	
		}
		if (selected < 0)
		{
			selected = 1;	
		}

		if (key_X)
		{
			audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
			switch(selected)
			{
				case 0:
				{
					ResetGame(true);
					instance_destroy();
					instance_create_layer(o_boss.x + 100, o_boss.y, "Player", o_player);
					
				}break;
				
				case 1:
				{
					instance_create_layer(global.mainMenuX,global.mainMenuY,"Menu", o_MainMenu);
					ResetGame(false);
					instance_destroy();
					
				}break;
			}
		}
	}
}
