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
	}
	
	if (achievementsShowing)
	{
		if (key_rightP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			selectedPage +=1;
		
			initialFlechaR= 243;
		}

		if (key_leftP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			selectedPage -=1;
			
			initialFlechaL= 243;

		}
		
		if (selectedA > global.totalNumberOfAchievements)
		{
			selectedA = 0;
		}
		
		if (selectedA < 0)
		{
			selectedA = global.totalNumberOfAchievements;
		}
		if (selectedPage > achievementPages)
		{
			selectedPage = 0;	
		}

		if (selectedPage < 0)
		{
			selectedPage = achievementPages;	
		}
		
		if (key_back) || (key_X)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
			achievementsShowing = !achievementsShowing;
			//_visible = true;
			initialAchDesc = 390;
			instance_destroy();
			o_MainMenu._visible = true;
			o_MainMenu.alarm[0] = 10;
		}
	}
}

if (contCred >= 0)
{
	contCred --;
}

if (achievementsShowing) && (contCred < 0)
{
	if (key_downP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
		selectedA +=1;	
	}

	if (key_upP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 5);
		selectedA -=1;	
	}
		

	if (selectedA > floor(global.totalNumberOfAchievements /4) -1)
	{
		selectedA = 0;	
	}

	if (selectedA < 0)
	{
		selectedA = floor(global.totalNumberOfAchievements /4 -1)
	}
	
}

initialBackCol = lerp(initialBackCol, 322, o_MainMenu.factorGuide)
o_MainMenu.initialConfirm = lerp(o_MainMenu.initialConfirm, 287, o_MainMenu.factorGuide)