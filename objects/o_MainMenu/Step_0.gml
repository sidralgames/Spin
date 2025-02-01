/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

if (alarm[0] <= 0)
{
	
	if (_visible)
	{
		if (key_downP)
		{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected +=1;	
		}

		if (key_upP)
		{
			//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
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
				//audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				switch(selected)
				{
					case 0:
					{
						PlayGame(true);
						instance_destroy();
						//o_nextRoom.alarm[0] = 60;
						//o_nextRoom.canSelectShip = true;
						//Stats._visible = true;
						//_visible = false;
					}break;
					
					case 1:
					{
						_visible = false;
						instance_create_layer(o_boss.x-200,o_boss.y,"Main",o_HowToPlay)
						global.howToPlay = true;
		
					}break;
					
					case 2:
					{
						instance_create_layer(x,y,"Menu", o_OptionsMenu);
						_visible = false;
		
					}break;
					
					case 3:
					{
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