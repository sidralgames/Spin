/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_sprite_ext(s_howToplayText, 0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, 1)

if (alarm[0] <= 0)
{
	if (key_X) || (key_back)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		global.howToPlay = false;
		o_MainMenu._visible = true;
		o_MainMenu.initialBackCol = 380;
		instance_destroy();
	}
}
