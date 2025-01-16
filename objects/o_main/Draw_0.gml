/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
draw_set_halign(fa_right)
if instance_exists(o_player)
{
	draw_text_color(600,20,"PlayerHP: " + string(o_player._hp),c_white,c_white,c_white,c_white,1)
}

if instance_exists(o_boss)
{
	draw_text_color(600,40,"BossHP: " + string(o_boss._hp),c_white,c_white,c_white,c_white,1)
	
	
}

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