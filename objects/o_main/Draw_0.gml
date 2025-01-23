/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
draw_set_halign(fa_right)
//if instance_exists(o_player)
//{
//	draw_text_color(600,20,"PlayerHP: " + string(o_player._hp),c_white,c_white,c_white,c_white,1)
//}

//if instance_exists(o_boss)
//{
//	draw_text_color(600,40,"BossHP: " + string(o_boss._hp),c_white,c_white,c_white,c_white,1)
	
	
//}

if keyboard_check_pressed(vk_space)
{
	instance_destroy(all);
	game_restart()
}


//if keyboard_check_pressed(vk_left)
//{
//trackpos = audio_sound_get_track_position(global.song);
//}

//draw_text(80, 320, string(trackpos))

if (drawflash=true)
{
	global.autoPitch = true;
	with(o_player)
	{
		SlowDown(0, 0.6);
	}
	drawflashCont --;
	draw_set_alpha(drawflashCont * 0.02)
	draw_set_color(c_white)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
}

if (drawflashCont <=0)
{
	drawflash=false;
	global.autoPitch = false;
}