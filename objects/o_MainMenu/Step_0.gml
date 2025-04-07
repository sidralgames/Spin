/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

if (alarm[0] <= 0)
{
	if (_visible)
	{
		ControlsMenu();

		if (key_x)
		{
			switch(selected)
			{
				case 0:
				{
					audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
					PlayGame(true);
					instance_destroy();
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
					o_main.changingLevel = true;
	
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
	if (initialBackY > 300)
	{
		vinylToPlay = ds_map_find_value(global.collectionList, o_boss.selectedVinyl);
		if (key_x) && (vinylToPlay.unlocked >= 1)
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
			//--- STOP & RESET SOUNDS ---//
			audio_stop_all();
			audio_stop_sound(global.song);
			global.song = snd_obsession;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100);
		
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
			initialBackCol = 380;
		}
	}
}