/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_self();
draw_set_halign(fa_right)
//draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+175, "lvl: " + string(global.runningAgainstSpinmilisecs))
//draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+195, "lvlB: " + string(global.runningAgainstSpinmilisecsBest))
//draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+125, "maxlev: " + string(global.maxLevelReached))
//draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+135, "lev: " + string(global.level))
//if instance_exists(o_boss)
//{
//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+215, "numbervin: " + string(o_boss.bossNumber))
//}
if (global.playing)
{
	
//if instance_exists(o_boss)
//{
//	draw_text(__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+255, string(o_boss._hpMax))
//	draw_text(__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+275, string(o_boss._hp))
//}

	draw_sprite_ext(s_livesText, 0, __view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+40,1,1,0,c_white,image_alpha)
	
	for (var i = 0; i< global.maxLives; i++;)
	{
		draw_sprite_ext(s_playerHPOut, 0, __view_get( e__VW.XView, 0 )+90 + 19*i,__view_get( e__VW.YView, 0 )+40,1,1,0,c_white,image_alpha)
	}
	
	for (var i = 0; i< global.lives; i++;)
	{
		draw_sprite_ext(s_playerHPFill, 0, __view_get( e__VW.XView, 0 )+90 + 19*i,__view_get( e__VW.YView, 0 )+40,1,1,0,c_white,image_alpha)
	}
	
	
	
	if (global.numberOfUpgradesPlayer > 0) && (global.numberOfUpgradesPlayer < iconsInLine) 
	{
		for (var i = 0; i < global.numberOfUpgradesPlayer; ++i)
		{
			upgradeToDraw = ds_map_find_value(global.playerUpgradesList, i)
			draw_sprite_ext(upgradeToDraw.icon,0,__view_get( e__VW.XView, 0 )+30 + (i*25),__view_get( e__VW.YView, 0 )+65,1,1,0,c_white,1)	
		}	
	}
	
	if (global.numberOfUpgradesPlayer >= iconsInLine)
	{
		for (var i = 0; i < iconsInLine; ++i)
		{
			upgradeToDraw = ds_map_find_value(global.playerUpgradesList, i)
			draw_sprite_ext(upgradeToDraw.icon,0,__view_get( e__VW.XView, 0 )+30 + (i*25),__view_get( e__VW.YView, 0 )+65,1,1,0,c_white,1)	
		}	
		
		for (var i = 0; i < global.numberOfUpgradesPlayer - iconsInLine; ++i)
		{
			upgradeToDraw = ds_map_find_value(global.playerUpgradesList, i + iconsInLine)
			draw_sprite_ext(upgradeToDraw.icon,0,__view_get( e__VW.XView, 0 )+30 + (i*23),__view_get( e__VW.YView, 0 )+89,1,1,0,c_white,1)	
		}	
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



//---- COLLECTION ---//
if (global.collection)
{
	if instance_exists(o_boss)
	{
		with(o_boss)
		{
			if (drawLocked)
			{
				draw_set_font(global.customFont16);
				if (vinylToPlay.alias = "bossUpgrades")
				{
					draw_set_halign(fa_center)
					draw_text_color(o_boss.x, o_boss.y+73, string(vinylToPlay.unlocked+4) + " / 5\nUpgrades picked", global.lightBlue, global.lightBlue, global.lightBlue, global.lightBlue,1)
					draw_text_color(o_boss.x, o_boss.y+72, string(vinylToPlay.unlocked+4) + " / 5\nUpgrades picked", global.yellow, global.yellow, global.yellow, global.yellow,1)
					draw_text_color(o_boss.x, o_boss.y+70, string(vinylToPlay.unlocked+4) + " / 5\nUpgrades picked", global.pink, global.pink, global.pink, global.pink,1)
				}
				else
				{
					draw_set_halign(fa_center)
					draw_text_color(o_boss.x, o_boss.y+73, "Defeat This Track", global.lightBlue, global.lightBlue, global.lightBlue, global.lightBlue,1)
					draw_text_color(o_boss.x, o_boss.y+72, "Defeat This Track", global.yellow, global.yellow, global.yellow, global.yellow,1)
					draw_text_color(o_boss.x, o_boss.y+70, "Defeat This Track", global.pink, global.pink, global.pink, global.pink,1)
				}
	
				draw_sprite_ext(s_locked, 0, o_boss.x, o_boss.y, 1,1,0,c_white,1)	
			}
		}
	}
}