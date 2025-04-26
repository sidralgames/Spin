/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Puede escribir su código en este editor
Controls_Input();

global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05);

if (checkAch = false)
{
	SaveAchievements();
	SaveGame();
}

rot += global.vinylSpin;


if (alarm[0] <= 0)
{
	if (_visible)
	{
		if (key_downP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			selected +=1;	
		}
		if (key_upP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			selected -=1;	
		}
		
		if (selected > optionsNum)
		{
			selected = 0;	
		}
		if (selected < 0)
		{
			selected = optionsNum;	
		}

		if (key_X)
		{
			audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
			
			switch(selected)
			{
				case 0:
				{
					global.endlessMode = true;
					
					with(o_main)
					{
						changingLevel = true;
					}
					
					BossExploDie();
			
					instance_destroy(o_vinilo);
					instance_destroy(oViniloFake);
					instance_destroy(o_boss);
					instance_destroy(o_bg);
					instance_destroy(o_bossWinner);
					
					instance_create_layer(x,y,"Vinyl", o_vinilo);
					instance_create_layer(x,y,"Boss", o_boss);
					
					instance_destroy();
					
				}break;
				
				case 1:
				{
					instance_destroy(o_bg);
					instance_create_layer(global.mainMenuX,global.mainMenuY,"Menu", o_MainMenu);
					ResetGame(false);
					instance_destroy(o_bossWinner);
					instance_destroy();
					
				}break;
			}
		}
	}
}
