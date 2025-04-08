// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ControlsCollection()
{
	key_leftP = keyboard_check_pressed(vk_left)  || gamepad_button_check_pressed(0, gp_padl);
	key_rightP = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
	key_x = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1);

	if (key_leftP)
	{
		//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl -=1;	
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaL = 240;
		ResetNeedle();
	}
	
	if (key_rightP)
	{
		//audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedVinyl +=1;
		changeSongCollection = false;
		o_main.changingLevel = true;
		o_MainMenu.initialFlechaR = 240;
		ResetNeedle();
	}
		
	if (selectedVinyl > global.totalNumberOfVinyls-1)
	{
		selectedVinyl = 0;	
	}

	if (selectedVinyl < 0)
	{
		selectedVinyl = global.totalNumberOfVinyls-1;	
	}
}