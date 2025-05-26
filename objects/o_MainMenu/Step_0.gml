/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

if (canChooseAllBSides)
{
	optionsBsides = 2;
}
else
{
	if (atLeastOneBSide)
	{
		optionsBsides = 1;
	}
	else
	{
		optionsBsides = 0;
	}
}

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
					LoadAchievements();
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
					instance_create_layer(x,y,"Menu", o_AchievementsMenu);
					_visible = false;
	
				}break;
				
				case 2:
				{
					
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
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
		
		if (selected = 0)
		{
			if (atLeastOneBSide)
			{
				if (key_rightP)
				{
					selectedBside +=1;	
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
				}
				else if (key_leftP) 
				{
					selectedBside -=1;	
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			
				}
			}
			
			if (selectedBside > optionsBsides)
			{
				selectedBside = 0;	
			}
			if (selectedBside < 0)
			{
				selectedBside = optionsBsides;	
			}
			
		
			switch(selectedBside)
			{
				case 0:
				{
					_stringBSideActive = "No";
					global.BSidesInRun = false;
					global.fullBSidesRun = false;
				}break;
				
				case 1:
				{
					_stringBSideActive = "Yes";
					global.BSidesInRun = true;
					global.fullBSidesRun = false;
				}break;
				
				case 2:
				{
					_stringBSideActive = "ALL";
					global.BSidesInRun = true;
					global.fullBSidesRun = true;
				}break;
			}
		}
		
		if (key_buttonL)
		{
			o_main.contentLoaded = !o_main.contentLoaded;
			if (o_main.contentLoaded = false)
			{
				
				LoadAllLocked();
				LoadCollection();
				
				AddAchievementsList();
				
				LoadAllLocked();
				LoadAchievements();
			}
			else
			{
				LoadAllUnlocked();
				LoadCollection();
				
				AddAchievementsList();
				
				LoadAllUnlocked();
				LoadAchievements();				
			}
		}
	}
}


//------ RESPAWN PLAYER ON MAIN MENU SCREEN -----//
if !instance_exists(o_player)
{
	instance_create_layer(o_boss.x - 100,o_boss.y,"Player",o_player);	
}


//--------- COLLECTION RELATED --------//
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
	if ( (key_upP) ) && (_moreStats = false) && (contStats <= 0)
	{
		_moreStats = true;
		yStat = 360;
		contStats = 5;
	}
	
	if (contStats >= 0)
	{
		contStats --;
	}
	
	if  ( (key_downP) ) && (_moreStats) && (contStats <= 0)
	{
		yStat = 160;
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
			_stringKills = "Kills: " + string(vinylToPlay.kills);
			_stringDeaths = "Deaths: " + string(vinylToPlay.deaths);
		}
		else
		{
			_songName = vinylToPlay.songNameBSide;
			_stringBSide = _stringBSideKey +" > Main Track";
			_stringKills = "Kills B-Side: " + string(vinylToPlay.killsBSide);
			_stringDeaths = "Deaths B-Side : " + string(vinylToPlay.deathsBSide);
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
			
			if (global.maxLevelReached > 1)
			{
				global.level = irandom_range(1, global.maxLevelReached)	
			}
			else
			{
				global.level = 1;
			}
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
			_moreStats = false;
			_visibleCollection=true;
			
			SaveGame();
		}
	}
}