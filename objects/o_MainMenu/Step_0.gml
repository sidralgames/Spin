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
		

			if (selected > 2)
			{
				selected = 0;	
			}

			if (selected < 0)
			{
				selected = 2;	
			}

			if (key_x)
			{
				//audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				switch(selected)
				{
					case 0:
					{
						instance_destroy()
						//o_nextRoom.alarm[0] = 60;
						//o_nextRoom.canSelectShip = true;
						//Stats._visible = true;
						//_visible = false;
					}break;
					
					case 1:
					{
						instance_create_layer(x,y,"Menu", o_OptionsMenu);
						_visible = false;
		
					}break;
					
					case 2:
					{
						game_end();
		
					}break;
				}
			}
	
	}

}

if !instance_exists(o_player)
{
	instance_create_layer(x,y,"Player",o_player);	
}