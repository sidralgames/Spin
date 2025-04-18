// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawAchievements(_initialI, _nextPageAch, _selectedA, _offI)
{
	for (var i=_initialI; i<global.totalNumberOfAchievements - _nextPageAch; i++)
	{
		achlist = ds_map_find_value(global.achievementList, i)
	
		if (achlist.alias = "Unknown") || (achlist.alias = "WellPrepared")
		{
			if (achlist.unlocked = 0)
			{
				achlist.achievement = achlist.achievementPlaceholder
			}
			else
			{
				achlist.achievement = achlist.achievementUnlocked
			}
		}
		
			
		if (achlist.alias = "9999Bullets") || (achlist.alias = "BreakWalls") ||
		(achlist.alias = "TotalKills128") || (achlist.alias = "TotalKills320") || (achlist.alias = "WellPrepared")
		{
			if (achlist.unlocked = 0)
			{
				achlist.desc = achlist.descPlaceholder;
			}
			else
			{
				achlist.desc = achlist.descUnlocked;
			}
		}
		
		if (achlist.unlocked = 1)
		{
			if (i = _selectedA)
			{
				draw_set_alpha(1)
				draw_set_font(global.customFont15);
				draw_set_halign(fa_center)
				draw_set_color(global.lightBlue)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+28 + 23*(i-_offI), "- " + achlist.achievement + " -")
				draw_set_color(global.yellow)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+26 + 23*(i-_offI), "- " + achlist.achievement + " -")
				draw_set_color(global.pink)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+25 + 23*(i-_offI), "- " + achlist.achievement + " -")
			}
			else
			{
				draw_set_alpha(0.85)
				draw_set_font(global.customFont15);
				draw_set_halign(fa_center)
				draw_set_color(global.lightBlue)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+28 + 23*(i-_offI), achlist.achievement)
				draw_set_color(global.yellow)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+26 + 23*(i-_offI), achlist.achievement)
				draw_set_color(global.pink)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+25 + 23*(i-_offI), achlist.achievement)
			}
		}
		else
		{
			if (i = _selectedA)
			{
				draw_set_alpha(0.95)
				draw_set_font(global.customFont15);
				draw_set_halign(fa_center)
				draw_set_color(global.darkPalette)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+28 + 23*(i-_offI), "- " + achlist.achievement + " -")
				draw_set_color(c_ltgrey)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+26 + 23*(i-_offI), "- " + achlist.achievement + " -")
				draw_set_color(c_white)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+25 + 23*(i-_offI), "- " + achlist.achievement + " -")
				draw_set_alpha(1)
			}
			else
			{
				draw_set_alpha(0.65)
				draw_set_font(global.customFont15);
				draw_set_halign(fa_center)
				draw_set_color(global.darkPalette)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+28 + 23*(i-_offI), achlist.achievement)
				draw_set_color(c_ltgrey)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+26 + 23*(i-_offI), achlist.achievement)
				draw_set_color(c_white)
				draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch+25 + 23*(i-_offI), achlist.achievement)
				draw_set_alpha(1)
			}
		}	
	}
		draw_set_valign(fa_bottom)
		ach = ds_map_find_value(global.achievementList, _selectedA)
		draw_set_alpha(1)
		draw_set_font(global.customFont13);
		draw_set_halign(fa_center)
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAchDesc+2, ach.desc)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAchDesc+1, ach.desc)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAchDesc, ach.desc)
		draw_set_valign(fa_top)
}