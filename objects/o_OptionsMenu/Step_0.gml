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
		

			if (selected > 3)
			{
				selected = 0;	
			}

			if (selected < 0)
			{
				selected = 3;	
			}

			if (key_x)
			{
				//audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				switch(selected)
				{
					case 0:
					{
						with (obj_CRT_controller)
						{
							crt_shader_enabled = !crt_shader_enabled; 
						}
						global.CRTIsOn = !global.CRTIsOn;
					}break;
					
					case 1:
					{
						global.screenshakeIsOn = !global.screenshakeIsOn;
						if global.screenshakeIsOn
						{
							screenShake(4,40,2)
						}
		
					}break;
					
					case 2:
					{
						instance_destroy();
						o_MainMenu._visible = true;
		
					}break;
					
					case 3:
					{
						instance_destroy();
						o_MainMenu._visible = true;
		
					}break;
				}
			}
	
	}

}

if !instance_exists(o_player)
{
	instance_create_layer(x,y,"Player",o_player);	
}