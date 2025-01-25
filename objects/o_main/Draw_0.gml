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
	//draw_text_color(600,40,"drawflash" + string(drawflash),c_white,c_white,c_white,c_white,1)
	//draw_text_color(600,60,"drawflashPlayerHitted" + string(drawflashPlayerHitted),c_white,c_white,c_white,c_white,1)
	//draw_text_color(600,80,"drawflashRoto" + string(drawflashRoto),c_white,c_white,c_white,c_white,1)
	//draw_text_color(600,100,"drawflashCont" + string(drawflashCont),c_white,c_white,c_white,c_white,1)
	
	draw_text_color(600,30,"Lives: " + string(global.lives),c_white,c_white,c_white,c_white,1)
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
	DrawFlashAndSlow(0.02, 0, 0.6, c_white);
}

if (drawflashPlayerHitted = true)
{
	DrawFlashAndSlow(0.025, 0.3, 0.15, c_red);
}

if (drawflashRoto=true)
{
	DrawFlashAndSlow(0.03, 0.7, 0.3, c_white);
}

if (drawflashCont <=0)
{
	drawflashCont = 0;
	if (drawflash)
	{
		drawflash=false;
	}
	if (drawflashRoto)
	{
		drawflashRoto = false
	}
	
	if (drawflashPlayerHitted)
	{
		drawflashPlayerHitted = false
	}
	
	global.autoPitch = false;
}