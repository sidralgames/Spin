// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionStats()
{
	//---- DRAW TRACK STATS ---//
	
	yStat = lerp(yStat, 210, 0.1)
	draw_set_alpha(_alphaTitle)
	draw_set_font(global.customFont15);
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+2, string(_stringKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+1, string(_stringKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat, string(_stringKills))
	

	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+22, string(_stringDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+21, string(_stringDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+20, string(_stringDeaths))
	draw_set_alpha(1)
	
	//---- DRAW TOTAL STATS ---//
	draw_set_font(global.customFont14);
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+67, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+66, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+65, "Total Kills: " + string(global.totalKills))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+87, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+86, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+85, "Total Deaths: " + string(global.totalDeaths))
		
	//---- MORE STATS ---//
	draw_set_font(global.customFont13);
	draw_set_halign(fa_center)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat + 112, "^ More Stats ^")
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat + 111, "^ More Stats ^")
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat + 110, "^ More Stats ^")
}