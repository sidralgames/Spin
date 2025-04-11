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
		

		if (selected > 3)
		{
			selected = 0;	
		}

		if (selected < 0)
		{
			selected = 3;	
		}

		if (key_X)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			switch(selected)
			{
				case 0:
				{
					with (obj_CRT_controller)
					{
						//var_use_border = !var_use_border;
						var_use_radial_distortion = !var_use_radial_distortion;
						var_use_scanlines = !var_use_scanlines;
						var_use_RGB_separation = !var_use_RGB_separation;
					}
					global.CRTIsOn = !global.CRTIsOn;
					
				}break;
				
				case 1:
				{
					global.screenshakeIsOn = !global.screenshakeIsOn;
					
					if (global.screenshakeIsOn)
					{
						screenShake(4,40,2)
					}
				}break;
				
				case 2:
				{
					creditsShowing = !creditsShowing;
					_visible = !_visible;
					contCred = 20;
		
				}break;
					
				case 3:
				{
					instance_destroy();
					o_MainMenu._visible = true;
					
				}break;
			}
		}
		
		if (key_back)
		{
			instance_destroy();
			o_MainMenu._visible = true;
		}
		
	}
}

if (contCred >= 0)
{
	contCred --;
}

if (creditsShowing) && _visible = false && (contCred < 0)
{
	if (key_X)
	{
		creditsShowing = !creditsShowing;
		_visible = !_visible;
	}
}