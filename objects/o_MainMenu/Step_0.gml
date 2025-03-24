/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

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
		

			if (selected > 4)
			{
				selected = 0;	
			}

			if (selected < 0)
			{
				selected = 4;	
			}

			if (key_x)
			{
				
				switch(selected)
				{
					case 0:
					{
						audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
						PlayGame(true);
						instance_destroy();
						//o_nextRoom.alarm[0] = 60;
						//o_nextRoom.canSelectShip = true;
						//Stats._visible = true;
						//_visible = false;
					}break;
					
					case 1:
					{
						audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
						_visible = false;
						instance_create_layer(o_boss.x-200,o_boss.y,"Main",o_HowToPlay)
						global.howToPlay = true;
		
					}break;
					
					case 2:
					{
						audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
						instance_create_layer(x,y,"Menu", o_OptionsMenu);
						_visible = false;
		
					}break;
					
					case 3:
					{
						audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
						global.collection = true;
						_visible = false;
		
					}break;
					
					case 4:
					{
						game_end();
		
					}break;
				}
			}
	
	}

}

if !instance_exists(o_player)
{
	instance_create_layer(o_boss.x - 100,o_boss.y,"Player",o_player);	
}

if (global.collection)
{
	if (initialBackY < 60)
	{
		vinylToPlay = ds_map_find_value(global.collectionList, o_boss.selectedVinyl);
		if (key_x) && (vinylToPlay.collection = 1)
		{
			o_main.changingLevel = true;

			with(o_boss)
			{
				SetLevelSelectorFight()
			}
			
			global.collection = false;
			global.playing = true;
			
			instance_destroy();
		}
		
		if (key_back)
		{
			global.collection = false;
			instance_destroy(o_boss);
			instance_destroy(o_bossHP);
			instance_destroy(o_vinilo);
			instance_destroy(oViniloFake);
			instance_create_layer(room_width/2, room_height/2, "Boss", o_boss);
			instance_create_layer(room_width/2, room_height/2, "Vinyl", o_vinilo);
			
			o_main.changingLevel = true;
			
			_visible = true;
			factor = 0.08;
			initialPlay =300;
			initialHow = 330;
			initialOption = 360;
			initialCollection = 390
			initialQuit = 420;
			initialCollectionX = 320
			initialBackX =  320
			initialBackY = 300
		}
	}
}