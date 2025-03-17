/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
draw_set_halign(fa_right)

if (global.playing)
{
	if global.initialLives = 3
	{
		draw_sprite_ext(s_playerHP, 0, __view_get( e__VW.XView, 0 )+100,__view_get( e__VW.YView, 0 )+45,1,1,0,c_white,image_alpha)
	}
	else
	{
		draw_sprite_ext(s_playerFill4HP, 0, __view_get( e__VW.XView, 0 )+100,__view_get( e__VW.YView, 0 )+45,1,1,0,c_white,image_alpha)
	}
	for (var i = 0; i< global.lives; i++;)
	{
		draw_sprite_ext(s_playerHPFill, 0, __view_get( e__VW.XView, 0 )+100 + 19*i,__view_get( e__VW.YView, 0 )+45,1,1,0,c_white,image_alpha)
	}
}

//vstick_draw(0)
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
	
	//draw_text_color(600,30,"Lives: " + string(global.lives),c_white,c_white,c_white,c_white,1)
//}

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


//COLLECTION
	
if (global.collection)
{
	with(o_boss)
	{
		if (drawLocked)	
		{
			if (o_boss.spriteBoss = s_galletaUpgrades)
			&& (global.bossUpgradesCollection < 5)
			{
				draw_set_halign(fa_center)
				draw_text_color(o_boss.x, o_boss.y+73, string(global.bossUpgradesCollection) + " / 5\nUpgrades picked", global.lightBlue, global.lightBlue, global.lightBlue, global.lightBlue,1)
				draw_text_color(o_boss.x, o_boss.y+72, string(global.bossUpgradesCollection) + " / 5\nUpgrades picked", global.yellow, global.yellow, global.yellow, global.yellow,1)
				draw_text_color(o_boss.x, o_boss.y+70, string(global.bossUpgradesCollection) + " / 5\nUpgrades picked", global.pink, global.pink, global.pink, global.pink,1)
			}
			draw_sprite_ext(s_locked, 0, o_boss.x, o_boss.y, 1,1,0,c_white,1)	
		}
	}
}