/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

if (alarm[0] <= 0)
{
	if (_visible)
	{
		ControlsMenu();

		if (key_X)
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
					for (var i=0; i<global.totalNumberOfVinyls; i++)
					{
						boss = ds_map_find_value(global.collectionList, i)
						boss.sprite = boss.spriteMain;
					}
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
	//---- HIDE UI ---//
	if (key_buttonUP)
	{
		_visibleCollection = !_visibleCollection;
		initialBackCol = 350;
		initialHide = 350;
	}
	
	//--- MORE STATS ---//
	if  ( (key_downP) || (key_upP) ) && (_moreStats = false) && (contStats <= 0)
	{
		_moreStats = true;
		contStats = 5;
	}
	
	if (contStats >= 0)
	{
		contStats --;
		
	}
	if  ( (key_downP) || (key_upP) ) && (_moreStats) && (contStats <= 0)
	{
		_moreStats = false;
		contStats = 5;
	}
	
	if (initialBackY > 300)
	{
		vinylToPlay = ds_map_find_value(global.collectionList, o_boss.selectedVinyl);
		
		//---- GET MAINTRACK OR spriteBSide NAME ---//
		if (vinylToPlay.sprite = vinylToPlay.spriteMain)
		{
			_songName = vinylToPlay.songName;
			_stringBSide = _stringBSideKey +" > B-Side";
			_stringKills = vinylToPlay.kills;
			_stringDeaths = vinylToPlay.deaths;
		}
		else
		{
			_songName = vinylToPlay.songNameBSide;
			_stringBSide = _stringBSideKey +" > Main Track";
			_stringKills = vinylToPlay.killsBSide;
			_stringDeaths = vinylToPlay.deathsBSide;
		}
	
		//---- START FIGHT AGAINST SELECTED TRACK ---//
		if (key_X) && (vinylToPlay.unlocked >= 1) && (_visibleCollection)
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
		
		//---- BACK TO MENU ---//
		if (key_back)
		{
			//--- STOP & RESET SOUNDS ---//
			audio_stop_all();
			audio_stop_sound(global.song);
			global.song = snd_obsessionCut;
			audio_play_sound_on(global.audioEmitter,global.song, true, 100);
		
			with(o_boss)
			{
				//--- RESET TRACK --//
				vinylToPlay.sprite =  vinylToPlay.spriteMain;
				thisVinyl.sprite_index = vinylToPlay.spriteVinyl;
				global.vinylColor = vinylToPlay.vinylColor;
				spriteBoss = vinylToPlay.sprite;
				sprite_index = spriteBoss;
			}
			
			global.collection = false;
			instance_destroy(o_boss);
			instance_destroy(o_bossHP);
			instance_destroy(o_vinilo);
			instance_destroy(oViniloFake);
			instance_create_layer(room_width/2, room_height/2, "Boss", o_boss);
			instance_create_layer(room_width/2, room_height/2, "Vinyl", o_vinilo);
			
			global.level = irandom_range(1, global.maxLevelReached)	
			o_main.changingLevel = true;
			
			_visible = true;
			factor = 0.1;
			initialPlay =300;
			initialHow = 330;
			initialOption = 360;
			initialCollection = 390
			initialQuit = 420;
			initialCollectionX = 320
			initialBackX =  320
			initialBackY = 300
			initialBackCol = 350;
			initialHide = 350;
			
			SaveGame();
		}
	}
}