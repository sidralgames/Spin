/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeON;
}
else
{
	spriteShake = s_screenshakeOFF;
}

if (global.CRTIsOn)
{
	spriteCRT = s_CRTON;
}
else
{
	spriteCRT = s_CRTOFF
}


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
		

		if (selected > 4)
		{
			selected = 0;	
		}

		if (selected < 0)
		{
			selected = 4;	
		}

		if (key_X)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			switch(selected)
			{
				case 0:
				{
					global.howToPlay = true;
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
					instance_create_layer(x,y,"Menu", o_HowToPlay);
					_visible = false;
		
				}break;
				case 1:
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
				
				case 2:
				{
					global.screenshakeIsOn = !global.screenshakeIsOn;
					
					if (global.screenshakeIsOn)
					{
						screenShake(4,40,2)
					}
				}break;
				
				case 3:
				{
					creditsShowing = !creditsShowing;
					_visible = !_visible;
					contCred = 20;
		
				}break;
					
				case 4:
				{
					instance_destroy();
					o_MainMenu._visible = true;
					
				}break;
			}
		}
		
		if (key_back)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			instance_destroy();
			o_MainMenu._visible = true;
		}
		
	}
	
	if (creditsShowing)
	{
		if (key_back)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			creditsShowing = !creditsShowing;
			_visible = true;
			
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

initialBackCol = lerp(initialBackCol, 322, o_MainMenu.factorGuide)
o_MainMenu.initialConfirm = lerp(o_MainMenu.initialConfirm, 287, o_MainMenu.factorGuide)